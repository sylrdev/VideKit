local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local TextLabel = require(Components.TextLabel)

return {
	vide = Vide,
	story = function()
		return TextLabel {
			Size = UDim2.fromOffset(200, 200),
			Text = "Text Label Component",
			TextScaled = true,
		}
	end,
}
