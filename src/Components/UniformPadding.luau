local Packages = script.Parent.Parent.Parent
local T = require(Packages.T)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local Components = script.Parent
local Padding = require(Components.Padding)

local propsInterface = T.interface {
	Padding = T.union(T.UDim, T.callback),
}

local function UniformPadding(props: Props)
	assert(propsInterface(props))

	return Padding {
		Name = "UniformPadding",
		PaddingRight = props.Padding,
		PaddingLeft = props.Padding,
		PaddingBottom = props.Padding,
		PaddingTop = props.Padding,
	}
end

type Props = {
	Padding: Types.Prop<UDim>,
}

return UniformPadding
