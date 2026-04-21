local Packages = script.Parent.Parent.Parent
local Tailwind = require(Packages.Tailwind)
local Vide = require(Packages.Vide)

local Components = script.Parent
local PageLayout = require(Components.PageLayout)
local Frame = require(Components.Frame)

return {
	vide = Vide,
	story = function()
		return {
			PageLayout {
				TweenTime = 0.4,
			},

			Frame {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Tailwind.rose[500],
			},

			Frame {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Tailwind.blue[500],
			},
		}
	end,
}
