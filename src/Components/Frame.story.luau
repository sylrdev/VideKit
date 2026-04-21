local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Frame = require(script.Parent.Frame)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(200, 200),
		}
	end,
}
