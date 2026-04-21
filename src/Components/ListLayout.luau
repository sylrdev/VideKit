local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local DEFAULT_SORT_ORDER = Enum.SortOrder.LayoutOrder

local function ListLayout(props: Props)
	assert(T.table(props))

	props.SortOrder = props.SortOrder or DEFAULT_SORT_ORDER

	return create("UIListLayout")(props)
end

type Props = Types.UIGridStyleLayoutProps & {
	HorizontalFlex: Types.Prop<Enum.UIFlexAlignment>?,
	ItemLineAlignment: Types.Prop<Enum.ItemLineAlignment>?,
	Padding: Types.Prop<UDim>?,
	VerticalFlex: Types.Prop<Enum.UIFlexAlignment>?,
	Wraps: Types.Prop<boolean>?,
}

return ListLayout
