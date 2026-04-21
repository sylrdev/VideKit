local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local GridLayout = require(Components.GridLayout)
local Frame = require(Components.Frame)

return {
	vide = Vide,
	story = function()
		return {
			GridLayout {
				CellSize = UDim2.fromOffset(200, 200),
				FillDirectionMaxCells = 5,
			},

			Frame {},
			Frame {},
			Frame {},
			Frame {},
			Frame {},
			Frame {},
			Frame {},
			Frame {},
			Frame {},
			Frame {},
		}
	end,
}
