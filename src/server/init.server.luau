local backrooms = workspace.backrooms
local textures = workspace.textures

local assetsIds = {}

local function collectAssetIds(folder)
	for _, asset in ipairs(folder:GetChildren()) do
		table.insert(assetsIds, asset.Texture)
	end
end

collectAssetIds(textures, #assetsIds)
print(assetsIds)

counter = 1
assetsIdsLen = #assetsIds

for _, asset in ipairs(backrooms:GetDescendants()) do
    if asset:IsA("Texture") then
        asset.Texture = assetsIds[counter]

        if counter == assetsIdsLen then
            counter = 0
        end

        counter += 1
    end
end