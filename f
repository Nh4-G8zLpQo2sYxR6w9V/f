
local library = {}
local titlefunc = {}
local UIConfig = {
  Bind = Enum.KeyCode.RightControl
}

_G.Color = Color3.fromRGB(0, 0, 255)

function CircleClick(Button, X, Y)
coroutine.resume(
  coroutine.create(
    function()
    local Circle = Instance.new("ImageLabel")
    Circle.Parent = Button
    Circle.Name = "Circle"
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BackgroundTransparency = 1.000
    Circle.ZIndex = 10
    Circle.Image = "rbxassetid://15163009573"
    Circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Circle.ImageTransparency = 0.7
    Circle.Visible = false
    local NewX = X - Circle.AbsolutePosition.X
    local NewY = Y - Circle.AbsolutePosition.Y
    Circle.Position = UDim2.new(0, NewX, 0, NewY)
    local Time = 0.2
    Circle:TweenSizeAndPosition(
      UDim2.new(0, 30.25, 0, 30.25),
      UDim2.new(0, NewX - 15, 0, NewY - 10),
      "Out",
      "Quad",
      Time,
      false,
      nil
    )
    for i = 1, 10 do
    Circle.ImageTransparency = Circle.ImageTransparency + 0.01
    wait(Time / 10)
    end
    Circle:Destroy()
    end
  )
)
end
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function dragify(Frame, object)
dragToggle = nil
dragSpeed = .25
dragInput = nil
dragStart = nil
dragPos = nil
function updateInput(input)
Delta = input.Position - dragStart
Position =
UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {
  Position = Position
}):Play()
end
Frame.InputBegan:Connect(
  function(input)
  if
    (input.UserInputType == Enum.UserInputType.MouseButton1 or
    input.UserInputType == Enum.UserInputType.Touch)
  then
  dragToggle = true
  dragStart = input.Position
  startPos = object.Position
  input.Changed:Connect(
    function()
    if (input.UserInputState == Enum.UserInputState.End) then
    dragToggle = false
    end
    end
  )
  end
  end
)
Frame.InputChanged:Connect(
  function(input)
  if
    (input.UserInputType == Enum.UserInputType.MouseMovement or
    input.UserInputType == Enum.UserInputType.Touch)
  then
  dragInput = input
  end
  end
)
game:GetService("UserInputService").InputChanged:Connect(
  function(input)
  if (input == dragInput and dragToggle) then
  updateInput(input)
  end
  end
)
end
    for _, Interface in ipairs(game.CoreGui:GetChildren()) do
   if Interface.Name == "UICloud" or Interface.Name == "TurnCloud" then
      Interface:Destroy()
   end
end
local ThunderScreen = Instance.new("ScreenGui")
local ThunderToggleUI = Instance.new("TextButton")
local ThunderImageUI = Instance.new("ImageLabel")
ThunderScreen.Name = "TurnCloud"
ThunderScreen.Parent = game.CoreGui
ThunderScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ThunderToggleUI.Name = "ThunderToggleUI"
ThunderToggleUI.Parent = ThunderScreen
ThunderToggleUI.BackgroundColor3 = Color3.fromRGB(31,31,31)
ThunderToggleUI.BorderSizePixel = 0
ThunderToggleUI.Position = UDim2.new(0.03, 0, 0.02, 0)
ThunderToggleUI.Size = UDim2.new(0, 50, 0, 50)
ThunderToggleUI.Font = Enum.Font.SourceSansBold
ThunderToggleUI.Text = ""
ThunderToggleUI.TextColor3 = Color3.fromRGB(0, 0, 0)
ThunderToggleUI.TextSize = 14.000
ThunderToggleUI.Draggable = true
ThunderToggleUI.MouseButton1Click:Connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
local ThunderCornerUI = Instance.new("UICorner")
ThunderCornerUI.Name = "ThunderCornerUI"
ThunderCornerUI.Parent = ThunderToggleUI
ThunderImageUI.Name = "MODILEMAGE"
ThunderImageUI.Parent = ThunderToggleUI
ThunderImageUI.BackgroundColor3 = Color3.fromRGB(192,192,192)
ThunderImageUI.BackgroundTransparency = 1.000
ThunderImageUI.BorderSizePixel = 0
ThunderImageUI.Position = UDim2.new(0.0, 0, 0.0, 0)
ThunderImageUI.Size = UDim2.new(0, 50, 0, 50)
ThunderImageUI.Image = "rbxassetid://15965809846"
local ThunderCornerUI = Instance.new("UICorner")
ThunderCornerUI.Name = "ThunderCornerUI"
ThunderCornerUI.Parent = ThunderImageUI
local UI = Instance.new("ScreenGui")
UI.Name = "UICloud"
UI.Parent = game.CoreGui
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
if syn then
syn.protect_gui(UI)
end

function library:CreateLibrary(name)
local Main = Instance.new("Frame")
local Imgaemain = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Top = Instance.new("Frame")
local TabHolder = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local TabContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Title = Instance.new("TextLabel")

Main.Name = "Main"
Main.Parent = UI
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.Size = UDim2.new(0, 520, 0, 320)
Main.ClipsDescendants = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundTransparency = 0
local SizeMini = Instance.new("TextButton")
SizeMini.BorderSizePixel = 0
SizeMini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SizeMini.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
SizeMini.Position = UDim2.new(0.913462, 0, 0.853125, 0)
SizeMini.TextSize = 14
SizeMini.Size = UDim2.new(0, 45, 0, 45)
SizeMini.Name = "SizeMini"
SizeMini.TextColor3 = Color3.fromRGB(0, 0, 0)
SizeMini.BorderColor3 = Color3.fromRGB(0, 0, 0)
SizeMini.Text = ""
SizeMini.TextTransparency = 1
SizeMini.BackgroundTransparency = 1
SizeMini.Parent = Main
local isResizing = false
local originalMousePosition = nil
local originalFrameSize = Main.Size
SizeMini.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isResizing = true
        originalMousePosition = input.Position
        originalFrameSize = Main.Size
    end
end)
SizeMini.InputChanged:Connect(function(input)
    if isResizing and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - originalMousePosition
        local newWidth = originalFrameSize.X.Offset + delta.X
        local newHeight = originalFrameSize.Y.Offset + delta.Y
        newWidth = math.max(newWidth, 280) 
        newHeight = math.max(newHeight, 30)
        Main.Size = UDim2.new(0, newWidth, 0, newHeight)
    end
end)
SizeMini.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isResizing = false
    end
end)
local UiToggle_UiStroke256 = Instance.new("UIStroke")
UiToggle_UiStroke256.Color = Color3.fromRGB(0, 0, 255)
UiToggle_UiStroke256.Thickness = 3
UiToggle_UiStroke256.Transparency = 0.9
UiToggle_UiStroke256.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke256.Parent = Main

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Main

local uitoggled = false
UserInputService.InputBegan:Connect(
    function(io, p)
    if io.KeyCode == UIConfig.Bind then
    if uitoggled == false then
    Main:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 1, true)
    uitoggled = true
    wait(.5)
    UI.Enabled = false
    else
        Main:TweenSize(
        UDim2.new(0, 520, 0, 350),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quart,
        1,
        true
    )
    UI.Enabled = true
    uitoggled = false
    end
    end
    end)

local HeaderTop = Instance.new("Frame")
HeaderTop.Name = "Top"
HeaderTop.Parent = Main
HeaderTop.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
HeaderTop.BackgroundTransparency = 0
HeaderTop.Position = UDim2.new(0, 0, 0, 0)
HeaderTop.Size = UDim2.new(0, 520, 0, 35)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = HeaderTop

Title.Name = "Title"
Title.Parent = HeaderTop
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.02, 0, 0.02, 0)
Title.Size = UDim2.new(0, 483, 0, 31)
Title.Font = Enum.Font.LuckiestGuy
Title.Text = name or "VN Hub | ".."<font color='rgb(0, 0, 255)'>[Testings]</font>"
Title.RichText = true;
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 12.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
function librarytext(name)
  Title.Text = name
end
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main
Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.Position = UDim2.new(0.021956088, 0, 0.1833337, 0)
Top.Size = UDim2.new(0, 490, 0, 39)


local ClickFrame = Instance.new("Frame")
ClickFrame.Name = "Top"
ClickFrame.Parent = Main
ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickFrame.BackgroundTransparency = 1
ClickFrame.Position = UDim2.new(0, 0, 0, 0)
ClickFrame.Size = UDim2.new(0, 520, 0, 50)
TabHolder.Name = "TabHolder"
TabHolder.Parent = Top
TabHolder.Position = UDim2.new(-0.010309278, 6, -0.5323075824, 0)
TabHolder.Size = UDim2.new(0, 495, 0, 38)
TabHolder.BackgroundTransparency = 1
UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = TabHolder
TabContainer.Name = "TabContainer"
TabContainer.Parent = TabHolder
TabContainer.Active = true
TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabContainer.BackgroundTransparency = 1.000
TabContainer.Size = UDim2.new(0, 495, 0, 38)
TabContainer.CanvasSize = UDim2.new(2, 0, 0, 0)
TabContainer.ScrollBarThickness = 0
TabContainer.VerticalScrollBarInset = Enum.ScrollBarInset.Always
UIListLayout.Parent = TabContainer
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)
UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
  function()
  TabContainer.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X, 0, 0)
  end
)
UIPadding.Parent = TabContainer
UIPadding.PaddingLeft = UDim.new(0, 3)
UIPadding.PaddingTop = UDim.new(0, 3)
local Bottom = Instance.new("Frame")
Bottom.Name = "Bottom"
Bottom.Parent = Main
Bottom.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Bottom.BackgroundTransparency = 1.000
Bottom.Position = UDim2.new(0.0119760484, 7, 0.2416666687, 0)
Bottom.Size = UDim2.new(0, 500, 0, 200)

local Menu_Setting = Instance.new("ImageButton")
Menu_Setting.Name = "Menu_Setting"
Menu_Setting.Parent = HeaderTop
Menu_Setting.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Menu_Setting.BackgroundTransparency = 1
Menu_Setting.Position = UDim2.new(0, 450, 0, 7)
Menu_Setting.Size = UDim2.new(0, 25, 0, 25)
Menu_Setting.Image = "http://www.roblox.com/asset/?id=14479606771"

Menu_Setting.ImageColor3 = Color3.fromRGB(255, 255, 255)
Menu_Setting.ZIndex = 10

local Settings = Instance.new("ImageButton")
Settings.Name = "Settings"
Settings.Parent = Main
Settings.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Settings.BackgroundTransparency = 1
Settings.Position = UDim2.new(0, 480, 0, 7)
Settings.Size = UDim2.new(0, 25, 0, 25)
Settings.Image = "http://www.roblox.com/asset/?id=14479568523"
Settings.ImageColor3 = Color3.fromRGB(255, 255, 255)
Settings.ZIndex = 10

