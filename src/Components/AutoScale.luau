local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local Packages = script.Parent.Parent.Parent
local T = require(Packages.T)
local Vide = require(Packages.Vide)

local VideKit = script.Parent.Parent
local Types = require(VideKit.Types)

local Components = script.Parent
local Scale = require(Components.Scale)

local source = Vide.source
local cleanup = Vide.cleanup
local read = Vide.read

local DEFAULT_RESOLUTION = Vector2.new(1920, 1080)
local DEFAULT_SCALE_MULTIPLIER = 1

local propsInterface = T.interface {
	Resolution = T.optional(T.Vector2),
	ScaleMultiplier = T.optional(T.union(T.number, T.callback)),
}

local function AutoScale(props: Props)
	assert(propsInterface(props))

	local viewportSize = source(Vector2.new(1, 1))

	-- we get the viewport size every frame in case the window gets resized
	local connection = RunService.RenderStepped:Connect(function()
		local camera = Workspace.CurrentCamera
		viewportSize(camera.ViewportSize)
	end)

	-- cleaning up the connection when the component gets destroyed to prevent memory leakage
	cleanup(function()
		connection:Disconnect()
	end)

	return Scale {
		Name = "AutoScale",
		Scale = function()
			local resolution = props.Resolution or DEFAULT_RESOLUTION
			local scaleMultiplier = read(props.ScaleMultiplier) or DEFAULT_SCALE_MULTIPLIER

			return scaleMultiplier / math.max(resolution.X / viewportSize().X, resolution.Y / viewportSize().Y)
		end,
	}
end

type Props = {
	Resolution: Vector2?,
	ScaleMultiplier: Types.Prop<number>?,
}

return AutoScale
