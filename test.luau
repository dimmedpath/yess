-- Gui to Lua
-- Version: 3.2

-- Instances:

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Test"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Name = "SlideFrame"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, -0.2, 0) 
Frame.Size = UDim2.new(0.2, 0, 0.2, 0)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 3.000

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 90, 233)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(126, 62, 255))
}
UIGradient.Rotation = 90
UIGradient.Parent = Frame


local TextBox = Instance.new("TextBox")
TextBox.Name = "MainText"
TextBox.Parent = Frame
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.Position = UDim2.new(0.5, 0, 0.5, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.BackgroundTransparency = 1
TextBox.Text = "https://www.alyssasgift.xyz/"
TextBox.Font = Enum.Font.SourceSans
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextWrapped = true
TextBox.ClearTextOnFocus = false
TextBox.Selectable = true
TextBox.TextEditable = false 


local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = TextBox
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Thickness = 1
UIStroke.Transparency = 0.2


local tweenInfo = TweenInfo.new(
	1.5, 
	Enum.EasingStyle.Sine,
	Enum.EasingDirection.Out
)

local targetPosition = { Position = UDim2.new(0.5, 0, 0.1, 0) }
local tween = TweenService:Create(Frame, tweenInfo, targetPosition)
tween:Play()
