local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local create = Vide.create

local function BillboardGui(props: Props)
	assert(T.table(props))

	return create("BillboardGui")(props)
end

type Props = Types.LayerCollectorProps & {
	Active: Types.Prop<boolean>?,
	Adornee: Types.Prop<Instance>?,
	AlwaysOnTop: Types.Prop<boolean>?,
	Brightness: Types.Prop<number>?,
	ClipsDescendants: Types.Prop<boolean>?,
	DistanceStep: Types.Prop<number>?,
	ExtentsOffset: Types.Prop<Vector3>?,
	ExtentsOffsetWorldSpace: Types.Prop<Vector3>?,
	LightInfluence: Types.Prop<number>?,
	MaxDistance: Types.Prop<number>?,
	PlayerToHideFrom: Types.Prop<Instance>?,
	Size: Types.Prop<UDim2>?,
	SizeOffset: Types.Prop<Vector2>?,
	StudsOffset: Types.Prop<Vector3>?,
	StudsOffsetWorldSpace: Types.Prop<Vector3>?,
}

return BillboardGui
