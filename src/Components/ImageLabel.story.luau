local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local ImageLabel = require(Components.ImageLabel)

return {
	vide = Vide,
	story = function()
		return ImageLabel {
			Size = UDim2.fromOffset(200, 200),
			Image = "rbxthumb://type=Asset&id=24813339&w=150&h=150",
		}
	end,
}
