local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZHUB/RedzLibV2/main/redzlibv2.lua"))()

local Window = RedzLib:MakeWindow({
  Title = "PHAN DINH BIEN",
  SubTitle = "by Biendepzai",
  SaveFolder = "BienHub_Config.json"
})

local MainTab = Window:CreateTab("Main Hub", "rbxassetid://4483362458")
local SeaKingTab = Window:CreateTab("SeaKing", "rbxassetid://4483362458")
local BienTab = Window:CreateTab("Biển", "rbxthumb://type=Asset&id=73480053684273&w=420&h=420")

MainTab:AddSection("SeaKing 2012 - Credit by SeaKing 2012")

MainTab:AddButton({
  Name = "Redz Hub",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))() end
})

MainTab:AddButton({
  Name = "Server Finder",
  Callback = function() loadstring(game:HttpGet("https://rise-evo.xyz/apiv3/ServerFinder.lua"))() end
})

MainTab:AddButton({
  Name = "Xeter hub V4",
  Callback = function() 
    getgenv().Version = "V4"
    getgenv().Team = "Marines"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))() 
  end
})

SeaKingTab:AddSection("SeaKing Collection")

SeaKingTab:AddButton({
  Name = "QuanTum Hub",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))() end
})

SeaKingTab:AddButton({
  Name = "Bacon Hub",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/BaconHub.lua"))() end
})

SeaKingTab:AddButton({
  Name = "Huylovemy / key : Huydepzai",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Bear-hud-t-h/refs/heads/main/Huylovevkmy"))() end
})

BienTab:AddSection("Biển Collection")

BienTab:AddButton({
  Name = "Blue X",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() end
})

BienTab:AddButton({
  Name = "Gravity Hub",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() end
})

BienTab:AddButton({
  Name = "Turbo Fix Lag",
  Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))() end
})

local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game:GetService("CoreGui")
ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0, 60, 0, 60)
ToggleButton.Position = UDim2.new(0, 20, 0.5, -30)
ToggleButton.Image = "rbxthumb://type=Asset&id=73480053684273&w=420&h=420"
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BackgroundTransparency = 0.3
ToggleButton.Active = true
ToggleButton.Draggable = true
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
  game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightControl", false, game)
end)
