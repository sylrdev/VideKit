local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function Scale(props: Props)
	assert(T.table(props))

	return create("UIScale")(props)
end

type Props = Types.InstanceProps & {
	Scale: Types.Prop<number>?,
}

return Scale
