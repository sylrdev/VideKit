local Packages = script.Parent.Parent.Parent
local Tailwind = require(Packages.Tailwind)
local Vide = require(Packages.Vide)

local Components = script.Parent
local Frame = require(Components.Frame)
local Stroke = require(Components.Stroke)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 200),

			Stroke {
				Color = Tailwind.rose[500],
				Thickness = 5,
			},
		}
	end,
}
