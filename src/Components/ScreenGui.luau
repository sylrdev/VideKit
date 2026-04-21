local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local DEFAULT_IGNORE_GUI_INSET = true
local DEFAULT_RESET_ON_SPAWN = false

local function ScreenGui(props: Props)
	assert(T.table(props))

	props.IgnoreGuiInset = props.IgnoreGuiInset or DEFAULT_IGNORE_GUI_INSET
	props.ResetOnSpawn = props.ResetOnSpawn or DEFAULT_RESET_ON_SPAWN

	return create("ScreenGui")(props)
end

type Props = Types.LayerCollectorProps & {
	ClipToDeviceSafeArea: Types.Prop<boolean>?,
	DisplayOrder: Types.Prop<number>?,
	IgnoreGuiInset: Types.Prop<boolean>?,
	SafeAreaCompatibility: Types.Prop<Enum.SafeAreaCompatibility>?,
	ScreenInsets: Types.Prop<Enum.ScreenInsets>?,
}

return ScreenGui