local UserImageCorner1 = Instance.new("UICorner")
UserImageCorner1.CornerRadius = UDim.new(0, 60)
UserImageCorner1.Name = "UserImageCorner"
UserImageCorner1.Parent = Menu_Setting

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Name = "BtnStroke"
BtnStroke.Parent = Menu_Setting
BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BtnStroke.Color = _G.Color
BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
BtnStroke.Thickness = 0
BtnStroke.Transparency = 0
BtnStroke.Enabled = true
BtnStroke.Archivable = true

local MainPage = Instance.new("Frame")
MainPage.Name = "MainPage"
MainPage.Parent = Main
MainPage.ClipsDescendants = true
MainPage.AnchorPoint = Vector2.new(0,0)
MainPage.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainPage.Position = UDim2.new(0, -250, 0, 50)
MainPage.BackgroundTransparency = 0
MainPage.Size = UDim2.new(0, 240, 0, 240)
MainPage.ZIndex = 6

local postog123 = Instance.new("UIStroke")

postog123.Name = "UIStroke"
postog123.Parent = MainPage
postog123.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
postog123.Color = _G.Color
postog123.LineJoinMode = Enum.LineJoinMode.Round
postog123.Thickness = 2
postog123.Transparency = 0.5
postog123.Enabled = true
postog123.Archivable = true

Menu_Setting.MouseButton1Click:Connect(function()
  if MainPageclose == false then
  MainPageclose = true
  MainPage:TweenPosition(UDim2.new(0, -250, 0, 50), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.8, true)
  else
    MainPageclose = false
  MainPage:TweenPosition(UDim2.new(0, 10, 0, 50), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 0.8, true)
  end
  end)

local StaminaBarUICorner1 = Instance.new("UICorner")
StaminaBarUICorner1.CornerRadius = UDim.new(0, 10)
StaminaBarUICorner1.Name = "StaminaBarUICorner1"
StaminaBarUICorner1.Parent = MainPage


local UserID = game.Players.LocalPlayer.UserId

local ThumbType = Enum.ThumbnailType.HeadShot
local ThumbSize = Enum.ThumbnailSize.Size420x420
local Content = game.Players:GetUserThumbnailAsync(UserID,ThumbType,ThumbSize)

local PlayerInfoFrame = Instance.new("Frame")
local PlayerInfoFrameUICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Lvl = Instance.new("TextLabel")
local Fruit = Instance.new("TextLabel")

local Line = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")

Line.Name = "Line"
Line.Parent = PlayerInfoFrame
Line.AnchorPoint = Vector2.new(0.5, 0.5)
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderSizePixel = 0
Line.BackgroundTransparency = 1
Line.Position = UDim2.new(0.5, 0, 0.311723471, 0)
Line.Size = UDim2.new(0, 300, 0, 1)

UIGradient.Color = ColorSequence.new {
  ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30,30,30)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.68, Color3.fromRGB(170, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(30,30,30))}
UIGradient.Parent = Line

PlayerInfoFrame.Name = "PlayerInfoFrame"
PlayerInfoFrame.Parent = MainPage
PlayerInfoFrame.Active = true
PlayerInfoFrame.BackgroundColor3 = Color3.fromRGB(30,30,30)
PlayerInfoFrame.BackgroundTransparency = 1
PlayerInfoFrame.BorderSizePixel = 0
PlayerInfoFrame.Size = UDim2.new(0, 300, 0, 285)

PlayerInfoFrameUICorner.Name = "PlayerInfoFrameUICorner"
PlayerInfoFrameUICorner.Parent = PlayerInfoFrame

ImageLabel.Parent = PlayerInfoFrame
ImageLabel.Active = true
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 40, 0, 45)
ImageLabel.Size = UDim2.new(0, 70, 0, 70)
ImageLabel.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"

local UserImageCorner = Instance.new("UICorner")
UserImageCorner.CornerRadius = UDim.new(0, 40)
UserImageCorner.Name = "UserImageCorner"
UserImageCorner.Parent = ImageLabel

UICorner.Parent = ImageLabel

Name.Name = "Name"
Name.Parent = PlayerInfoFrame
Name.Active = true
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.22916666, 0, 0, 0)
Name.Size = UDim2.new(0, 150, 0, 27)
Name.Font = Enum.Font.SourceSansBold
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 9.000
Name.Text = game.Players.LocalPlayer.Name.. " ("..game.Players.LocalPlayer.DisplayName..")"
Name.TextXAlignment = Enum.TextXAlignment.Left

local HealthBar = Instance.new("Frame")
local HealthBarUICorner = Instance.new("UICorner")
local HealthText = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local LineHealth = Instance.new("Frame")

HealthBar.Name = "HealthBar"
HealthBar.Parent = PlayerInfoFrame
HealthBar.BackgroundColor3 = Color3.fromRGB(40,40,40)
HealthBar.BorderSizePixel = 0
HealthBar.BackgroundTransparency = 1
HealthBar.Position = UDim2.new(0.0187500007, 0, 0.340836018, 0)
HealthBar.Size = UDim2.new(0, 150, 0, 45)

HealthBarUICorner.CornerRadius = UDim.new(0, 4)
HealthBarUICorner.Name = "HealthBarUICorner"
HealthBarUICorner.Parent = HealthBar

HealthText.Name = "HealthText"
HealthText.Parent = HealthBar
HealthText.Active = true
HealthText.BackgroundColor3 = _G.Color
HealthText.BackgroundTransparency = 1.000
HealthText.Position = UDim2.new(0.0260000005, 0, 0.100000001, 0)
HealthText.Size = UDim2.new(0, 300, 0, 22)
HealthText.Font = Enum.Font.SourceSansBold
HealthText.Text = "N/A"
HealthText.TextColor3 = _G.Color
HealthText.TextSize = 12.000
HealthText.TextWrapped = true
HealthText.TextXAlignment = Enum.TextXAlignment.Left

Line.Name = "Line"
Line.Parent = HealthBar
Line.AnchorPoint = Vector2.new(0.5, 0.5)
Line.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.498908311, 0, 0.766666651, 0)
Line.Size = UDim2.new(0, 150, 0, 5)

LineHealth.Name = "LineHealth"
LineHealth.Parent = Line
LineHealth.BackgroundColor3 = _G.Color
LineHealth.BorderSizePixel = 0
LineHealth.Size = UDim2.new(0, 200, 0, 5)

Lvl.Name = "Time"
Lvl.Parent = PlayerInfoFrame
Lvl.Active = true
Lvl.BackgroundColor3 = _G.Color
Lvl.BackgroundTransparency = 1.000
Lvl.Position = UDim2.new(0, 85, 0.113057934, 0)
Lvl.Size = UDim2.new(0, 200, 0, 27)
Lvl.TextTransparency = 0
Lvl.Font = Enum.Font.SourceSansBold
Lvl.TextColor3 = _G.Color
Lvl.TextSize = 11.000
Lvl.TextXAlignment = Enum.TextXAlignment.Left

Fruit.Name = "UsedTime"
Fruit.Parent = PlayerInfoFrame
Fruit.Active = true
Fruit.BackgroundColor3 = _G.Color
Fruit.BackgroundTransparency = 1.000
Fruit.Position = UDim2.new(0, 85, 0.199820146, 0)
Fruit.Size = UDim2.new(0, 200, 0, 27)
Fruit.Font = Enum.Font.SourceSansBold
Fruit.TextTransparency = 0
Fruit.TextColor3 = _G.Color
Fruit.TextSize = 11.000
Fruit.TextXAlignment = Enum.TextXAlignment.Left

local StaminaBar = Instance.new("Frame")
local StaminaBarUICorner = Instance.new("UICorner")
local StaminaText = Instance.new("TextLabel")
local StaminaLine = Instance.new("Frame")
local LineStamina = Instance.new("Frame")

StaminaBar.Name = "StaminaBar"
StaminaBar.Parent = PlayerInfoFrame
StaminaBar.BackgroundColor3 = Color3.fromRGB(40,40,40)
StaminaBar.BorderSizePixel = 0
StaminaBar.BackgroundTransparency = 1
StaminaBar.Position = UDim2.new(0.0166666675, 0, 0.50803858, 0)
StaminaBar.Size = UDim2.new(0, 150, 0, 45)

StaminaBarUICorner.CornerRadius = UDim.new(0, 4)
StaminaBarUICorner.Name = "StaminaBarUICorner"
StaminaBarUICorner.Parent = StaminaBar

StaminaText.Name = "StaminaText"
StaminaText.Parent = StaminaBar
StaminaText.Active = true
StaminaText.BackgroundColor3 = _G.Color
StaminaText.BackgroundTransparency = 1.000
StaminaText.Position = UDim2.new(0.0260000005, 0, 0.100000001, 0)
StaminaText.Size = UDim2.new(0, 300, 0, 22)
StaminaText.Font = Enum.Font.SourceSansBold
StaminaText.Text = "N/A"
StaminaText.TextColor3 = _G.Color
StaminaText.TextSize = 12.000
StaminaText.TextWrapped = true
StaminaText.TextXAlignment = Enum.TextXAlignment.Left

StaminaLine.Name = "StaminaLine"
StaminaLine.Parent = StaminaBar
StaminaLine.AnchorPoint = Vector2.new(0.5, 0.5)
StaminaLine.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
StaminaLine.BorderSizePixel = 0
StaminaLine.Position = UDim2.new(0.498908311, 0, 0.766666651, 0)
StaminaLine.Size = UDim2.new(0, 150, 0, 5)

LineStamina.Name = "LineStamina"
LineStamina.Parent = StaminaLine
LineStamina.BackgroundColor3 = _G.Color
LineStamina.BorderSizePixel = 0
LineStamina.Size = UDim2.new(0, 200, 0, 5)

local Beli = Instance.new("TextLabel")
local Fragment = Instance.new("TextLabel")
local Bounty = Instance.new("TextLabel")

Beli.Name = "Beli"
Beli.Parent = PlayerInfoFrame
Beli.Active = true
Beli.BackgroundColor3 = _G.Color
Beli.BackgroundTransparency = 1.000
Beli.Position = UDim2.new(0.018749997, 0, 0.62897433, 0)
Beli.Size = UDim2.new(0, 200, 0, 27)
Beli.Font = Enum.Font.SourceSansBold
Beli.TextColor3 = _G.Color
Beli.TextSize = 12.000
Beli.TextXAlignment = Enum.TextXAlignment.Left

Fragment.Name = "Fragment"
Fragment.Parent = PlayerInfoFrame
Fragment.Active = true
Fragment.BackgroundColor3 = _G.Color
Fragment.BackgroundTransparency = 1.000
Fragment.Position = UDim2.new(0.018749997, 0, 0.695191059, 0)
Fragment.Size = UDim2.new(0, 200, 0, 25)
Fragment.Font = Enum.Font.SourceSansBold
Fragment.TextColor3 = _G.Color
Fragment.TextSize = 12.000
Fragment.TextXAlignment = Enum.TextXAlignment.Left

