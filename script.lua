local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7YSe7en/Seven_Lib/main/Seven_Lib.lua"))()

local Window = Lib:Window("PHAN DINH BIEN", "by Biendepzai", Enum.KeyCode.RightControl)

local MainTab = Window:Tab("Main Hub")
local SeaKingTab = Window:Tab("SeaKing")
local BienTab = Window:Tab("Biển")

MainTab:Button("Redz Hub", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))() 
end)

MainTab:Button("Server Finder", function() 
    loadstring(game:HttpGet("https://rise-evo.xyz/apiv3/ServerFinder.lua"))() 
end)

MainTab:Button("Xeter hub V4", function() 
    getgenv().Version = "V4"
    getgenv().Team = "Marines"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))() 
end)

SeaKingTab:Button("QuanTum Hub", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))() 
end)

SeaKingTab:Button("Bacon Hub", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/BaconHub.lua"))() 
end)

SeaKingTab:Button("Huylovemy / key : Huydepzai", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Bear-hud-t-h/refs/heads/main/Huylovevkmy"))() 
end)

BienTab:Button("Blue X", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))() 
end)

BienTab:Button("Gravity Hub", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() 
end)

BienTab:Button("Turbo Fix Lag", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))() 
end)

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
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
end)
