local FFlagAutoUpdatePlugins = game:GetFastFlag("AutoUpdatePlugins")

local Constants = {}

Constants.HEADER_TITLE_WIDTH = 250
Constants.HEADER_UPDATE_WIDTH = 100
Constants.HEADER_LEFT_PADDING = 20
Constants.HEADER_RIGHT_PADDING = -22
Constants.HEADER_TOP_PADDING = 20
Constants.HEADER_BUTTON_SIZE = 30
Constants.HEADER_MESSAGE_LINE_HEIGHT = 18
Constants.HEADER_HEIGHT = Constants.HEADER_BUTTON_SIZE + Constants.HEADER_TOP_PADDING

Constants.MOVED_DIALOG_WIDTH = 369
Constants.MOVED_DIALOG_HEIGHT = 168
Constants.MOVED_DIALOG_TOP_PADDING = 30
Constants.MOVED_DIALOG_INTRA_PADDING = 10
Constants.MOVED_DIALOG_BOTTOM_PADDING = 20
Constants.MOVED_DIALOG_SIDE_PADDING = 20
Constants.MOVED_DIALOG_LABEL_HEIGHT = 18
Constants.MOVED_DIALOG_BUTTON_WIDTH = 120
Constants.MOVED_DIALOG_BUTTON_HEIGHT = 32

Constants.PLUGIN_VERTICAL_PADDING = 5
Constants.PLUGIN_HORIZONTAL_PADDING = 30
Constants.THUMBNAIL_SIZE = 60
Constants.PLUGIN_ENTRY_HEIGHT = FFlagAutoUpdatePlugins and 150 or 120
Constants.PLUGIN_NAME_HEIGHT = 30
Constants.PLUGIN_CREATOR_HEIGHT = 20
Constants.PLUGIN_DESCRIPTION_HEIGHT = 60
Constants.PLUGIN_UPDATE_HEIGHT = 30
Constants.PLUGIN_ENABLE_WIDTH = 40
Constants.PLUGIN_CONTEXT_WIDTH = 28
Constants.MODERATED_WARNING_WIDTH = 194

Constants.TOGGLE_BUTTON_WIDTH = 40
Constants.TOGGLE_BUTTON_HEIGHT = 24

Constants.HTTP_OVERVIEW_HEIGHT = 18
Constants.HTTP_OVERVIEW_ICON_SIZE = 18
Constants.DETAILS_THUMBNAIL_SIZE = 32
Constants.LIST_ITEM_TITLE_WIDTH = 170
Constants.PERMISSION_TYPES = {
    HttpService = "HttpService",
    ScriptInjection = "ScriptInjection",
}

-- Workaround because the ScrollbarInset does not work.
Constants.SCROLLBAR_WIDTH_ADJUSTMENT = 12

Constants.APP_PAGE = {
    Main = "Main",
    Detail = "Detail",
}

Constants.SUBTITLE_PADDING = 30
Constants.PLUGIN_ENTRY_PADDING = 20

return Constants
