local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function SizeConstraint(pros: Props)
	assert(T.table(pros))

	return create("UISizeConstraint")(pros)
end

type Props = Types.InstanceProps & {
	MaxSize: Types.Prop<Vector2>?,
	MinSize: Types.Prop<Vector2>?,
}

return SizeConstraint
