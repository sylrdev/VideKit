local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function TextBox(props: Props)
	assert(T.table(props))

	return create("TextBox")(props)
end

type Props = Types.GuiObjectProps & {
	ClearTextOnFocus: Types.Prop<boolean>?,
	CursorPosition: Types.Prop<number>?,
	FontFace: Types.Prop<Font>?,
	LineHeight: Types.Prop<number>?,
	MaxVisibleGraphemes: Types.Prop<number>?,
	MultiLine: Types.Prop<boolean>?,
	OpenTypeFeatures: Types.Prop<string>?,
	PlaceholderColor3: Types.Prop<Color3>?,
	PlaceholderText: Types.Prop<string>?,
	RichText: Types.Prop<boolean>?,
	SelectionStart: Types.Prop<number>?,
	ShowNativeInput: Types.Prop<boolean>?,
	Text: Types.Prop<string>?,
	TextColor3: Types.Prop<Color3>?,
	TextDirection: Types.Prop<Enum.TextDirection>?,
	TextEditable: Types.Prop<boolean>?,
	TextScaled: Types.Prop<boolean>?,
	TextSize: Types.Prop<number>?,
	TextStrokeColor3: Types.Prop<Color3>?,
	TextStrokeTransparency: Types.Prop<number>?,
	TextTransparency: Types.Prop<number>?,
	TextTruncate: Types.Prop<Enum.TextTruncate>?,
	TextWrapped: Types.Prop<boolean>?,
	TextXAlignment: Types.Prop<Enum.TextXAlignment>?,
	TextYAlignment: Types.Prop<Enum.TextYAlignment>?,

	Focused: () -> ()?,
	FocusLost: (enterPressed: boolean, inputThatCausedFocusLoss: InputObject) -> ()?,
	ReturnPressedFromOnScreenKeyboard: () -> ()?,
}

return TextBox
