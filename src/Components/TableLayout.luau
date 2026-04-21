local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local DEFAULT_SORT_ORDER = Enum.SortOrder.LayoutOrder

local function TableLayout(props: Props)
	assert(T.table(props))

	props.SortOrder = props.SortOrder or DEFAULT_SORT_ORDER

	return create("UITableLayout")(props)
end

type Props = Types.UIGridStyleLayoutProps & {
	FillEmptySpaceColumns: Types.Prop<boolean>?,
	FillEmptySpaceRows: Types.Prop<boolean>?,
	MajorAxis: Types.Prop<Enum.TableMajorAxis>?,
	Padding: Types.Prop<UDim2>?,
}

return TableLayout