Bounty.Name = "Bounty"
Bounty.Parent = PlayerInfoFrame
Bounty.Active = true
Bounty.BackgroundColor3 = _G.Color
Bounty.BackgroundTransparency = 1.000
Bounty.Position = UDim2.new(0.018749997, 0, 0.752607787, 0)
Bounty.Size = UDim2.new(0, 200, 0, 27)
Bounty.Font = Enum.Font.SourceSansBold
Bounty.TextColor3 = _G.Color
Bounty.TextSize = 12.000
Bounty.Text = "Exploit: ".. identifyexecutor()
Bounty.TextXAlignment = Enum.TextXAlignment.Left

spawn(function()
  while wait(0.001) do
      local character = game.Players.LocalPlayer.Character
      if character and character:FindFirstChild("Humanoid") then
        local humanoid = character.Humanoid
        Beli.Text = "Beli: " .. math.floor(game.Players.LocalPlayer.Data.Beli.Value)
        Fragment.Text = "Fragment: " .. math.floor(game.Players.LocalPlayer.Data.Fragments.Value)
        StaminaText.Text = "Health: " .. humanoid.Health .. "/" .. humanoid.MaxHealth
        local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        HealthText.Text = "Postion: " .. string.format("%.0f", rootPart.Position.X) .. ", " .. string.format("%.0f", rootPart.Position.Y) .. ", " .. string.format("%.0f", rootPart.Position.Z)
      end
  end
end)

spawn(function()
  while wait(0.001) do
    pcall(function()
      game:GetService("TweenService"):Create(
        LineHealth,
        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {
          Size = UDim2.new(game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth, 0, 0, 5)
        }
      ):Play()
      
      game:GetService("TweenService"):Create(
        LineStamina,
        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {
          Size = UDim2.new(game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth, 0, 0, 5)
        }
      ):Play()
    end)
  end
end)

spawn(function()
  local startTime = tick()
  while true do
      local elapsedTime = tick() - startTime
      local roundedTime = math.floor(elapsedTime)
      Fruit.Text = "Used Time: " .. roundedTime .. " Seconds"
      Lvl.Text = "Time:" .. os.date(" %H:%M:%S - %d/%m/2023")
    wait(0.001)
  end
end)


local Settingcorner = Instance.new("UICorner")
Settingcorner.CornerRadius = UDim.new(0, 60)
Settingcorner.Name = "UserImageCorner"
Settingcorner.Parent = Settings

local BtnStroke = Instance.new("UIStroke")
BtnStroke.Name = "BtnStroke"
BtnStroke.Parent = Settings
BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BtnStroke.Color = _G.Color
BtnStroke.LineJoinMode = Enum.LineJoinMode.Round
BtnStroke.Thickness = 0
BtnStroke.Transparency = 0
BtnStroke.Enabled = true
BtnStroke.Archivable = true

local SettingFrame = Instance.new("Frame")
SettingFrame.Name = "SettingFrame"
SettingFrame.Parent = Main
SettingFrame.ClipsDescendants = true
SettingFrame.AnchorPoint = Vector2.new(0,0)
SettingFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
SettingFrame.Position = UDim2.new(0, -250, 0, 50)
SettingFrame.BackgroundTransparency = 0
SettingFrame.Size = UDim2.new(0, 210, 0, 240)
SettingFrame.ZIndex = 6

local SettingStroke = Instance.new("UIStroke")

SettingStroke.Name = "UIStroke"
SettingStroke.Parent = SettingFrame
SettingStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
SettingStroke.Color = _G.Color
SettingStroke.LineJoinMode = Enum.LineJoinMode.Round
SettingStroke.Thickness = 2
SettingStroke.Transparency = 0.5
SettingStroke.Enabled = true
SettingStroke.Archivable = true

Settings.MouseButton1Click:Connect(function()
  if SettingFrameclose == false then
  SettingFrameclose = true
  SettingFrame:TweenPosition(UDim2.new(0, -250, 0, 50), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.8, true)
  else
    SettingFrameclose = false
  SettingFrame:TweenPosition(UDim2.new(0, 10, 0, 50), Enum.EasingDirection.Out, Enum.EasingStyle.Bounce, 0.8, true)
  end
  end)

local SettingCornerrr = Instance.new("UICorner")
SettingCornerrr.CornerRadius = UDim.new(0, 10)
SettingCornerrr.Name = "SettingCornerrr"
SettingCornerrr.Parent = SettingFrame

local StaminaText = Instance.new("TextLabel")
StaminaText.Name = "StaminaText"
StaminaText.Parent = SettingFrame
StaminaText.Active = true
StaminaText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StaminaText.BackgroundTransparency = 1.000
StaminaText.Position = UDim2.new(0.0260000005, 0, 0.00000001, 0)
StaminaText.Size = UDim2.new(0, 200, 0, 22)
StaminaText.Font = Enum.Font.SourceSansBold
StaminaText.Text = "Menu V3VN"
StaminaText.TextColor3 = _G.Color
StaminaText.TextSize = 12.000
StaminaText.TextWrapped = true
StaminaText.TextXAlignment = Enum.TextXAlignment.Center

local Butn2 = Instance.new("Frame")
local Ui2 = Instance.new("UICorner")
local Text2 = Instance.new("TextLabel")
local Textbtn2 = Instance.new("TextButton")

Butn2.Name = "Butn2"
Butn2.Parent = SettingFrame
Butn2.BackgroundColor3 = _G.Color
Butn2.Size = UDim2.new(0, 190, 0, 30)
Butn2.Position = UDim2.new(0, 10, 0, 40)
Butn2.ZIndex = 16

Ui2.CornerRadius = UDim.new(0, 4)
Ui2.Parent = Butn2

Text2.Parent = Butn2
Text2.AnchorPoint = Vector2.new(0.5, 0.5)
Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text2.BackgroundTransparency = 1.000
Text2.Position = UDim2.new(0.5, 0, 0.5, 0)
Text2.Size = UDim2.new(0, 40, 0, 12)
Text2.ZIndex = 16
Text2.Font = Enum.Font.SourceSansBold
Text2.Text = "Bay"
Text2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text2.TextSize = 14.000

Textbtn2.Parent = Butn2
Textbtn2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Textbtn2.BackgroundTransparency = 1.000
Textbtn2.BorderSizePixel = 0
Textbtn2.ClipsDescendants = true
Textbtn2.Size = UDim2.new(1, 0, 1, 0)
Textbtn2.ZIndex = 16
Textbtn2.AutoButtonColor = false
Textbtn2.Font = Enum.Font.SourceSansBold
Textbtn2.Text = ""
Textbtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
Textbtn2.TextSize = 14.000

Textbtn2.MouseEnter:Connect(function()
  TweenService:Create(
    Butn2,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0.5
    }
  ):Play()
  end)

Textbtn2.MouseLeave:Connect(function()
  TweenService:Create(
    Butn2,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0
    }
  ):Play()
  end)

