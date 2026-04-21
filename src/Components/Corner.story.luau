local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local Frame = require(Components.Frame)
local Corner = require(Components.Corner)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 200),

			Corner {
				CornerRadius = UDim.new(0, 10),
			},
		}
	end,
}
