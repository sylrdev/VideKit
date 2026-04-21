local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local TextLabel = require(Components.TextLabel)
local TextSizeConstraint = require(Components.TextSizeConstraint)

return {
	vide = Vide,
	story = function()
		return TextLabel {
			Size = UDim2.fromOffset(200, 200),
			Text = "Text Size Constraint Component",
			TextScaled = true,

			TextSizeConstraint {
				MaxTextSize = 30,
			},
		}
	end,
}
