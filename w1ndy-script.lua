

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Script By w1ndy", "RJTheme7")



--Main
local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Player")

local toggle=true -- чтобы можно было управлять запуском/остановкой цикла
-- Объявляем переменную для циклa
local running=false
local connection
Section:NewToggle("100 spd & 80 jmp","ToggleInfo",function(state)
    toggle=state
    if toggle then
        if not running then
            running=true
            -- Запускаем цикл в отдельной поток
            coroutine.wrap(function()
                while toggle do
                    local p=game.Players.LocalPlayer
                    if p.Character and p.Character:FindFirstChild("Humanoid") then
                        p.Character.Humanoid.WalkSpeed=100
                        p.Character.Humanoid.JumpPower=80
                    end
                    wait(0.1)
                end
                running=false
            end)()
        end
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

--new

local toggle=true -- чтобы можно было управлять запуском/остановкой цикла

-- Объявляем переменную для циклa
local running=false
local connection

Section:NewToggle("10000 hp","ToggleInfo",function(state)
    toggle=state
    if toggle then
        if not running then
            running=true
            -- Запускаем цикл в отдельной поток
            coroutine.wrap(function()
                while toggle do
                    local p=game.Players.LocalPlayer
                    if p.Character and p.Character:FindFirstChild("Humanoid") then
                        p.Character.Humanoid.Health=10000
                        p.Character.Humanoid.MaxHealth=10000
                    end
                    wait(0.1)
                end
                running=false
            end)()
        end
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)










local Section = Tab:NewSection("Token")

local p=game.Players.LocalPlayer
Section:NewButton("Token","ButtonInfo",function()
    for _,v in pairs(game:GetDescendants()) do
        if v.Name=="Token" and v:IsA("BasePart") then
            v.CFrame=p.Character.HumanoidRootPart.CFrame
        end
    end
end)



--TP
local Tab = Window:NewTab("Teleport")

local Section = Tab:NewSection("Teleport To NPC")

local p=game:GetService("Players").LocalPlayer
Section:NewButton("Black Bear", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Black Bear"].Camera.CFrame end)
Section:NewButton("Mother Bear", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Mother Bear"].Camera.CFrame end)
Section:NewButton("Brown Bear", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Brown Bear"].Camera.CFrame end)
Section:NewButton("Panda", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Panda Bear"].Camera.CFrame end)
Section:NewButton("Science Bear", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Science Bear"].Camera.CFrame end)
Section:NewButton("Polar Bear", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Polar Bear"].Camera.CFrame end)
Section:NewButton("Honey Bee", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Honey Bee"].Camera.CFrame end)
Section:NewButton("Cone Bear", "ButtonInfo",function() p.Character.HumanoidRootPart.CFrame=workspace.NPC["Cone Bear"].Camera.CFrame end)

local Section = Tab:NewSection("Teleport To Spawn")





