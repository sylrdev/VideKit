local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function TextButton(props: Props)
	assert(T.table(props))

	return create("TextButton")(props)
end

type Props = Types.GuiButtonProps & {
	FontFace: Types.Prop<Font>?,
	LineHeight: Types.Prop<number>?,
	MaxVisibleGraphemes: Types.Prop<number>?,
	OpenTypeFeatures: Types.Prop<string>?,
	RichText: Types.Prop<boolean>?,
	Text: Types.Prop<string>?,
	TextColor3: Types.Prop<Color3>?,
	TextDirection: Types.Prop<Enum.TextDirection>?,
	TextScaled: Types.Prop<boolean>?,
	TextSize: Types.Prop<number>?,
	TextStrokeColor3: Types.Prop<Color3>?,
	TextStrokeTransparency: Types.Prop<number>?,
	TextTransparency: Types.Prop<number>?,
	TextTruncate: Types.Prop<Enum.TextTruncate>?,
	TextWrapped: Types.Prop<boolean>?,
	TextXAlignment: Types.Prop<Enum.TextXAlignment>?,
	TextYAlignment: Types.Prop<Enum.TextYAlignment>?,
}

return TextButton
