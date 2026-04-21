local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local ImageButton = require(Components.ImageButton)

return {
	vide = Vide,
	story = function()
		return ImageButton {
			Size = UDim2.fromOffset(200, 200),
			Image = "rbxthumb://type=Asset&id=24813339&w=150&h=150",

			Activated = function()
				print("Hello world!")
			end,
		}
	end,
}