Textbtn2.MouseButton1Click:Connect(function()
  CircleClick(Butn2, Mouse.X, Mouse.Y)
  Text2.TextSize = 0
  TweenService:Create(
    Text2,
    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextSize = 12
    }
  ):Play()
  local main = Instance.new("ScreenGui")
  local Frame = Instance.new("Frame")
  local up = Instance.new("TextButton")
  local down = Instance.new("TextButton")
  local onof = Instance.new("TextButton")
  local TextLabel = Instance.new("TextLabel")
  local plus = Instance.new("TextButton")
  local speed = Instance.new("TextLabel")
  local mine = Instance.new("TextButton")
  local closebutton = Instance.new("TextButton")
  local mini = Instance.new("TextButton")
  local mini2 = Instance.new("TextButton")
  
  main.Name = "main"
  main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
  main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  main.ResetOnSpawn = false
  
  Frame.Parent = main
  Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
  Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
  Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
  Frame.Size = UDim2.new(0, 190, 0, 57)
  
  up.Name = "up"
  up.Parent = Frame
  up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
  up.Size = UDim2.new(0, 44, 0, 28)
  up.Font = Enum.Font.SourceSans
  up.Text = "UP"
  up.TextColor3 = Color3.fromRGB(0, 0, 0)
  up.TextSize = 14.000
  
  down.Name = "down"
  down.Parent = Frame
  down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
  down.Position = UDim2.new(0, 0, 0.491228074, 0)
  down.Size = UDim2.new(0, 44, 0, 28)
  down.Font = Enum.Font.SourceSans
  down.Text = "DOWN"
  down.TextColor3 = Color3.fromRGB(0, 0, 0)
  down.TextSize = 14.000
  
  onof.Name = "onof"
  onof.Parent = Frame
  onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
  onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
  onof.Size = UDim2.new(0, 56, 0, 28)
  onof.Font = Enum.Font.SourceSans
  onof.Text = "FLY"
  onof.TextColor3 = Color3.fromRGB(0, 0, 0)
  onof.TextSize = 14.000
  
  TextLabel.Parent = Frame
  TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
  TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
  TextLabel.Size = UDim2.new(0, 100, 0, 28)
  TextLabel.Font = Enum.Font.SourceSans
  TextLabel.Text = "VN Hub"
  TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
  TextLabel.TextScaled = true
  TextLabel.TextSize = 14.000
  TextLabel.TextWrapped = true
  
  plus.Name = "plus"
  plus.Parent = Frame
  plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
  plus.Position = UDim2.new(0.231578946, 0, 0, 0)
  plus.Size = UDim2.new(0, 45, 0, 28)
  plus.Font = Enum.Font.SourceSans
  plus.Text = "+"
  plus.TextColor3 = Color3.fromRGB(0, 0, 0)
  plus.TextScaled = true
  plus.TextSize = 14.000
  plus.TextWrapped = true
  
  speed.Name = "speed"
  speed.Parent = Frame
  speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
  speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
  speed.Size = UDim2.new(0, 44, 0, 28)
  speed.Font = Enum.Font.SourceSans
  speed.Text = "1"
  speed.TextColor3 = Color3.fromRGB(0, 0, 0)
  speed.TextScaled = true
  speed.TextSize = 14.000
  speed.TextWrapped = true
  
  mine.Name = "mine"
  mine.Parent = Frame
  mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
  mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
  mine.Size = UDim2.new(0, 45, 0, 29)
  mine.Font = Enum.Font.SourceSans
  mine.Text = "-"
  mine.TextColor3 = Color3.fromRGB(0, 0, 0)
  mine.TextScaled = true
  mine.TextSize = 14.000
  mine.TextWrapped = true
  
  closebutton.Name = "Close"
  closebutton.Parent = main.Frame
  closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
  closebutton.Font = "SourceSans"
  closebutton.Size = UDim2.new(0, 45, 0, 28)
  closebutton.Text = "X"
  closebutton.TextSize = 30
  closebutton.Position =  UDim2.new(0, 0, -1, 27)
  
  mini.Name = "minimize"
  mini.Parent = main.Frame
  mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
  mini.Font = "SourceSans"
  mini.Size = UDim2.new(0, 45, 0, 28)
  mini.Text = "-"
  mini.TextSize = 40
  mini.Position = UDim2.new(0, 44, -1, 27)
  
  mini2.Name = "minimize2"
  mini2.Parent = main.Frame
  mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
  mini2.Font = "SourceSans"
  mini2.Size = UDim2.new(0, 45, 0, 28)
  mini2.Text = "+"
  mini2.TextSize = 40
  mini2.Position = UDim2.new(0, 44, -1, 57)
  mini2.Visible = false
  
  speeds = 1
  
  local speaker = game:GetService("Players").LocalPlayer
  
  local chr = game.Players.LocalPlayer.Character
  local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
  
  nowe = false
  
  Frame.Active = true -- main = gui
  Frame.Draggable = true
  
  onof.MouseButton1Down:connect(function()
  
    if nowe == true then
      nowe = false
  
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
      speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    else 
      nowe = true
  
  
  
      for i = 1, speeds do
        spawn(function()
  
          local hb = game:GetService("RunService").Heartbeat	
  
  
          tpwalking = true
          local chr = game.Players.LocalPlayer.Character
          local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
          while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
              chr:TranslateBy(hum.MoveDirection)
            end
          end
  
        end)
      end
      game.Players.LocalPlayer.Character.Animate.Disabled = true
      local Char = game.Players.LocalPlayer.Character
      local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
  
      for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:AdjustSpeed(0)
      end
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
      speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
    end
  
  
  
  
    if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
  
  
  
      local plr = game.Players.LocalPlayer
      local torso = plr.Character.Torso
      local flying = true
      local deb = true
      local ctrl = {f = 0, b = 0, l = 0, r = 0}
      local lastctrl = {f = 0, b = 0, l = 0, r = 0}
      local maxspeed = 50
      local speed = 0
  
  
      local bg = Instance.new("BodyGyro", torso)
      bg.P = 9e4
      bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
      bg.cframe = torso.CFrame
      local bv = Instance.new("BodyVelocity", torso)
      bv.velocity = Vector3.new(0,0.1,0)
      bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
      if nowe == true then
        plr.Character.Humanoid.PlatformStand = true
      end
      while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
        game:GetService("RunService").RenderStepped:Wait()
  
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
          speed = speed+.5+(speed/maxspeed)
          if speed > maxspeed then
            speed = maxspeed
          end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
          speed = speed-1
          if speed < 0 then
            speed = 0
          end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
          lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        else
          bv.velocity = Vector3.new(0,0,0)
        end
        --	game.Players.LocalPlayer.Character.Animate.Disabled = true
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
      end
      ctrl = {f = 0, b = 0, l = 0, r = 0}
      lastctrl = {f = 0, b = 0, l = 0, r = 0}
      speed = 0
      bg:Destroy()
      bv:Destroy()
      plr.Character.Humanoid.PlatformStand = false
      game.Players.LocalPlayer.Character.Animate.Disabled = false
      tpwalking = false
  
  
  
  
    else
      local plr = game.Players.LocalPlayer
      local UpperTorso = plr.Character.UpperTorso
      local flying = true
      local deb = true
      local ctrl = {f = 0, b = 0, l = 0, r = 0}
      local lastctrl = {f = 0, b = 0, l = 0, r = 0}
      local maxspeed = 50
      local speed = 0
  
  
      local bg = Instance.new("BodyGyro", UpperTorso)
      bg.P = 9e4
      bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
      bg.cframe = UpperTorso.CFrame
      local bv = Instance.new("BodyVelocity", UpperTorso)
      bv.velocity = Vector3.new(0,0.1,0)
      bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
      if nowe == true then
        plr.Character.Humanoid.PlatformStand = true
      end
      while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
        wait()
  
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
          speed = speed+.5+(speed/maxspeed)
          if speed > maxspeed then
            speed = maxspeed
          end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
          speed = speed-1
          if speed < 0 then
            speed = 0
          end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
          lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        else
          bv.velocity = Vector3.new(0,0,0)
        end
  
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
      end
      ctrl = {f = 0, b = 0, l = 0, r = 0}
      lastctrl = {f = 0, b = 0, l = 0, r = 0}
      speed = 0
      bg:Destroy()
      bv:Destroy()
      plr.Character.Humanoid.PlatformStand = false
      game.Players.LocalPlayer.Character.Animate.Disabled = false
      tpwalking = false
  
  
  
    end
  
  
  
  
  
  end)
  
  local tis
  
  up.MouseButton1Down:connect(function()
    tis = up.MouseEnter:connect(function()
      while tis do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
      end
    end)
  end)
  
  up.MouseLeave:connect(function()
    if tis then
      tis:Disconnect()
      tis = nil
    end
  end)
  
  local dis
  
  down.MouseButton1Down:connect(function()
    dis = down.MouseEnter:connect(function()
      while dis do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
      end
    end)
  end)
  
  down.MouseLeave:connect(function()
    if dis then
      dis:Disconnect()
      dis = nil
    end
  end)
  
  
  game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false
  
  end)
  
  
  plus.MouseButton1Down:connect(function()
    speeds = speeds + 1
    speed.Text = speeds
    if nowe == true then
  
  
      tpwalking = false
      for i = 1, speeds do
        spawn(function()
  
          local hb = game:GetService("RunService").Heartbeat	
  
  
          tpwalking = true
          local chr = game.Players.LocalPlayer.Character
          local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
          while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
              chr:TranslateBy(hum.MoveDirection)
            end
          end
  
        end)
      end
    end
  end)
  mine.MouseButton1Down:connect(function()
    if speeds == 1 then
      speed.Text = 'Cannot Be Less Than 1'
      wait(1)
      speed.Text = speeds
    else
      speeds = speeds - 1
      speed.Text = speeds
      if nowe == true then
        tpwalking = false
        for i = 1, speeds do
          spawn(function()
  
            local hb = game:GetService("RunService").Heartbeat	
  
  
            tpwalking = true
            local chr = game.Players.LocalPlayer.Character
            local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
            while tpwalking and hb:Wait() and chr and hum and hum.Parent do
              if hum.MoveDirection.Magnitude > 0 then
                chr:TranslateBy(hum.MoveDirection)
              end
            end
  
          end)
        end
      end
    end
  end)
  
  closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
  end)
  
  mini.MouseButton1Click:Connect(function()
    up.Visible = false
    down.Visible = false
    onof.Visible = false
    plus.Visible = false
    speed.Visible = false
    mine.Visible = false
    mini.Visible = false
    mini2.Visible = true
    main.Frame.BackgroundTransparency = 1
    closebutton.Position =  UDim2.new(0, 0, -1, 57)
  end)
  
  mini2.MouseButton1Click:Connect(function()
    up.Visible = true
    down.Visible = true
    onof.Visible = true
    plus.Visible = true
    speed.Visible = true
    mine.Visible = true
    mini.Visible = true
    mini2.Visible = false
    main.Frame.BackgroundTransparency = 0 
    closebutton.Position =  UDim2.new(0, 0, -1, 27)
  end)
  end)

local Butn3 = Instance.new("Frame")
local Ui3 = Instance.new("UICorner")
local Textlavel3 = Instance.new("TextLabel")
local Texbob3 = Instance.new("TextButton")

Butn3.Name = "Butn3"
Butn3.Parent = SettingFrame
Butn3.BackgroundColor3 = _G.Color
Butn3.Size = UDim2.new(0, 190, 0, 30)
Butn3.Position = UDim2.new(0, 10, 0, 80)
Butn3.ZIndex = 16

Ui3.CornerRadius = UDim.new(0, 4)
Ui3.Parent = Butn3

Textlavel3.Parent = Butn3
Textlavel3.AnchorPoint = Vector2.new(0.5, 0.5)
Textlavel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textlavel3.BackgroundTransparency = 1.000
Textlavel3.Position = UDim2.new(0.5, 0, 0.5, 0)
Textlavel3.Size = UDim2.new(0, 40, 0, 12)
Textlavel3.ZIndex = 16
Textlavel3.Font = Enum.Font.SourceSansBold
Textlavel3.Text = "Esp"
Textlavel3.TextColor3 = Color3.fromRGB(255, 255, 255)
Textlavel3.TextSize = 14.000

Texbob3.Parent = Butn3
Texbob3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Texbob3.BackgroundTransparency = 1.000
Texbob3.BorderSizePixel = 0
Texbob3.ClipsDescendants = true
Texbob3.Size = UDim2.new(1, 0, 1, 0)
Texbob3.ZIndex = 16
Texbob3.AutoButtonColor = false
Texbob3.Font = Enum.Font.SourceSansBold
Texbob3.Text = ""
Texbob3.TextColor3 = Color3.fromRGB(255, 255, 255)
Texbob3.TextSize = 14.000

Texbob3.MouseEnter:Connect(function()
  TweenService:Create(
    Butn3,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0.5
    }
  ):Play()
  end)

Texbob3.MouseLeave:Connect(function()
  TweenService:Create(
    Butn3,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0
    }
  ):Play()
  end)

Texbob3.MouseButton1Click:Connect(function()
  CircleClick(Butn3, Mouse.X, Mouse.Y)
  Textlavel3.TextSize = 0
  TweenService:Create(
    Textlavel3,
    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextSize = 12
    }
  ):Play()
  end)

local Buton4 = Instance.new("Frame")
local Ui4 = Instance.new("UICorner")
local Textlval3 = Instance.new("TextLabel")
local Texbslb4 = Instance.new("TextButton")

Buton4.Name = "Buton4"
Buton4.Parent = SettingFrame
Buton4.BackgroundColor3 = _G.Color
Buton4.Size = UDim2.new(0, 190, 0, 30)
Buton4.Position = UDim2.new(0, 10, 0, 120)
Buton4.ZIndex = 16

Ui4.CornerRadius = UDim.new(0, 4)
Ui4.Parent = Buton4

Textlval3.Parent = Buton4
Textlval3.AnchorPoint = Vector2.new(0.5, 0.5)
Textlval3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textlval3.BackgroundTransparency = 1.000
Textlval3.Position = UDim2.new(0.5, 0, 0.5, 0)
Textlval3.Size = UDim2.new(0, 40, 0, 12)
Textlval3.ZIndex = 16
Textlval3.Font = Enum.Font.SourceSansBold
Textlval3.Text = "KeyBoard"
Textlval3.TextColor3 = Color3.fromRGB(255, 255, 255)
Textlval3.TextSize = 14.000

Texbslb4.Parent = Buton4
Texbslb4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Texbslb4.BackgroundTransparency = 1.000
Texbslb4.BorderSizePixel = 0
Texbslb4.ClipsDescendants = true
Texbslb4.Size = UDim2.new(1, 0, 1, 0)
Texbslb4.ZIndex = 16
Texbslb4.AutoButtonColor = false
Texbslb4.Font = Enum.Font.SourceSansBold
Texbslb4.Text = ""
Texbslb4.TextColor3 = Color3.fromRGB(255, 255, 255)
Texbslb4.TextSize = 14.000

