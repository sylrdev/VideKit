local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)

local Components = script.Parent
local Frame = require(Components.Frame)
local AutoScale = require(Components.AutoScale)

return {
	vide = Vide,
	story = function()
		return Frame {
			Size = UDim2.fromOffset(1920, 1080),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),

			AutoScale {},
		}
	end,
}
