local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local DEFAULT_SORT_ORDER = Enum.SortOrder.LayoutOrder

local function PageLayout(props: Props)
	assert(T.table(props))

	props.SortOrder = props.SortOrder or DEFAULT_SORT_ORDER

	return create("UIPageLayout")(props)
end

type Props = Types.UIGridStyleLayoutProps & {
	Animated: Types.Prop<boolean>?,
	Circular: Types.Prop<boolean>?,
	EasingDirection: Types.Prop<Enum.EasingDirection>?,
	EasingStyle: Types.Prop<Enum.EasingStyle>?,
	GamepadInputEnabled: Types.Prop<boolean>?,
	Padding: Types.Prop<UDim>?,
	ScrollWheelInputEnabled: Types.Prop<boolean>?,
	TouchInputEnabled: Types.Prop<boolean>?,
	TweenTime: Types.Prop<number>?,

	PageEnter: (page: Instance) -> ()?,
	PageLeave: (page: Instance) -> ()?,
	Stopped: (currentPage: Instance) -> ()?,
}

return PageLayout
