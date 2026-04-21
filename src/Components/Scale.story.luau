local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local Frame = require(Components.Frame)
local Scale = require(Components.Scale)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(100, 100),

			Scale {
				Scale = 2,
			},
		}
	end,
}
