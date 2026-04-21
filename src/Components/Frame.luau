local Packages = script.Parent.Parent.Parent
local Vide = require(Packages.Vide)
local T = require(Packages.T)

local Types = require(script.Parent.Parent.Types)

local create = Vide.create

local function Frame(props: Props)
	assert(T.table(props))

	return create("Frame")(props)
end

type Props = Types.GuiObjectProps & {
	Style: Types.Prop<Enum.FrameStyle>?,
}

return Frame
