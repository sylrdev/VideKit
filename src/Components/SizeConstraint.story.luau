local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Component = script.Parent
local Frame = require(Component.Frame)
local SizeConstraint = require(Component.SizeConstraint)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(100, 100),

			SizeConstraint {
				MinSize = Vector2.new(200, 200),
			},
		}
	end,
}
