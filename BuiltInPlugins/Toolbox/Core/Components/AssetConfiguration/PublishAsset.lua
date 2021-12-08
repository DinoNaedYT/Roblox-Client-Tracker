--[[
	This component holds all the detail page we want to show to the user. The content being displayed here should be
	determined by the parent. And each time the componnet changes, it needs to noticfy the parent about the change.

	Necessary Props:
		Size, UDim2, used to set the size for the whole page.
		name, string, used to represent the asset's name. Nil for new asset. Can't be nil.
		description, string, used to represent the asset's description.
		owner, table, contain data structure describe the owner.
		genres, arrar of string, it's an array, even you can only select one genre.
		allowCopy, bool, decide if user can change the copyOn toggle button or not.
		copyOn, bool, decide if the user has set the copyOn to true or false.
		allowComment, bool, decide if other users can change comment on this asset or not.
		commentOn, bool, decide if the comment on is true or false.

		assetTypeEnum, enum, asset type.

		onNameChange, function, callback when name changes.
		onDescChange, function, callback when description changes.
		onOwnerSelected, function, callback when owner changes.
		onGenreSelected, function, callback when genre changes.
		toggleCopy, function, callback when copy changes.
		toggleComment, function, callback when comment changes.

		displayOwnership, bool, if we want to show ownership.
		displayGenre, bool, genre.
		displayCopy, bool, copy.
		displayComment, bool, comment.
		displayAssetType, bool, assetType.
		displayTags, bool, tags.

	Optional Props:
		LayoutOrder, number, used by the layouter to set the position of the component.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local Framework = require(Libs.Framework)
local TitledFrame = Framework.StudioUI.TitledFrame
local Separator = Framework.UI.Separator
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local Constants = require(Util.Constants)

local withLocalization = ContextHelper.withLocalization

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local ConfigTextField = require(AssetConfiguration.ConfigTextField)
local ConfigAccess = require(AssetConfiguration.ConfigAccess)
local ConfigGenre = require(AssetConfiguration.ConfigGenre)
local ConfigCopy = require(AssetConfiguration.ConfigCopy)
local ConfigComment = require(AssetConfiguration.ConfigComment)
local TagsComponent = require(AssetConfiguration.CatalogTags.TagsComponent)

local SetFieldError = require(Plugin.Core.Actions.SetFieldError)

local PublishAsset = Roact.PureComponent:extend("PublishAsset")

local NAME_HEIGHT = 100
local DESC_HEIGHT = 180
local ACCESS_HEIGHT = 70
local ASSET_TYPE_HEIGHT = 60
local GENRE_HEIGHT = 70
local COPY_HEIGHT = 80
local COMMENT_HEIGHT = 80
local PADDING = 24
local HEIGHT_FOR_ACCOUNT_SETTING_TEXT = 60
local DIVIDER_BASE_HEIGHT = 20

function PublishAsset:init(props)
	self.state = {
		maxDropdownPosition = 0,
	}

	self.baseFrameRef = Roact.createRef()
	self.listLayoutRef = Roact.createRef()
	self.tagsRef = Roact.createRef()
	self.genreRef = Roact.createRef()

	self.refreshCanvas = function()
		if self.baseFrameRef.current and self.listLayoutRef.current then
			local baseFrame = self.baseFrameRef.current
			local uiListLayout = self.listLayoutRef.current
			local canvasHeight = math.max(uiListLayout.AbsoluteContentSize.y + PADDING*2, self.state.maxDropdownPosition)
			baseFrame.CanvasSize = UDim2.new(props.Size.X.Scale, props.Size.X.Offset, 0, canvasHeight)
		end
	end

	self.updateMaxDropdownPosition = function(ref, dropdownHeight)
		local frame = ref.current
		if frame and dropdownHeight > 0 then
			local topOfDropdownField =
				ref.current.AbsolutePosition.Y
				+ self.baseFrameRef.current.CanvasPosition.Y
				+ -self.baseFrameRef.current.AbsolutePosition.Y
				- PADDING

			local bottomOfDropdown =
				topOfDropdownField
				+ PADDING
				+ ref.current.AbsoluteSize.Y
				+ dropdownHeight
				+ PADDING

			spawn(function()
				if bottomOfDropdown > self.state.maxDropdownPosition then
					self:setState({ maxDropdownPosition = bottomOfDropdown })
					self.refreshCanvas()
				end
				self:bumpCanvas(topOfDropdownField, bottomOfDropdown)
			end)
		end
	end
end

function PublishAsset:bumpCanvas(top, bottom)
	if self.baseFrameRef.current then
		local baseFrame = self.baseFrameRef.current
		local canvasY = baseFrame.CanvasPosition.Y
		local baseFrameSizeY = baseFrame.AbsoluteSize.Y
		if top < canvasY then
			baseFrame.CanvasPosition = Vector2.new(0, math.max(0, top))
		elseif bottom > canvasY + baseFrameSizeY then
			baseFrame.CanvasPosition = Vector2.new(0, math.max(0, bottom - baseFrameSizeY))
		end
	end
end

function PublishAsset:render()
	return withLocalization(function(_, localizedContent)
		return self:renderContent(nil, localizedContent)
	end)
end

function PublishAsset:renderContent(theme, localizedContent)
	theme = self.props.Stylizer

	local props = self.props

	local Size = props.Size
	local LayoutOrder = props.LayoutOrder

	local name = props.name
	local description = props.description
	local tags = props.tags
	local owner = props.owner
	local genres = props.genres
	local allowCopy = props.allowCopy
	local copyOn = props.copyOn
	local allowComment = props.allowComment
	local commentOn = props.commentOn
	local assetTypeEnum = props.assetTypeEnum

	local onNameChange = props.onNameChange
	local onDescChange = props.onDescChange
	local onTagsChange = props.onTagsChange
	local onOwnerSelected = props.onOwnerSelected
	local onGenreSelected = props.onGenreSelected
	local toggleCopy = props.toggleCopy
	local toggleComment = props.toggleComment

	local displayOwnership = props.displayOwnership
	local displayGenre = props.displayGenre
	local displayCopy = props.displayCopy
	local displayComment = props.displayComment
	local displayAssetType = props.displayAssetType
	local displayTags = props.displayTags

	local maximumItemTagsPerItem = props.maximumItemTagsPerItem

	local orderIterator = LayoutOrderIterator.new()

	local publishAssetTheme = theme.publishAsset
	local publishAssetLocalized = localizedContent.AssetConfig.PublishAsset

	local configCopyHeight = COPY_HEIGHT
	if not allowCopy then
		configCopyHeight = configCopyHeight + HEIGHT_FOR_ACCOUNT_SETTING_TEXT
	end

	local scrollingFrameProps = {
		Size = Size,
		LayoutOrder = LayoutOrder,
		[Roact.Ref] = self.baseFrameRef,
	}

	return Roact.createElement(StyledScrollingFrame,
		scrollingFrameProps,
	{
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, PADDING),
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
		}),

		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5),

			[Roact.Change.AbsoluteContentSize] = self.refreshCanvas or function(rbx)
				if self.baseFrameRef.current then
					self.baseFrameRef.current.CanvasSize = UDim2.new(Size.X.Scale, Size.X.Offset, 0, rbx.AbsoluteContentSize.y + PADDING*2)
				end
			end,

			[Roact.Ref] = self.listLayoutRef,
		}),

		Title = Roact.createElement(ConfigTextField, {
			Title = publishAssetLocalized.Title,
			TotalHeight = NAME_HEIGHT,
			MaxCount = AssetConfigConstants.NAME_CHARACTER_LIMIT,
			TextChangeCallBack = onNameChange,
			TextContent = name,

			ErrorCallback = function(hasError)
				self.props.setFieldError(AssetConfigConstants.FIELD_NAMES.Title, hasError)
			end,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Description = Roact.createElement(ConfigTextField, {
			Title = publishAssetLocalized.Description,
			TotalHeight = DESC_HEIGHT,
			MaxCount = AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT ,
			TextChangeCallBack = onDescChange,
			TextContent = description,

			ErrorCallback = function(hasError)
				self.props.setFieldError(AssetConfigConstants.FIELD_NAMES.Description, hasError)
			end,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		AssetType = displayAssetType and Roact.createElement(TitledFrame, {
			Title = publishAssetLocalized.AssetType,
			LayoutOrder = orderIterator:getNextOrder(),
		}, {
			Label = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				TextColor3 = publishAssetTheme.textColor,

				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_TITLE,

				Text = publishAssetLocalized.AssetTextDisplay[assetTypeEnum],
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
		}),

		Tags = displayTags and Roact.createElement(TagsComponent, {
			tags = tags,
			onTagsChange = onTagsChange,
			maximumItemTagsPerItem = maximumItemTagsPerItem,

			Title = publishAssetLocalized.Tags,
			AssetTypeEnum = assetTypeEnum,
			LayoutOrder = orderIterator:getNextOrder(),

			setDropdownHeight = function(dropdownHeight)
				self.updateMaxDropdownPosition(self.tagsRef, dropdownHeight)
			end,

			[Roact.Ref] = self.tagsRef,
		}),

		Ownership = displayOwnership and Roact.createElement(ConfigAccess, {
			Title = publishAssetLocalized.Ownership,
			owner = owner,

			TotalHeight = ACCESS_HEIGHT,

			onDropDownSelect = onOwnerSelected,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Genre = displayGenre and Roact.createElement(ConfigGenre, {
			Title = publishAssetLocalized.Genre,
			genres = genres,

			TotalHeight = GENRE_HEIGHT,

			onDropDownSelect = onGenreSelected,

			LayoutOrder = orderIterator:getNextOrder(),

			setDropdownHeight = function(dropdownHeight)
				self.updateMaxDropdownPosition(self.genreRef, dropdownHeight)
			end,

			[Roact.Ref] = self.genreRef,
		}),

		DividerBase = displayGenre and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = orderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, DIVIDER_BASE_HEIGHT),
		}, {
			Separator = Roact.createElement(Separator, {
				Position = UDim2.new(0.5, 0, 0.5, 0)
			}),
		}),

		Copy = displayCopy and Roact.createElement(ConfigCopy, {
			Title = publishAssetLocalized.Copy,

			TotalHeight = configCopyHeight,
			CopyEnabled = allowCopy,
			CopyOn = copyOn,

			ToggleCallback = toggleCopy,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Comment = displayComment and Roact.createElement(ConfigComment, {
			Title = publishAssetLocalized.Comments,

			TotalHeight = COMMENT_HEIGHT,
			CommentEnabled = allowComment,
			CommentOn = commentOn,

			ToggleCallback = toggleComment,

			LayoutOrder = orderIterator:getNextOrder(),
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setFieldError = function(fieldName, hasError)
			dispatch(SetFieldError(AssetConfigConstants.SIDE_TABS.General, fieldName, hasError))
		end,
	}
end


PublishAsset = withContext({
	Stylizer = ContextServices.Stylizer,
})(PublishAsset)


return RoactRodux.connect(nil, mapDispatchToProps)(PublishAsset)