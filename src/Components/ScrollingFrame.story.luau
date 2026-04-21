local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local ScrollingFrame = require(Components.ScrollingFrame)

return {
	vide = Vide,
	story = function()
		return ScrollingFrame {
			Size = UDim2.fromOffset(200, 200),
		}
	end,
}
