local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function SurfaceGui(props: Props)
	assert(T.table(props))

	return create("SurfaceGui")(props)
end

type Props = Types.LayerCollectorProps & {
	AlwaysOnTop: Types.Prop<boolean>?,
	Brightness: Types.Prop<number>?,
	CanvasSize: Types.Prop<Vector2>?,
	ClipsDescendants: Types.Prop<boolean>?,
	LightInfluence: Types.Prop<number>?,
	MaxDistance: Types.Prop<number>?,
	PixelsPerStud: Types.Prop<number>?,
	SizingMode: Types.Prop<Enum.SurfaceGuiSizingMode>?,
	ToolPunchThroughDistance: Types.Prop<number>?,
	ZOffset: Types.Prop<number>?,

	Active: Types.Prop<boolean>?,
	Adornee: Types.Prop<Instance>?,
	Face: Types.Prop<Enum.NormalId>?,
}

return SurfaceGui
