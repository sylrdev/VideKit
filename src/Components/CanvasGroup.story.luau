local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local CanvasGroup = require(script.Parent.CanvasGroup)

return {
	vide = Vide,
	story = function()
		return CanvasGroup {
			Size = UDim2.fromOffset(200, 200),
		}
	end,
}
