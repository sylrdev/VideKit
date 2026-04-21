local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function TextSizeConstraint(props: Props)
	assert(T.table(props))

	return create("UITextSizeConstraint")(props)
end

type Props = Types.InstanceProps & {
	MaxTextSize: Types.Prop<number>?,
	MinTextSize: Types.Prop<number>?,
}

return TextSizeConstraint
