local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local DEFAULT_BACKGROUND_TRANSPARENCY = 1
local DEFAULT_SCALE_TYPE = Enum.ScaleType.Fit

local function ImageButton(props: Props)
	assert(T.table(props))

	props.BackgroundTransparency = props.BackgroundTransparency or DEFAULT_BACKGROUND_TRANSPARENCY
	props.ScaleType = props.ScaleType or DEFAULT_SCALE_TYPE

	return create("ImageButton")(props)
end

type Props = Types.GuiButtonProps & {
	HoverImage: Types.Prop<string>?,
	HoverImageContent: Types.Prop<Content>?,
	Image: Types.Prop<string>?,
	ImageColor3: Types.Prop<Color3>?,
	ImageContent: Types.Prop<Content>?,
	ImageRectOffset: Types.Prop<Vector2>?,
	ImageRectSize: Types.Prop<Vector2>?,
	ImageTransparency: Types.Prop<number>?,
	PressedImage: Types.Prop<string>?,
	PressedImageContent: Types.Prop<Content>?,
	ResampleMode: Types.Prop<Enum.ResamplerMode>?,
	ScaleType: Types.Prop<Enum.ScaleType>?,
	SliceCenter: Types.Prop<Rect>?,
	SliceScale: Types.Prop<number>?,
	TileSize: Types.Prop<UDim2>?,
}

return ImageButton
