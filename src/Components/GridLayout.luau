local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local DEFAULT_SORT_ORDER = Enum.SortOrder.LayoutOrder

local function GridLayout(props: Props)
	assert(T.table(props))

	props.SortOrder = props.SortOrder or DEFAULT_SORT_ORDER

	return create("UIGridLayout")(props)
end

type Props = Types.UIGridStyleLayoutProps & {
	CellPadding: Types.Prop<UDim2>?,
	CellSize: Types.Prop<UDim2>?,
	FillDirectionMaxCells: Types.Prop<number>?,
	StartCorner: Types.Prop<Enum.StartCorner>?,
}

return GridLayout
