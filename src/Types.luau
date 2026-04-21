local Types = {}

type Array<T> = { T }

type GuiBase2dProps = {
	AutoLocalize: Prop<boolean>?,
	RootLocalizationTable: Prop<LocalizationTable>?,
	SelectionBehaviorDown: Prop<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: Prop<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: Prop<Enum.SelectionBehavior>?,
	SelectionBehaviorUp: Prop<Enum.SelectionBehavior>?,
	SelectionGroup: Prop<boolean>?,

	SelectionChanged: (amISelected: boolean, previousSelection: GuiObject, newSelection: GuiObject) -> ()?,
}

export type InstanceProps = {
	Archivable: Prop<boolean>?,
	Capabilities: Prop<SecurityCapabilities>?,
	Name: Prop<string>?,
	Sandboxed: Prop<boolean>?,

	AncestryChanged: (child: Instance, parent: Instance) -> ()?,
	AttributeChanged: (attribute: string) -> ()?,
	ChildAdded: (child: Instance) -> ()?,
	ChildRemoved: (child: Instance) -> ()?,
	DescendantAdded: (descendant: Instance) -> ()?,
	DescendantRemoving: (descendant: Instance) -> ()?,
	Destroying: () -> ()?,
	StyledPropertiesChanged: () -> ()?,
}
export type Prop<T> = T | () -> T
export type LayerCollectorProps = GuiBase2dProps & InstanceProps & {
	Enabled: Prop<boolean>?,
	ResetOnSpawn: Prop<boolean>?,
	ZIndexBehavior: Prop<Enum.ZIndexBehavior>?,
}
export type GuiObjectProps = GuiBase2dProps & InstanceProps & {
	Active: Prop<boolean>?,
	AnchorPoint: Prop<Vector2>?,
	AutomaticSize: Prop<Enum.AutomaticSize>?,
	BackgroundColor3: Prop<Color3>?,
	BackgroundTransparency: Prop<number>?,
	BorderColor3: Prop<Color3>?,
	BorderMode: Prop<Enum.BorderMode>?,
	BorderSizePixel: Prop<number>?,
	ClipsDescendants: Prop<boolean>?,
	Interactable: Prop<boolean>?,
	LayoutOrder: Prop<number>?,
	NextSelectionDown: Prop<GuiObject>?,
	NextSelectionLeft: Prop<GuiObject>?,
	NextSelectionRight: Prop<GuiObject>?,
	NextSelectionUp: Prop<GuiObject>?,
	Position: Prop<UDim2>?,
	Rotation: Prop<number>?,
	Selectable: Prop<boolean>?,
	SelectionImageObject: Prop<GuiObject>?,
	SelectionOrder: Prop<number>?,
	Size: Prop<UDim2>?,
	SizeConstraint: Prop<Enum.SizeConstraint>?,
	Visible: Prop<boolean>?,
	ZIndex: Prop<number>?,

	InputBegan: (input: InputObject) -> ()?,
	InputChanged: (input: InputObject) -> ()?,
	InputEnded: (input: InputObject) -> ()?,
	MouseEnter: (x: number, y: number) -> ()?,
	MouseLeave: (x: number, y: number) -> ()?,
	MouseMoved: (x: number, y: number) -> ()?,
	MouseWheelBackward: (x: number, y: number) -> ()?,
	MouseWheelForward: (x: number, y: number) -> ()?,
	SelectionGained: () -> ()?,
	SelectionLost: () -> ()?,
	TouchLongPress: (touchPositions: Array<Vector2>, state: Enum.UserInputState) -> ()?,
	TouchPan: (
		touchPositions: Array<Vector2>,
		totalTranslation: Vector2,
		velocity: Vector2,
		state: Enum.UserInputState
	) -> ()?,
	TouchPinch: (touchPositions: Array<Vector2>, scale: number, velocity: number, state: Enum.UserInputState) -> ()?,
	TouchRotate: (touchPositions: Array<Vector2>, rotation: number, velocity: number, state: Enum.UserInputState) -> ()?,
	TouchSwipe: (swipeDirection: Enum.SwipeDirection, numberOfTouches: number) -> ()?,
	TouchTap: (touchPositions: Array<Vector2>) -> ()?,
}
export type GuiButtonProps = GuiObjectProps & {
	AutoButtonColor: Prop<boolean>?,
	HoverHapticEffect: Prop<HapticEffect>?,
	Modal: Prop<boolean>?,
	PressHapticEffect: Prop<HapticEffect>?,
	Selected: Prop<boolean>?,
	Style: Prop<Enum.ButtonStyle>?,

	Activated: (inputObject: InputObject, clickCount: number) -> ()?,
	MouseButton1Click: () -> ()?,
	MouseButton1Down: (x: number, y: number) -> ()?,
	MouseButton1Up: (x: number, y: number) -> ()?,
	MouseButton2Click: () -> ()?,
	MouseButton2Down: (x: number, y: number) -> ()?,
	MouseButton2Up: (x: number, y: number) -> ()?,
}
export type UIGridStyleLayoutProps = InstanceProps & {
	FillDirection: Prop<Enum.FillDirection>?,
	HorizontalAlignment: Prop<Enum.HorizontalAlignment>?,
	SortOrder: Prop<Enum.SortOrder>?,
	VerticalAlignment: Prop<Enum.VerticalAlignment>?,
}

return Types
