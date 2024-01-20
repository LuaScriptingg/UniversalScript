local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton1.BackgroundTransparency = 1.10
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton1.Size = UDim2.new(0, 70, 0, 70)
ImageButton1.Draggable = true
ImageButton1.Image = "rbxassetid://16018303420"

UICorner.Parent = ImageButton1

local Frame = Instance.new("Frame")
local UICorner2 = Instance.new("UICorner")
local HitboxButton = Instance.new("TextButton")
local HitboxLabel = Instance.new("TextLabel")
local HitboxTextBox = Instance.new("TextBox")
local WalkspeedButton = Instance.new("TextButton")
local WalkspeedLabel = Instance.new("TextLabel")
local WalkspeedTextBox = Instance.new("TextBox")
local JumpPowerButton = Instance.new("TextButton")
local JumpPowerLabel = Instance.new("TextLabel")
local JumpPowerTextBox = Instance.new("TextBox")

Frame.Parent = ScreenGui1
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Visible = false 

UICorner2.Parent = Frame

HitboxButton.Parent = Frame
HitboxButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HitboxButton.Position = UDim2.new(0.1, 0, 0.1, 0)
HitboxButton.Size = UDim2.new(0.2, 0, 0.1, 0)
HitboxButton.Text = "Hitbox"
HitboxButton.TextColor3 = Color3.fromRGB(255, 255, 255)

HitboxLabel.Parent = Frame
HitboxLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HitboxLabel.Position = UDim2.new(0.1, 0, 0.2, 0)
HitboxLabel.Size = UDim2.new(0.2, 0, 0.05, 0)
HitboxLabel.Text = "Digite o valor da hitbox:"
HitboxLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

HitboxTextBox.Parent = Frame
HitboxTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HitboxTextBox.Position = UDim2.new(0.1, 0, 0.25, 0)
HitboxTextBox.Size = UDim2.new(0.2, 0, 0.05, 0)
HitboxTextBox.Text = "0"
HitboxTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

WalkspeedButton.Parent = Frame
WalkspeedButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WalkspeedButton.Position = UDim2.new(0.4, 0, 0.1, 0)
WalkspeedButton.Size = UDim2.new(0.2, 0, 0.1, 0)
WalkspeedButton.Text = "Walkspeed"
WalkspeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)

WalkspeedLabel.Parent = Frame
WalkspeedLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WalkspeedLabel.Position = UDim2.new(0.4, 0, 0.2, 0)
WalkspeedLabel.Size = UDim2.new(0.2, 0, 0.05, 0)
WalkspeedLabel.Text = "Digite o valor do walkspeed:"
WalkspeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

WalkspeedTextBox.Parent = Frame
WalkspeedTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WalkspeedTextBox.Position = UDim2.new(0.4, 0, 0.25, 0)
WalkspeedTextBox.Size = UDim2.new(0.2, 0, 0.05, 0)
WalkspeedTextBox.Text = "0"
WalkspeedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

JumpPowerButton.Parent = Frame
JumpPowerButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JumpPowerButton.Position = UDim2.new(0.7, 0, 0.1, 0)
JumpPowerButton.Size = UDim2.new(0.2, 0, 0.1, 0)
JumpPowerButton.Text = "Jump Power"
JumpPowerButton.TextColor3 = Color3.fromRGB(255, 255, 255)

JumpPowerLabel.Parent = Frame
JumpPowerLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JumpPowerLabel.Position = UDim2.new(0.7, 0, 0.2, 0)
JumpPowerLabel.Size = UDim2.new(0.2, 0, 0.05, 0)
JumpPowerLabel.Text = "Digite o valor do jump power:"
JumpPowerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

JumpPowerTextBox.Parent = Frame
JumpPowerTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JumpPowerTextBox.Position = UDim2.new(0.7, 0, 0.25, 0)
JumpPowerTextBox.Size = UDim2.new(0.2, 0, 0.05, 0)
JumpPowerTextBox.Text = "0"
JumpPowerTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function toggleFrame()
    Frame.Visible = not Frame.Visible
end

local function changeHitbox()
    local value = tonumber(HitboxTextBox.Text)
    if value then 
        character.Head.Size = Vector3.new(value, value, value) 
    else 
        HitboxTextBox.Text = "Valor inválido" 
    end
end

local function changeWalkspeed()
    local value = tonumber(WalkspeedTextBox.Text) 
    if value then 
        humanoid.WalkSpeed = value 
    else 
        WalkspeedTextBox.Text = "Valor inválido" 
    end
end

local function changeJumpPower()
    local value = tonumber(JumpPowerTextBox.Text) 
    if value then 
        humanoid.JumpPower = value 
    else 
        JumpPowerTextBox.Text = "Valor inválido"
    end
end

ImageButton1.Activated:Connect(toggleFrame)
HitboxButton.Activated:Connect(changeHitbox)
WalkspeedButton.Activated:Connect(changeWalkspeed)
JumpPowerButton.Activated:Connect(changeJumpPower)
