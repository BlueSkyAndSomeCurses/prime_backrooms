local backrooms = workspace.backrooms
local textures = workspace.textures

local assetsIds = {}

local function collectAssetIds(folder)
	for _, asset in ipairs(folder:GetChildren()) do
		table.insert(assetsIds, asset.Texture)
	end
end

collectAssetIds(textures)
print(assetsIds)