Texbslb4.MouseEnter:Connect(function()
  TweenService:Create(
    Buton4,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0.5
    }
  ):Play()
  end)

Texbslb4.MouseLeave:Connect(function()
  TweenService:Create(
    Buton4,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0
    }
  ):Play()
  end)

Texbslb4.MouseButton1Click:Connect(function()
  CircleClick(Buton4, Mouse.X, Mouse.Y)
  Textlval3.TextSize = 0
  TweenService:Create(
    Textlval3,
    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextSize = 12
    }
  ):Play()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  end)
  
  local Buton5 = Instance.new("Frame")
local Ui5 = Instance.new("UICorner")
local Textlval4 = Instance.new("TextLabel")
local Texbslb5 = Instance.new("TextButton")

Buton5.Name = "Buton5"
Buton5.Parent = SettingFrame
Buton5.BackgroundColor3 = _G.Color
Buton5.Size = UDim2.new(0, 190, 0, 30)
Buton5.Position = UDim2.new(0, 10, 0, 160)
Buton5.ZIndex = 16

Ui5.CornerRadius = UDim.new(0, 4)
Ui5.Parent = Buton5

Textlval4.Parent = Buton5
Textlval4.AnchorPoint = Vector2.new(0.5, 0.5)
Textlval4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textlval4.BackgroundTransparency = 1.000
Textlval4.Position = UDim2.new(0.5, 0, 0.5, 0)
Textlval4.Size = UDim2.new(0, 40, 0, 12)
Textlval4.ZIndex = 16
Textlval4.Font = Enum.Font.SourceSansBold
Textlval4.Text = "INFNITE YEILD"
Textlval4.TextColor3 = Color3.fromRGB(255, 255, 255)
Textlval4.TextSize = 14.000

Texbslb5.Parent = Buton5
Texbslb5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Texbslb5.BackgroundTransparency = 1.000
Texbslb5.BorderSizePixel = 0
Texbslb5.ClipsDescendants = true
Texbslb5.Size = UDim2.new(1, 0, 1, 0)
Texbslb5.ZIndex = 16
Texbslb5.AutoButtonColor = false
Texbslb5.Font = Enum.Font.SourceSansBold
Texbslb5.Text = ""
Texbslb5.TextColor3 = Color3.fromRGB(255, 255, 255)
Texbslb5.TextSize = 14.000

Texbslb5.MouseEnter:Connect(function()
  TweenService:Create(
    Buton5,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0.5
    }
  ):Play()
  end)

Texbslb5.MouseLeave:Connect(function()
  TweenService:Create(
    Buton5,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0
    }
  ):Play()
  end)

Texbslb5.MouseButton1Click:Connect(function()
  CircleClick(Buton5, Mouse.X, Mouse.Y)
  Textlval4.TextSize = 0
  TweenService:Create(
    Textlval4,
    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextSize = 12
    }
  ):Play()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() 
  end)
  
  local Buton6 = Instance.new("Frame")
local Ui6 = Instance.new("UICorner")
local Textlval5 = Instance.new("TextLabel")
local Texbslb6 = Instance.new("TextButton")

Buton6.Name = "Buton6"
Buton6.Parent = SettingFrame
Buton6.BackgroundColor3 = _G.Color
Buton6.Size = UDim2.new(0, 190, 0, 30)
Buton6.Position = UDim2.new(0, 10, 0, 200)
Buton6.ZIndex = 16

Ui6.CornerRadius = UDim.new(0, 4)
Ui6.Parent = Buton6

Textlval5.Parent = Buton6
Textlval5.AnchorPoint = Vector2.new(0.5, 0.5)
Textlval5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textlval5.BackgroundTransparency = 1.000
Textlval5.Position = UDim2.new(0.5, 0, 0.5, 0)
Textlval5.Size = UDim2.new(0, 40, 0, 12)
Textlval5.ZIndex = 16
Textlval5.Font = Enum.Font.SourceSansBold
Textlval5.Text = "ẨN LIBRARY"
Textlval5.TextColor3 = Color3.fromRGB(255, 255, 255)
Textlval5.TextSize = 14.000

Texbslb6.Parent = Buton6
Texbslb6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Texbslb6.BackgroundTransparency = 1.000
Texbslb6.BorderSizePixel = 0
Texbslb6.ClipsDescendants = true
Texbslb6.Size = UDim2.new(1, 0, 1, 0)
Texbslb6.ZIndex = 16
Texbslb6.AutoButtonColor = false
Texbslb6.Font = Enum.Font.SourceSansBold
Texbslb6.Text = ""
Texbslb6.TextColor3 = Color3.fromRGB(255, 255, 255)
Texbslb6.TextSize = 14.000

Texbslb6.MouseEnter:Connect(function()
  TweenService:Create(
    Buton6,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0.5
    }
  ):Play()
  end)

Texbslb6.MouseLeave:Connect(function()
  TweenService:Create(
    Buton6,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0
    }
  ):Play()
  end)

Texbslb6.MouseButton1Click:Connect(function()
  CircleClick(Buton6, Mouse.X, Mouse.Y)
  Textlval5.TextSize = 0
  TweenService:Create(
    Textlval5,
    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextSize = 12
    }
  ):Play()
           UI:Destroy()
           ThunderScreen:Destroy()
  end)
  
dragify(ClickFrame, Main)
local tabs = {}
local S = false
function tabs:Tab(Name, icon)
local FrameTab = Instance.new("Frame")
local Tab = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_Tab = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
FrameTab.Name = "FrameTab"
FrameTab.Parent = Tab
FrameTab.BackgroundColor3 = Color3.fromRGB(255,255,255)
FrameTab.Position = UDim2.new(0.3, 0, 0.9, 0)
FrameTab.Size = UDim2.new(0, 0, 0, 0)
FrameTab.BackgroundTransparency = 0
FrameTab.Visible = false


UICorner_Tab.CornerRadius = UDim.new(0, 3)
UICorner_Tab.Parent = FrameTab
Tab.Name = "Tab"
Tab.Parent = TabContainer
Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab.Size = UDim2.new(0, 114, 0, 30)
Tab.BackgroundTransparency = 0
Tab.Text = ""
UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = Tab
local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Color = ColorSequence.new {
  ColorSequenceKeypoint.new(0.00, Color3.fromRGB(29, 29, 29)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(50, 50, 50))}
UIGradient2.Parent = Tab

local ImageLabel1 = Instance.new("ImageLabel")
ImageLabel1.Name = "ImageLabel"
ImageLabel1.Parent = Tab
ImageLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel1.BackgroundTransparency = 1.000
ImageLabel1.Position = UDim2.new(0, 5, 0.2, 0)
ImageLabel1.Size = UDim2.new(0, 20, 0, 20)
ImageLabel1.Image = "rbxassetid://" .. tostring(icon)
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = Tab
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0, 5, 0.2, 0)
ImageLabel.Size = UDim2.new(0, 20, 0, 20)
ImageLabel.Image = "rbxassetid://"

TextLabel.Parent = Tab
TextLabel.Text = Name
local UiToggle_UiStroke901 = Instance.new("UIStroke")
UiToggle_UiStroke901.Color = _G.Color
UiToggle_UiStroke901.Thickness = 2
UiToggle_UiStroke901.Name = "UiToggle_UiStroke901"
UiToggle_UiStroke901.Parent = Tab
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.252105269, 0, 0.100000001, 0)
TextLabel.Size = UDim2.new(0, 10, 0, 27)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12.300
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextTransparency = 0.200
TextLabel.Text = Name

local Page = Instance.new("ScrollingFrame")
local Left = Instance.new("ScrollingFrame")
local Right = Instance.new("ScrollingFrame")
local UIListLayout_5 = Instance.new("UIListLayout")
local UIPadding_5 = Instance.new("UIPadding")
Page.Name = "Page"
Page.Parent = Bottom
Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Page.BackgroundTransparency = 1.000
Page.Size = UDim2.new(0, 500, 0, 300)
Page.ScrollBarThickness = 0
Page.CanvasSize = UDim2.new(0, 0, 0, 0)
Page.Visible = false

Left.Name = "Left"
Left.Parent = Page
Left.Active = true
Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Left.BackgroundTransparency = 1
Left.Size = UDim2.new(0, 240, 0, 260)
Left.ScrollBarThickness = 0
Left.CanvasSize = UDim2.new(0, 0, 0, 0)
Right.Name = "Right"
Right.Parent = Page
Right.Active = true
Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right.BackgroundTransparency = 1
Right.Size = UDim2.new(0, 240, 0, 260)
Right.ScrollBarThickness = 0
Right.CanvasSize = UDim2.new(0, 0, 0, 0)
local LeftList = Instance.new("UIListLayout")
local RightList = Instance.new("UIListLayout")
LeftList.Parent = Left
LeftList.SortOrder = Enum.SortOrder.LayoutOrder
LeftList.Padding = UDim.new(0, 5)
RightList.Parent = Right
RightList.SortOrder = Enum.SortOrder.LayoutOrder
RightList.Padding = UDim.new(0, 5)
UIListLayout_5.Parent = Page
UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 13)
UIPadding_5.Parent = Page
if S == false then
S = true
Page.Visible = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextTransparency = 0
ImageLabel.ImageTransparency = 0
ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
FrameTab.Size = UDim2.new(0, 40, 0, 2)
FrameTab.Visible = true
end

Tab.MouseButton1Click:Connect(
  function()
  for _, x in next, TabContainer:GetChildren() do
  if x.Name == "Tab" then
  TweenService:Create(
    x.TextLabel,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      TextColor3 = Color3.fromRGB(255, 255, 255)}
  ):Play()
  TweenService:Create(
    x.TextLabel,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      TextTransparency = 0.2
    }
  ):Play()
  TweenService:Create(
    x.FrameTab,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      Size = UDim2.new(0, 0, 0, 2)}
  ):Play()
  for index, y in next, Bottom:GetChildren() do
  TweenService:Create(
    y,
    TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      Position = UDim2.new(0,1500,0,0)}
  ):Play()
  y.Visible = false
  end
  x.FrameTab.Visible = false
  end
  end
  TweenService:Create(
    TextLabel,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      TextColor3 = _G.Color
    }
  ):Play()
  TweenService:Create(
    TextLabel,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      TextTransparency = 0
    }
  ):Play()
  FrameTab.Visible = true
  TweenService:Create(
    FrameTab,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      Size = UDim2.new(0, 40, 0, 2)}
  ):Play()
  Page.Position = UDim2.new(0,0,0,1500)
  TweenService:Create(
    Page,
    TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      Position = UDim2.new(0,0,0,0)}
  ):Play()
  Page.Visible = true
  end
)

local function GetType(value)
if value == 1 then
return Left
elseif value == 2 then
return Right
else
  return Left
end
end

