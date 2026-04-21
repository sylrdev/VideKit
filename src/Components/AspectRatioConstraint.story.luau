local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Frame = require(script.Parent.Frame)
local AspectRatioConstraint = require(script.Parent.AspectRatioConstraint)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 300),

			AspectRatioConstraint {},
		}
	end,
}
