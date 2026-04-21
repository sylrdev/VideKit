local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function Padding(props: Props)
	assert(T.table(props))

	return create("UIPadding")(props)
end

type Props = Types.InstanceProps & {
	PaddingBottom: Types.Prop<UDim>?,
	PaddingLeft: Types.Prop<UDim>?,
	PaddingRight: Types.Prop<UDim>?,
	PaddingTop: Types.Prop<UDim>?,
}

return Padding
