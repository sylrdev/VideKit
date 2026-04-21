local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local create = Vide.create

local function Corner(props: Props)
	assert(T.table(props))

	return create("UICorner")(props)
end

type Props = Types.InstanceProps & {
	CornerRadius: Types.Prop<UDim>?,
}

return Corner
