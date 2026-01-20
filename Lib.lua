local Library = {Toggle = true,FirstTab = nil,TabCount = 0,ColorTable = {}}

local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

-- Get screen size for mobile scaling
local IsMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
local ScreenSize = workspace.CurrentCamera.ViewportSize

local function MakeDraggable(ClickObject, Object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	
	ClickObject.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = Input.Position
			Start
