local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local TextBox = require(Components.TextBox)

return {
	vide = Vide,
	story = function()
		return TextBox {
			Size = UDim2.fromOffset(200, 200),
			PlaceholderText = "Text Box Component",
			TextScaled = true,
		}
	end,
}
