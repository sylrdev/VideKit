local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function Gradient(props: Props)
	assert(T.table(props))

	return create("UIGradient")(props)
end

type Props = Types.InstanceProps & {
	Color: Types.Prop<ColorSequence>?,
	Enabled: Types.Prop<boolean>?,
	Offset: Types.Prop<Vector2>?,
	Rotation: Types.Prop<number>?,
	Transparency: Types.Prop<NumberSequence>?,
}

return Gradient
