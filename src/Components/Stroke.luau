local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function Stroke(props: Props)
	assert(T.table(props))

	return create("UIStroke")(props)
end

type Props = Types.InstanceProps & {
	ApplyStrokeMode: Types.Prop<Enum.ApplyStrokeMode>?,
	BorderOffset: Types.Prop<UDim>?,
	BorderStrokePosition: Types.Prop<Enum.BorderStrokePosition>?,
	Color: Types.Prop<Color3>?,
	Enabled: Types.Prop<boolean>?,
	LineJoinMode: Types.Prop<Enum.LineJoinMode>?,
	StrokeSizingMode: Types.Prop<Enum.StrokeSizingMode>?,
	Thickness: Types.Prop<number>?,
	Transparency: Types.Prop<number>?,
	ZIndex: Types.Prop<number>?,
}

return Stroke
