local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local create = Vide.create

local DEFAULT_FLEX_MODE = Enum.UIFlexMode.Fill

local function FlexItem(props: Props)
	assert(T.table(props))

	props.FlexMode = props.FlexMode or DEFAULT_FLEX_MODE

	return create("UIFlexItem")(props)
end

type Props = Types.InstanceProps & {
	FlexMode: Types.Prop<Enum.UIFlexMode>?,
	GrowRatio: Types.Prop<number>?,
	ItemLineAlignment: Types.Prop<Enum.ItemLineAlignment>?,
	ShrinkRatio: Types.Prop<number>?,
}

return FlexItem
