local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local Tailwind = require(Packages.Tailwind)

local Components = script.Parent
local Frame = require(Components.Frame)
local Gradient = require(Components.Gradient)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 200),

			Gradient {
				Color = ColorSequence.new {
					ColorSequenceKeypoint.new(0, Tailwind.rose[500]),
					ColorSequenceKeypoint.new(1, Tailwind.amber[500]),
				},
			},
		}
	end,
}
