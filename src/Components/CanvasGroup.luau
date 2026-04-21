local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)
local Tailwind = require(Packages.Tailwind)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local create = Vide.create

local DEFAULT_BACKGROUND_COLOR_3 = Tailwind.white
local DEFAULT_BORDER_SIZE_PIXEL = 0

local function CanvasGroup(props: Props)
	assert(T.table(props))

	props.BackgroundColor3 = props.BackgroundColor3 or DEFAULT_BACKGROUND_COLOR_3
	props.BorderSizePixel = props.BorderSizePixel or DEFAULT_BORDER_SIZE_PIXEL

	return create("CanvasGroup")(props)
end

type Props = Types.GuiObjectProps & {
	GroupColor3: Types.Prop<Color3>?,
	GroupTransparency: Types.Prop<number>?,
}

return CanvasGroup
