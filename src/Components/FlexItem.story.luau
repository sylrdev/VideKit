local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local ListLayout = require(Components.ListLayout)
local Frame = require(Components.Frame)
local FlexItem = require(Components.FlexItem)

return {
	vide = Vide,
	story = function()
		return {
			ListLayout {
				Padding = UDim.new(0, 10),
			},

			Frame {
				Size = UDim2.fromOffset(200, 200),
			},

			Frame {
				Size = UDim2.fromOffset(200, 200),

				FlexItem {},
			},
		}
	end,
}
