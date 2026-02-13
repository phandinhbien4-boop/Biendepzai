local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Menu Cua Bien Dep Zai",
   LoadingTitle = "Dang tai Script...",
   LoadingSubtitle = "by Biendepzai",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BiendepzaiHub",
      FileName = "Config"
   }
})

local MainTab = Window:CreateTab("Tính năng chính", 4483362458)

local Section = MainTab:CreateSection("Người chơi")

local Slider = MainTab:CreateSlider({
   Name = "Tốc độ chạy",
   Range = {16, 500},
   Increment = 1,
   Suffix = "Tốc độ",
   CurrentValue = 100,
   Flag = "WS_Slider",
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Button = MainTab:CreateButton({
   Name = "Nhảy cao",
   Callback = function()
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
   end,
})

Rayfield:Notify({
   Title = "Thành công!",
   Content = "Script đã kích hoạt!",
   Duration = 5,
   Image = 4483362458,
})
