local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local TableLayout = require(Components.TableLayout)
local Frame = require(Components.Frame)

return {
	vide = Vide,
	story = function()
		return {
			TableLayout {
				FillEmptySpaceColumns = true,
				FillEmptySpaceRows = true,
				Padding = UDim2.fromOffset(10, 10),
			},

			Frame {
				BackgroundTransparency = 1,

				Frame {},
				Frame {},
				Frame {},
			},

			Frame {
				BackgroundTransparency = 1,

				Frame {},
				Frame {},
				Frame {},
			},

			Frame {
				BackgroundTransparency = 1,

				Frame {},
				Frame {},
				Frame {},
			},
		}
	end,
}
