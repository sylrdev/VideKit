local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local TextButton = require(Components.TextButton)

return {
	vide = Vide,
	story = function()
		return TextButton {
			Size = UDim2.fromOffset(200, 200),
			Text = "Text Button Component",
			TextScaled = true,

			Activated = function()
				print("Hello world!")
			end,
		}
	end,
}