game:GetService("RunService").Stepped:Connect(function()
  pcall(function()
    Right.CanvasSize = UDim2.new(0,0,0,RightList.AbsoluteContentSize.Y + 5)
    Left.CanvasSize = UDim2.new(0,0,0,LeftList.AbsoluteContentSize.Y + 5)
    end)
  end)

local sections = {}
function sections:CraftPage(side)

if side == nil then
return Left
end
local Section = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Top_2 = Instance.new("Frame")
local Line = Instance.new("Frame")
local Sectionname = Instance.new("TextLabel")
local SectionContainer = Instance.new("Frame")
local SectionContainer_2 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local UIGradient_S = Instance.new("UIGradient")
Section.Name = "Section"
Section.Parent = GetType(side)
Section.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Section.ClipsDescendants = true
Section.Size = UDim2.new(0, 240, 0, 343)
Section.BackgroundTransparency = 0
UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = Section
Top_2.Name = "Top"
Top_2.Parent = Section
Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top_2.BackgroundTransparency = 1.000
Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Top_2.Size = UDim2.new(0, 238, 0, 8)
Line.Name = "Line"
Line.Parent = Top_2
Line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 239, 0, 1)
Line.Visible = false

SectionContainer.Name = "SectionContainer"
SectionContainer.Parent = Top_2
SectionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionContainer.BackgroundTransparency = 1.000
SectionContainer.BorderSizePixel = 0
SectionContainer.Position = UDim2.new(0, 0, 0.716416223, 0)
SectionContainer.Size = UDim2.new(0, 239, 0, 200)

SectionContainer_2.Name = "SectionContainer_2"
SectionContainer_2.Parent = Top_2
SectionContainer_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionContainer_2.BackgroundTransparency = 1.000
SectionContainer_2.BorderSizePixel = 0
SectionContainer_2.Position = UDim2.new(0, 0, 0.716416223, 0)
SectionContainer_2.Size = UDim2.new(0, 239, 0, 230)
UIListLayout_2.Parent = SectionContainer
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 11)
UIPadding_2.Parent = SectionContainer
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
  function()
  Section.Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 35)
  end
)
local functionitem = {}
function functionitem:Label(text)
local Label = Instance.new("TextLabel")
local labelfunc = {}

Label.Name = "Label"
Label.Parent = SectionContainer
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0, 200, 0, 20)
Label.Font = Enum.Font.SourceSansBold
Label.TextColor3 = Color3.fromRGB(225, 225, 225)
Label.TextSize = 13.000
Label.Text = text
Label.TextXAlignment = Enum.TextXAlignment.Left

function labelfunc:Set(newtext)
Label.Text = newtext
end
return labelfunc
end

function functionitem:Seperator(text)
local textas = {}
local Label = Instance.new("Frame")
local Text = Instance.new("TextLabel")
Label.Name = "Label"
Label.Parent = SectionContainer
Label.AnchorPoint = Vector2.new(0.5, 0.5)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0, 240, 0, 15)

local Label22 = Instance.new("Frame")
Label22.Name = "Label22"
Label22.Parent = Label
Label22.AnchorPoint = Vector2.new(0, 0.5)
Label22.BackgroundColor3 = _G.Color
Label22.Position = UDim2.new(0,30,0.5,0)
Label22.Size = UDim2.new(0, 30, 0, 2)

local Label23 = Instance.new("Frame")
Label23.Name = "Label23"
Label23.Parent = Label
Label23.AnchorPoint = Vector2.new(0, 0.5)
Label23.BackgroundColor3 = _G.Color
Label23.Position = UDim2.new(0,180,0.5,0)
Label23.Size = UDim2.new(0, 30, 0, 2)

Text.Name = "Text"
Text.Parent = Label
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.BackgroundColor3 = _G.Color
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Text.Size = UDim2.new(0, 53, 0, 150)
Text.ZIndex = 16
Text.Font = Enum.Font.SourceSansBold
Text.Text = text
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 12.000
function textas.Refresh(newtext)
Text.Text = newtext
end
return textas
end

function functionitem:LabelColor(text,color)
local textas = {}
local Label = Instance.new("Frame")
local Text = Instance.new("TextLabel")
Label.Name = "Label"
Label.Parent = SectionContainer
Label.AnchorPoint = Vector2.new(0.5, 0.5)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0.975000024, 0, 0, 30)
Text.Name = "Text"
Text.Parent = Label
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Text.Size = UDim2.new(0, 53, 0, 12)
Text.ZIndex = 16
Text.Font = Enum.Font.SourceSansBold
Text.Text = text
Text.TextColor3 = Color3.fromRGB(color)
Text.TextSize = 12.000
function textas:Change(newtext)
Text.Text = newtext
end
return textas
end
function functionitem:ButtonTog(Title, default, callback)
local b3Func = {}
local callback = callback or function()
end
local Tgs = default
local Button_2 = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
Button_2.Name = "Button"
Button_2.Parent = SectionContainer
Button_2.BackgroundColor3 = Color3.fromRGB(33, 132, 112)
Button_2.Size = UDim2.new(0.975000024, 0, 0, 25)
Button_2.ZIndex = 16
if default then
Button_2.BackgroundColor3 = Color3.fromRGB(33, 132, 112)
else
  Button_2.BackgroundColor3 = _G.Color
end
UICorner_21.CornerRadius = UDim.new(0, 3)
UICorner_21.Parent = Button_2
TextLabel_4.Parent = Button_2
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(0, 40, 0, 12)
TextLabel_4.ZIndex = 16
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = tostring(Title)
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 12.000
TextButton_4.Parent = Button_2
TextButton_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton_4.BackgroundTransparency = 1.000
TextButton_4.BorderSizePixel = 0
TextButton_4.ClipsDescendants = true
TextButton_4.Size = UDim2.new(1, 0, 1, 0)
TextButton_4.ZIndex = 16
TextButton_4.AutoButtonColor = false
TextButton_4.Font = Enum.Font.SourceSansBold
TextButton_4.Text = ""
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextSize = 14.000
TextButton_4.MouseButton1Click:Connect(
  function()
  Tgs = not Tgs
  b3Func:Update(Tgs)
  CircleClick(Button_2, Mouse.X, Mouse.Y)
  end
)
if default then
TweenService:Create(
  Button_2,
  TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
  {
    BackgroundColor3 = state and _G.Color or Color3.fromRGB(33, 132, 112)
  }
):Play()
callback(default)
Tgs = default
end
function b3Func:Update(state)
TweenService:Create(
  Button_2,
  TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
  {
    BackgroundColor3 = state and Color3.fromRGB(33, 132, 112) or _G.Color
  }
):Play()
callback(state)
Tgs = state
end
return b3Func
end
function functionitem:Button(Name, callback)
local Button = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

Button.Name = "Button"
Button.Parent = SectionContainer
Button.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Button.Size = UDim2.new(0.975000024, 0, 0, 30)
Button.ZIndex = 16
Button.BackgroundTransparency = 0

local UiToggle_UiStroke2 = Instance.new("UIStroke")
UiToggle_UiStroke2.Color = Color3.fromRGB(60, 60, 60)
UiToggle_UiStroke2.Thickness = 1
UiToggle_UiStroke2.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke2.Parent = Button

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = Button

TextLabel_3.Parent = Button
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(0, 40, 0, 12)
TextLabel_3.ZIndex = 16
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = Name
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 10.000

TextButton.Parent = Button
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.ClipsDescendants = true
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.ZIndex = 16
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton.MouseEnter:Connect(function()
  TweenService:Create(
    Button,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0.5
    }
  ):Play()
  end)

TextButton.MouseLeave:Connect(function()
  TweenService:Create(
    Button,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      BackgroundTransparency = 0
    }
  ):Play()
  end)

TextButton.MouseButton1Click:Connect(function()
  CircleClick(Button, Mouse.X, Mouse.Y)
  TextLabel_3.TextSize = 0
  TweenService:Create(
    TextLabel_3,
    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextSize = 12
    }
  ):Play()
  callback()
  end)
end
function functionitem:Toggle(Name, default, callback)
local ToglFunc = {}
local Tgo = default
local MainToggle = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
local MainToggle_2 = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local MainToggle_3 = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
MainToggle.Name = "MainToggle"
MainToggle.Parent = SectionContainer
MainToggle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainToggle.BackgroundTransparency = 0
MainToggle.BorderSizePixel = 0
MainToggle.ClipsDescendants = true
MainToggle.Size = UDim2.new(0.975000024, 0, 0, 35)
MainToggle.ZIndex = 16

