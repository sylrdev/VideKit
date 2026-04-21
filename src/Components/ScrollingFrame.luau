local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function ScrollingFrame(props: Props)
	assert(T.table(props))

	return create("ScrollingFrame")(props)
end

type Props = Types.GuiObjectProps & {
	AutomaticCanvasSize: Types.Prop<Enum.AutomaticSize>?,
	BottomImage: Types.Prop<string>?,
	BottomImageContent: Types.Prop<Content>?,
	CanvasPosition: Types.Prop<Vector2>?,
	CanvasSize: Types.Prop<UDim2>?,
	ElasticBehavior: Types.Prop<Enum.ElasticBehavior>?,
	HorizontalScrollBarInset: Types.Prop<Enum.ScrollBarInset>?,
	MidImage: Types.Prop<string>?,
	MidImageContent: Types.Prop<Content>?,
	ScrollBarImageColor3: Types.Prop<Color3>?,
	ScrollBarImageTransparency: Types.Prop<number>?,
	ScrollBarThickness: Types.Prop<number>?,
	ScrollingDirection: Types.Prop<Enum.ScrollingDirection>?,
	ScrollingEnabled: Types.Prop<boolean>?,
	TopImage: Types.Prop<string>?,
	TopImageContent: Types.Prop<Content>?,
	VerticalScrollBarInset: Types.Prop<Enum.ScrollBarInset>?,
	VerticalScrollBarPosition: Types.Prop<Enum.VerticalScrollBarPosition>?,
}

return ScrollingFrame
