local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local Tailwind = require(Packages.Tailwind)

local Components = script.Parent
local Frame = require(Components.Frame)
local Padding = require(Components.Padding)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 200),

			Padding {
				PaddingRight = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 10),
			},

			Frame {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Tailwind.rose[500],
			},
		}
	end,
}
