local FStringUGCValidationBodyPartCollisionFidelity =
	game:DefineFastString("UGCValidationBodyPartCollisionFidelity", "Default")

local function validateBodyPartCollisionFidelity(root: Instance): (boolean, { string }?)
	local instances = root:GetDescendants()
	table.insert(instances, 1, root)

	local expectedCollisionFidelity = Enum.CollisionFidelity.Default
	pcall(function()
		expectedCollisionFidelity = Enum.CollisionFidelity[FStringUGCValidationBodyPartCollisionFidelity]
	end)

	local failures = {}

	for _, instance in instances do
		if instance:IsA("MeshPart") and instance.CollisionFidelity ~= expectedCollisionFidelity then
			table.insert(
				failures,
				`Expected {instance:GetFullName()}.CollisionFidelity to be {expectedCollisionFidelity.Name}`
			)
		end
	end

	if #failures == 0 then
		return true
	else
		return false, failures
	end
end

return validateBodyPartCollisionFidelity
