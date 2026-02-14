local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "PHAN DINH BIEN",
    SubTitle = "by Biendepzai",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main Hub", Icon = "home" }),
    SeaKing = Window:AddTab({ Title = "SeaKing", Icon = "star" }),
    Bien = Window:AddTab({ Title = "Biển", Icon = "rbxthumb://type=Asset&id=73480053684273&w=420&h=420" })
}

-- TAB MAIN
Tabs.Main:AddParagraph({ Title = "SeaKing 2012", Content = "Credit by SeaKing 2012" })
Tabs.Main:AddButton({
    Title = "Redz Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))() end
})
Tabs.Main:AddButton({
    Title = "Xeter hub V4",
    Callback = function() 
        getgenv().Version = "V4"
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))() 
    end
})

-- TAB SEAKING
Tabs.SeaKing:AddButton({
    Title = "QuanTum Hub",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))() end
})

-- TAB BIEN
Tabs.Bien:AddButton({
    Title = "Turbo Fix Lag",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))() end
})

-- NÚT TOGGLE (MỞ/TẮT MENU)
local ScreenGui = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "PhanDinhBienToggle"

ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BackgroundTransparency = 0.3
ToggleButton.Size = UDim2.new(0, 60, 0, 60)
ToggleButton.Position = UDim2.new(0, 20, 0.5, -30)

-- Ép hiện ảnh Luffy bằng rbxthumb
ToggleButton.Image = "rbxthumb://type=Asset&id=73480053684273&w=420&h=420"

ToggleButton.Active = true
ToggleButton.Draggable = true
UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    Window:Minimize()
end)

Window:SelectTab(1)
