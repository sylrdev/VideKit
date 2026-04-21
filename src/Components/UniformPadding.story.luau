local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local Tailwind = require(Packages.Tailwind)

local Components = script.Parent
local Frame = require(Components.Frame)
local UniformPadding = require(Components.UniformPadding)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 200),

			UniformPadding {
				Padding = UDim.new(0, 10),
			},

			Frame {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Tailwind.rose[500],
			},
		}
	end,
}