local UiToggle_UiStroke1 = Instance.new("UIStroke")
UiToggle_UiStroke1.Color = Color3.fromRGB(60, 60, 60)
UiToggle_UiStroke1.Thickness = 1
UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke1.Parent = MainToggle

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = MainToggle
Text.Name = "Text"
Text.Parent = MainToggle
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0, 10, 0, 10)
Text.Size = UDim2.new(0, 100, 0, 12)
Text.ZIndex = 16
Text.Font = Enum.Font.SourceSansBold
Text.Text = Name
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 12.000
Text.TextTransparency = 0.4
Text.TextXAlignment = Enum.TextXAlignment.Left
MainToggle_2.Name = "MainToggle"
MainToggle_2.Parent = MainToggle
MainToggle_2.AnchorPoint = Vector2.new(0.5, 0.5)
MainToggle_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainToggle_2.ClipsDescendants = true
MainToggle_2.Position = UDim2.new(0.899999976, 0, 0.5, 0)
MainToggle_2.Size = UDim2.new(0, 23, 0, 23)
MainToggle_2.ZIndex = 16
UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = MainToggle_2
MainToggle_3.Name = "MainToggle"
MainToggle_3.Parent = MainToggle_2
MainToggle_3.AnchorPoint = Vector2.new(0.5, 0.5)
MainToggle_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainToggle_3.BackgroundTransparency = 0
MainToggle_3.ClipsDescendants = true
MainToggle_3.Position = UDim2.new(0.5, 0, 0.5, 0)
MainToggle_3.Size = UDim2.new(0, 0, 0, 0)
MainToggle_3.ZIndex = 16
MainToggle_3.Image = "http://www.roblox.com/asset/?id=6031068421"
MainToggle_3.ImageColor3 = _G.Color
MainToggle_3.Visible = false
UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = MainToggle_3
TextButton.Name = ""
TextButton.Parent = MainToggle
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.ZIndex = 16
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:Connect(
  function()
  Tgo = not Tgo
  ToglFunc:Update(Tgo)
  CircleClick(Button, Mouse.X, Mouse.Y)
  end
)
if default then
if default then
MainToggle_3.Visible = default
end
TweenService:Create(
  Text,
  TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
  {
    TextTransparency = default and 0 or 0.4
  }
):Play()
local we = TweenService:Create(
  MainToggle_3,
  TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
  {
    Size = default and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0)
  }
)
we:Play()
we.Completed:Wait()
if default == false then
MainToggle_3.Visible = default
end
callback(default)
Tgo = default
end
function ToglFunc:Update(state)
if state then
MainToggle_3.Visible = state
end
TweenService:Create(
  Text,
  TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
  {
    TextTransparency = state and 0 or 0.4
  }
):Play()
local we = TweenService:Create(
  MainToggle_3,
  TweenInfo.new(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
  {
    Size = state and UDim2.new(0, 25, 0, 25) or UDim2.new(0, 0, 0, 0)
  }
)
we:Play()
we.Completed:Wait()
if state == false then
MainToggle_3.Visible = state
end
callback(state)
Tgo = state
end
return ToglFunc
end
function functionitem:Textbox(Name, Placeholder, callback)
local Textbox = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local Text_5 = Instance.new("TextLabel")
local TextboxHoler = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local UICorner_18 = Instance.new("UICorner")
local HeadTitle = Instance.new("TextBox")
Textbox.Name = "Textbox"
Textbox.Parent = SectionContainer
Textbox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Textbox.BackgroundTransparency = 0
Textbox.BorderSizePixel = 0
Textbox.ClipsDescendants = true
Textbox.Size = UDim2.new(0.975000024, 0, 0, 35)
Textbox.ZIndex = 16

local UiToggle_UiStroke23 = Instance.new("UIStroke")
UiToggle_UiStroke23.Color = Color3.fromRGB(60, 60, 60)
UiToggle_UiStroke23.Thickness = 1
UiToggle_UiStroke23.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke23.Parent = Textbox

UICorner_16.CornerRadius = UDim.new(0, 3)
UICorner_16.Parent = Textbox
Text_5.Name = "Text"
Text_5.Parent = Textbox
Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_5.BackgroundTransparency = 1.000
Text_5.Position = UDim2.new(0, 10, 0, 10)
Text_5.Size = UDim2.new(0, 43, 0, 12)
Text_5.ZIndex = 16
Text_5.Font = Enum.Font.SourceSansBold
Text_5.Text = Name
Text_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_5.TextSize = 11.000
Text_5.TextXAlignment = Enum.TextXAlignment.Left
TextboxHoler.Name = "TextboxHoler"
TextboxHoler.Parent = Textbox
TextboxHoler.AnchorPoint = Vector2.new(0.5, 0.5)
TextboxHoler.BackgroundColor3 = Color3.fromRGB(13, 13, 15)
TextboxHoler.BackgroundTransparency = 1.000
TextboxHoler.BorderSizePixel = 0
TextboxHoler.Position = UDim2.new(0.5, 0, 0.5, 13)
TextboxHoler.Size = UDim2.new(0.970000029, 0, 0, 30)
UICorner_17.CornerRadius = UDim.new(0, 3)
UICorner_17.Parent = TextboxHoler
HeadTitle.Name = "HeadTitle"
HeadTitle.Parent = TextboxHoler
HeadTitle.AnchorPoint = Vector2.new(0.5, 0.5)
HeadTitle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HeadTitle.BackgroundTransparency = 0.000
HeadTitle.BorderSizePixel = 0.400
HeadTitle.ClipsDescendants = true
HeadTitle.Position = UDim2.new(0.74, 0, 0.04, 0)
HeadTitle.Size = UDim2.new(0, 100, 0, 28)
HeadTitle.ZIndex = 16
HeadTitle.Font = Enum.Font.SourceSansBold
HeadTitle.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
HeadTitle.PlaceholderText = Placeholder
HeadTitle.Text = ""
HeadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HeadTitle.TextSize = 13.000
HeadTitle.TextTransparency = 0
HeadTitle.TextXAlignment = Enum.TextXAlignment.Center
UICorner_18.CornerRadius = UDim.new(0, 5)
UICorner_18.Parent = HeadTitle
HeadTitle.FocusLost:Connect(
  function(ep)
  if ep then
  if #HeadTitle.Text > 0 then
  callback(HeadTitle.Text)
  HeadTitle.Text = ""
  end
  end
  end)
end


function functionitem:Dropdown(Name,option,default,callback)
local isdropping = false
local Dropdown = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UICorner1 = Instance.new("UICorner")
local DropTitle = Instance.new("TextLabel")
local DropScroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local DropButton = Instance.new("TextButton")
local DropImage = Instance.new("ImageLabel")
local posto1 = Instance.new("UIStroke")

Dropdown.Name = "Dropdown"
Dropdown.Parent = SectionContainer
Dropdown.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Dropdown.BackgroundTransparency = 0
Dropdown.ClipsDescendants = true
Dropdown.Size = UDim2.new(0, 228, 0, 30)

local UiToggle_UiStroke25 = Instance.new("UIStroke")
UiToggle_UiStroke25.Color = Color3.fromRGB(60, 60, 60)
UiToggle_UiStroke25.Thickness = 1
UiToggle_UiStroke25.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke25.Parent = Dropdown

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Dropdown

function getpro()
if default then
if table.find(option, default) then
callback(default)
return "   "..Name .. " : " .. default
else
  return "   "..Name .. " : "
end
else
  return "   "..Name .. " : "
end
end

DropTitle.Name = "DropTitle"
DropTitle.Parent = Dropdown
DropTitle.BackgroundColor3 = Color3.fromRGB(224,224,224)
DropTitle.BackgroundTransparency = 1.000
DropTitle.Size = UDim2.new(0, 240, 0, 31)
DropTitle.Font = Enum.Font.SourceSansBold
DropTitle.Text = getpro()
DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
DropTitle.TextSize = 12.000
DropTitle.TextXAlignment = Enum.TextXAlignment.Left

DropScroll.Name = "DropScroll"
DropScroll.Parent = DropTitle
DropScroll.Active = true
DropScroll.BackgroundColor3 = Color3.fromRGB(224,224,224)
DropScroll.BackgroundTransparency = 1.000
DropScroll.BorderSizePixel = 0
DropScroll.Position = UDim2.new(0, 0, 0, 31)
DropScroll.Size = UDim2.new(0, 240, 0, 100)
DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
DropScroll.ScrollBarThickness = 3

UIListLayout.Parent = DropScroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UIPadding.Parent = DropScroll
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

DropImage.Name = "DropImage"
DropImage.Parent = Dropdown
DropImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
DropImage.BackgroundTransparency = 1.000
DropImage.Position = UDim2.new(0, 200, 0, 6)
DropImage.Rotation = 180.000
DropImage.Size = UDim2.new(0, 20, 0, 20)
DropImage.Image = "rbxassetid://7072706663"

DropButton.Name = "DropButton"
DropButton.Parent = Dropdown
DropButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
DropButton.BackgroundTransparency = 1.000
DropButton.Size = UDim2.new(0, 240, 0, 31)
DropButton.Font = Enum.Font.SourceSansBold
DropButton.Text = ""
DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
DropButton.TextSize = 14.000

for i,v in next,option do
local Item = Instance.new("TextButton")

Item.Name = "Item"
Item.Parent = DropScroll
Item.BackgroundColor3 = Color3.fromRGB(30,30,30)
Item.BackgroundTransparency = 0.000
Item.Size = UDim2.new(0, 225, 0, 18)
Item.BorderSizePixel = 0
Item.Font = Enum.Font.SourceSansBold
Item.Text = tostring(v)
Item.TextColor3 = Color3.fromRGB(225, 225, 225)
Item.TextSize = 13.000
Item.TextTransparency = 0

UICorner1.CornerRadius = UDim.new(0, 4)
UICorner1.Parent = item

Item.MouseEnter:Connect(function()
  TweenService:Create(
    Item,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextTransparency = 0
    }
  ):Play()
  end)

Item.MouseLeave:Connect(function()
  TweenService:Create(
    Item,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextTransparency = 0.5
    }
  ):Play()
  end)

Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,228,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
    DropImage,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      Rotation = 180
    }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = "   "..Name.." : "..Item.Text
  end)
end

DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

DropButton.MouseButton1Click:Connect(function()
  if isdropping == false then
  isdropping = true
  Dropdown:TweenSize(UDim2.new(0,228,0,131),"Out","Quad",0.3,true)
  TweenService:Create(
    DropImage,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      Rotation = 0
    }
  ):Play()
  else
    isdropping = false
  Dropdown:TweenSize(UDim2.new(0,228,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
    DropImage,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      Rotation = 180
    }
  ):Play()
  end
  end)

local dropfunc = {}
function dropfunc:Add(t)
local Item = Instance.new("TextButton")
Item.Name = "Item"
Item.Parent = DropScroll
Item.BackgroundColor3 = Color3.fromRGB(30,30,30)
Item.BackgroundTransparency = 0.000
Item.Size = UDim2.new(0, 225, 0, 18)
Item.BorderSizePixel = 0
Item.Font = Enum.Font.SourceSansBold
Item.Text = tostring(t)
Item.TextColor3 = Color3.fromRGB(225, 225, 225)
Item.TextSize = 13.000
Item.TextTransparency = 0

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 4)
UICorner2.Parent = item

Item.MouseEnter:Connect(function()
  TweenService:Create(
    Item,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextTransparency = 0
    }
  ):Play()
  end)

Item.MouseLeave:Connect(function()
  TweenService:Create(
    Item,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      TextTransparency = 0.5
    }
  ):Play()
  end)

Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,228,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
    DropImage,
    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
    {
      Rotation = 180
    }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = "   "..Name.." : "..Item.Text
  end)
end
function dropfunc:Clear()
DropTitle.Text = "   ".."Refresh Successfully"
DropTitle.TextColor3 = Color3.fromRGB(0, 225, 0)
wait(.5)
DropTitle.Text = tostring("   "..Name).." : "
DropTitle.TextColor3 = Color3.fromRGB(225, 225, 255)
isdropping = false
Dropdown:TweenSize(UDim2.new(0,228,0,31),"Out","Quad",0.3,true)
TweenService:Create(
  DropImage,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
    Rotation = 180
  }
):Play()
for i,v in next, DropScroll:GetChildren() do
if v:IsA("TextButton") then
v:Destroy()
end
end
end
return dropfunc
end

function functionitem:MultiDropdown(Name, list, default, callback)
local Dropfunc = {}
local MainDropDown = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local MainDropDown_2 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local v = Instance.new("TextButton")
local Text_2 = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local Scroll_Items = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_3 = Instance.new("UIPadding")
MainDropDown.Name = "MainDropDown"
MainDropDown.Parent = SectionContainer
MainDropDown.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainDropDown.BackgroundTransparency = 0
MainDropDown.BorderSizePixel = 0
MainDropDown.ClipsDescendants = true
MainDropDown.Size = UDim2.new(0.975000024, 0, 0, 30)
MainDropDown.ZIndex = 16

local UiToggle_UiStroke26 = Instance.new("UIStroke")
UiToggle_UiStroke26.Color = Color3.fromRGB(60, 60, 60)
UiToggle_UiStroke26.Thickness = 1
UiToggle_UiStroke26.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke26.Parent = MainDropDown

UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = MainDropDown
MainDropDown_2.Name = "MainDropDown"
MainDropDown_2.Parent = MainDropDown
MainDropDown_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
MainDropDown_2.BackgroundTransparency = 0
MainDropDown_2.BorderSizePixel = 0
MainDropDown_2.ClipsDescendants = true
MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
MainDropDown_2.ZIndex = 16
UICorner_8.CornerRadius = UDim.new(0, 3)
UICorner_8.Parent = MainDropDown_2
v.Name = "v"
v.Parent = MainDropDown_2
v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v.BackgroundTransparency = 1.000
v.BorderSizePixel = 0
v.Size = UDim2.new(1, 0, 1, 0)
v.ZIndex = 16
v.AutoButtonColor = false
v.Font = Enum.Font.SourceSansBold
v.Text = ""
v.TextColor3 = Color3.fromRGB(255, 255, 255)
v.TextSize = 12.000
function getpro()
if default then
for i, v in next, default do
if table.find(list, v) then
callback(default)
return Name .. " : " .. table.concat(default, ", ")
else
  return Name
end
end
else
  return Name
end
end
Text_2.Name = "Text"
Text_2.Parent = MainDropDown_2
Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_2.BackgroundTransparency = 1.000
Text_2.Position = UDim2.new(0, 10, 0, 10)
Text_2.Size = UDim2.new(0, 62, 0, 12)
Text_2.ZIndex = 16
Text_2.Font = Enum.Font.SourceSansBold
Text_2.Text = getpro()
Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_2.TextSize = 12.000
Text_2.TextXAlignment = Enum.TextXAlignment.Left
ImageButton.Parent = MainDropDown_2
ImageButton.AnchorPoint = Vector2.new(0, 0.5)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
ImageButton.Size = UDim2.new(0, 12, 0, 12)
ImageButton.ZIndex = 16
ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"
local DropTable = {}
Scroll_Items.Name = "Scroll_Items"
Scroll_Items.Parent = MainDropDown
Scroll_Items.Active = true
Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scroll_Items.BackgroundTransparency = 1.000
Scroll_Items.BorderSizePixel = 0
Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
Scroll_Items.ZIndex = 16
Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
Scroll_Items.ScrollBarThickness = 0
UIListLayout_3.Parent = Scroll_Items
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 5)
UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
  function()
  Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
  end
)
UIPadding_3.Parent = Scroll_Items
UIPadding_3.PaddingLeft = UDim.new(0, 10)
UIPadding_3.PaddingTop = UDim.new(0, 5)
function Dropfunc:TogglePanel(state)
TweenService:Create(
  MainDropDown,
  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
  {
    Size = state and UDim2.new(0.975000024, 0, 0, 200) or UDim2.new(0.975000024, 0, 0, 30)}
):Play()
TweenService:Create(
  ImageButton,
  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
  {
    Rotation = state and 180 or 0
  }
):Play()
end
local Tof = false
ImageButton.MouseButton1Click:Connect(
  function()
  Tof = not Tof
  Dropfunc:TogglePanel(Tof)
  end
)
v.MouseButton1Click:Connect(
  function()
  Tof = not Tof
  Dropfunc:TogglePanel(Tof)
  end
)
function Dropfunc:Add(Text)
local _5 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
_5.Name = Text
_5.Parent = Scroll_Items
_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_5.BorderSizePixel = 0
_5.ClipsDescendants = true
_5.Size = UDim2.new(1, -10, 0, 20)
_5.ZIndex = 17
_5.AutoButtonColor = false
_5.Font = Enum.Font.SourceSansBold
_5.Text = Text
_5.TextColor3 = Color3.fromRGB(255, 255, 255)
_5.TextSize = 12.000
UICorner_9.CornerRadius = UDim.new(0, 3)
UICorner_9.Parent = _5
_5.MouseButton1Click:Connect(
  function()
  if not table.find(DropTable, Text) then
  table.insert(DropTable, Text)
  callback(DropTable, Text)
  Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
  TweenService:Create(
    _5,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      TextColor3 = _G.Color
    }
  ):Play()
  else
    TweenService:Create(
    _5,
    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    {
      TextColor3 = _G.Color
    }
  ):Play()
  for i2, v2 in pairs(DropTable) do
  if v2 == Text then
  table.remove(DropTable, i2)
  Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
  end
  end
  callback(DropTable, Text)
  end
  end
)
end
function Dropfunc:Clear()
for i, v in next, Scroll_Items:GetChildren() do
if v:IsA("TextButton") then
v:Destroy()
end
end
end
for i, v in next, list do
Dropfunc:Add(v)
end
return Dropfunc
end
function functionitem:Slider(text,floor,min,max,de,callback)
local SliderFrame = Instance.new("Frame")
local LabelNameSlider = Instance.new("TextLabel")
local ShowValueFrame = Instance.new("Frame")
local CustomValue = Instance.new("TextBox")
local ShowValueFrameUICorner = Instance.new("UICorner")
local ValueFrame = Instance.new("Frame")
local ValueFrameUICorner = Instance.new("UICorner")
local PartValue = Instance.new("Frame")
local PartValueUICorner = Instance.new("UICorner")
local MainValue = Instance.new("Frame")
local MainValueUICorner = Instance.new("UICorner")
local sliderfunc = {}

SliderFrame.Name = "SliderFrame"
SliderFrame.Parent = SectionContainer
SliderFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
SliderFrame.Position = UDim2.new(0.109489053, 0, 0.708609283, 0)
SliderFrame.Size = UDim2.new(0.975000024, 0, 0, 45)
SliderFrame.BackgroundTransparency = 0

local UiToggle_UiStroke28 = Instance.new("UIStroke")
UiToggle_UiStroke28.Color = Color3.fromRGB(60, 60, 60)
UiToggle_UiStroke28.Thickness = 1
UiToggle_UiStroke28.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke28.Parent = SliderFrame

local UICorner_7 = Instance.new("UICorner")
UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = SliderFrame

LabelNameSlider.Name = "LabelNameSlider"
LabelNameSlider.Parent = SliderFrame
LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelNameSlider.BackgroundTransparency = 1.000
LabelNameSlider.Position = UDim2.new(0.0729926974, 0, 0.0396823473, 0)
LabelNameSlider.Size = UDim2.new(0, 182, 0, 25)
LabelNameSlider.Font = Enum.Font.SourceSansBold
LabelNameSlider.Text = tostring(text)
LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
LabelNameSlider.TextSize = 11.000
LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

ShowValueFrame.Name = "ShowValueFrame"
ShowValueFrame.Parent = SliderFrame
ShowValueFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
ShowValueFrame.BackgroundTransparency = 1
ShowValueFrame.Position = UDim2.new(0.733576655, 0, 0.0656082779, 0)
ShowValueFrame.Size = UDim2.new(0, 58, 0, 21)

CustomValue.Name = "CustomValue"
CustomValue.Parent = ShowValueFrame
CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
CustomValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
CustomValue.Position = UDim2.new(0.3, 0, 0.5, 0)
CustomValue.Size = UDim2.new(0, 55, 0, 21)
CustomValue.Font = Enum.Font.SourceSansBold
CustomValue.Text = "50"
CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
CustomValue.TextSize = 11.000

ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
ShowValueFrameUICorner.Parent = CustomValue


ValueFrame.Name = "ValueFrame"
ValueFrame.Parent = SliderFrame
ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ValueFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
ValueFrame.Size = UDim2.new(0, 200, 0, 5)

ValueFrameUICorner.CornerRadius = UDim.new(0, 30)
ValueFrameUICorner.Name = "ValueFrameUICorner"
ValueFrameUICorner.Parent = ValueFrame

PartValue.Name = "PartValue"
PartValue.Parent = ValueFrame
PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
PartValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
PartValue.BackgroundTransparency = 1.000
PartValue.Position = UDim2.new(0.5, 0, 0.8, 0)
PartValue.Size = UDim2.new(0, 200, 0, 5)

PartValueUICorner.CornerRadius = UDim.new(0, 30)
PartValueUICorner.Name = "PartValueUICorner"
PartValueUICorner.Parent = PartValue

MainValue.Name = "MainValue"
MainValue.Parent = ValueFrame
MainValue.BackgroundColor3 = _G.Color
MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
MainValue.BorderSizePixel = 0

MainValueUICorner.CornerRadius = UDim.new(0, 30)
MainValueUICorner.Name = "MainValueUICorner"
MainValueUICorner.Parent = MainValue


local ConneValue = Instance.new("Frame")
ConneValue.Name = "ConneValue"
ConneValue.Parent = PartValue
ConneValue.AnchorPoint = Vector2.new(0.7, 0.7)
ConneValue.BackgroundColor3 = _G.Color
ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0, 0)
ConneValue.Size = UDim2.new(0, 10, 0, 10)
ConneValue.BorderSizePixel = 0

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = ConneValue


if floor == true then
CustomValue.Text = tostring(de and string.format((de / max) * (max - min) + min) or 0)
else
  CustomValue.Text = tostring(de and math.floor((de / max) * (max - min) + min) or 0)
end

local function move(input)
local pos =
UDim2.new(
  math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
  0,
  0.5,
  0
)
local pos1 =
UDim2.new(
  math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
  0,
  0,
  5
)
MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
if floor == true then
local value = string.format("%.0f",((pos.X.Scale * max) / max) * (max - min) + min)
CustomValue.Text = tostring(value)
callback(value)
else
  local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
CustomValue.Text = tostring(value)
callback(value)
end
end
local dragging = false
ConneValue.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 then
  dragging = true
  end
  end)
ConneValue.InputEnded:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 then
  dragging = false
  end
  end)
SliderFrame.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 then
  dragging = true
  end
  end)
SliderFrame.InputEnded:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 then
  dragging = false
  end
  end)
ValueFrame.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 then
  dragging = true
  end
  end)
ValueFrame.InputEnded:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 then
  dragging = false
  end
  end)
game:GetService("UserInputService").InputChanged:Connect(function(input)
  if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
  move(input)
  end
  end)
CustomValue.FocusLost:Connect(function()
  if CustomValue.Text == "" then
  CustomValue.Text = de
  end
  if tonumber(CustomValue.Text) > max then
  CustomValue.Text = max
  end
  MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
  ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
  if floor == true then
  CustomValue.Text = tostring(CustomValue.Text and string.format("%.0f",(CustomValue.Text / max) * (max - min) + min))
  else
    CustomValue.Text = tostring(CustomValue.Text and math.floor((CustomValue.Text / max) * (max - min) + min))
  end
  pcall(callback, CustomValue.Text)
  end)

function sliderfunc:Update(value)
MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
ConneValue:TweenPosition(UDim2.new((value or 0)/max, 0.5, 0.5,0, 0) , "Out", "Sine", 0.2, true)
CustomValue.Text = value
pcall(function()
  callback(value)
  end)
end



return sliderfunc
end
return functionitem
end
return sections
end
return tabs
end
return library
