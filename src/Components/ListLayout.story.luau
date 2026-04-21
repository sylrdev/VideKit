local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local ListLayout = require(Components.ListLayout)
local Frame = require(Components.Frame)

return {
	vide = Vide,
	story = function()
		return {
			ListLayout {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 10),
			},

			Frame {
				Size = UDim2.fromOffset(200, 200),
			},
			Frame {
				Size = UDim2.fromOffset(200, 200),
			},
			Frame {
				Size = UDim2.fromOffset(200, 200),
			},
			Frame {
				Size = UDim2.fromOffset(200, 200),
			},
		}
	end,
}
