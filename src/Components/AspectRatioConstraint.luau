local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local create = Vide.create

local function AspectRatioConstraint(props: Props)
	-- TODO strict interface check
	assert(T.table(props))

	return create("UIAspectRatioConstraint")(props)
end

type Props = Types.InstanceProps & {
	AspectRatio: Types.Prop<number>?,
	AspectType: Types.Prop<Enum.AspectType>?,
	DominantAxis: Types.Prop<Enum.DominantAxis>?,
}

return AspectRatioConstraint
