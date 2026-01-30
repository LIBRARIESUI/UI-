local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local DisplayName = LocalPlayer.DisplayName

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ServerAdGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 420, 0, 220)
Main.Position = UDim2.new(0.5, -210, 0.5, -110)
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderSizePixel = 2
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Active = true
Main.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = Main

local BgImage = Instance.new("ImageLabel")
BgImage.Parent = Main
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.Position = UDim2.new(0, 0, 0, 0)
BgImage.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=110198609281800"
BgImage.ImageTransparency = 0.25
BgImage.BackgroundTransparency = 1
BgImage.ZIndex = 0

local Title = Instance.new("TextLabel")
Title.Parent = Main
Title.Text = "KTA Farming - " .. DisplayName
Title.Size = UDim2.new(1, -40, 0, 40)
Title.Position = UDim2.new(0, 20, 0, 10)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.BackgroundTransparency = 1
Title.ZIndex = 2
Title.TextXAlignment = Enum.TextXAlignment.Left

local Desc = Instance.new("TextLabel")
Desc.Parent = Main
Desc.Text = "Join Our Discord Server Fr"
Desc.Size = UDim2.new(1, -40, 0, 70)
Desc.Position = UDim2.new(0, 20, 0, 60)
Desc.TextColor3 = Color3.fromRGB(220, 220, 220)
Desc.Font = Enum.Font.Gotham
Desc.TextSize = 14
Desc.TextWrapped = true
Desc.BackgroundTransparency = 1
Desc.ZIndex = 2
Desc.TextXAlignment = Enum.TextXAlignment.Left
Desc.TextYAlignment = Enum.TextYAlignment.Top

local CopyBtn = Instance.new("TextButton")
CopyBtn.Parent = Main
CopyBtn.Size = UDim2.new(0, 170, 0, 40)
CopyBtn.Position = UDim2.new(0, 20, 1, -60)
CopyBtn.Text = "Copy Discord Link"
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.TextSize = 14
CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
CopyBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyBtn.ZIndex = 2

local CopyCorner = Instance.new("UICorner")
CopyCorner.CornerRadius = UDim.new(0, 12)
CopyCorner.Parent = CopyBtn

local ExitBtn = Instance.new("TextButton")
ExitBtn.Parent = Main
ExitBtn.Size = UDim2.new(0, 100, 0, 40)
ExitBtn.Position = UDim2.new(1, -120, 1, -60)
ExitBtn.Text = "Exit"
ExitBtn.Font = Enum.Font.GothamBold
ExitBtn.TextSize = 14
ExitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExitBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitBtn.ZIndex = 2

local ExitCorner = Instance.new("UICorner")
ExitCorner.CornerRadius = UDim.new(0, 12)
ExitCorner.Parent = ExitBtn

CopyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("Fuck Yourself")
	end
	CopyBtn.Text = "Copied!"
	task.delay(1.2, function()
		CopyBtn.Text = "Copy Discord Link"
	end)
end)

ExitBtn.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)
