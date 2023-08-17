--[[

	Roblox Kometa HUB V 20.0A

	██╗  ██╗ █████╗ ███╗   ███╗███████╗████████╗ █████╗ 
	██║ ██╔╝██╔══██╗████╗ ████║██╔════╝╚══██╔══╝██╔══██╗
	█████═╝ ██║  ██║██╔████╔██║█████╗     ██║   ███████║
	██╔═██╗ ██║  ██║██║╚██╔╝██║██╔══╝     ██║   ██╔══██║
	██║ ╚██╗╚█████╔╝██║ ╚═╝ ██║███████╗   ██║   ██║  ██║
	╚═╝  ╚═╝ ╚════╝ ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ 
	
	Whats new?
		Whitelist system
		Auto update system
		RELEASE
	Version 20.0A costs 350R$
	But cost can be changed
	
	Creator:Demix#1509
	UI:VLib
	Obfuscation:MoonSec
	WaterMarkFu*ker:
--]]
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local WhiteList = loadstring(game:HttpGet("https://pastebin.com/raw/LKihDxpq"))()
local Enabled = loadstring(game:HttpGet("https://raw.githubusercontent.com/DemixPro/Kometa/main/Info.lua"))()

if not Enabled then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DemixPro/Kometa/main/Library.lua"))()

    local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

    local Window = Library:Window("Kometa", PlaceName, "K")

    local Gui = game.CoreGui.Library
    local GuiGuid = game:GetService("HttpService"):GenerateGUID(false)
    Gui.Name = GuiGuid
    local Gui = game.CoreGui[GuiGuid]

    local Info = Window:Tab("Info")

    Info:Label("Script is disalbed(")
    Info:Label("We sorry")
    Info:Button(
        "Discord:Demix#1509 (Press to copy)",
        function()
            setclipboard("Demix#1509")
        end
    )
    Info:Button(
        "Remove gui",
        function()
            for i = 1, 5 do
                Gui:Destroy()
            end
        end
    )
else
    local Whitelisted = false

    for i, v in pairs(WhiteList) do
        if HWID == v then
            Whitelisted = true
        end
    end
    if Whitelisted == false then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DemixPro/Kometa/main/Library.lua"))()

        local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

        local Window = Library:Window("Kometa", PlaceName, "K")

        local Gui = game.CoreGui.Library
        local GuiGuid = game:GetService("HttpService"):GenerateGUID(false)
        Gui.Name = GuiGuid
        local Gui = game.CoreGui[GuiGuid]

        local Info = Window:Tab("Info")

        Info:Label("You are not whitelisted!")
        Info:Label("If you wanna buy script you can contact to me")
        Info:Button(
            "Discord:Demix#1509 (Press to copy)",
            function()
                setclipboard("Demix#1509")
            end
        )
        Info:Button(
            "Remove gui",
            function()
                for i = 1, 5 do
                    Gui:Destroy()
                end
            end
        )
    else
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DemixPro/Kometa/main/Library.lua"))()

        local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

        local Window = Library:Window("Kometa", PlaceName, "K")

        local Gui = game.CoreGui.Library
        local GuiGuid = game:GetService("HttpService"):GenerateGUID(false)
        Gui.Name = GuiGuid
        local Gui = game.CoreGui[GuiGuid]

        _G.NotInstantTP = false
        _G.NoBallTp = false
        _G.UL = false
        _G.RandomRank = false
        _G.BallTpSpeed = 0.03
        _G.RainbowRankTime = 0.1
        _G.RespawnPercent = 45

        local Version = "20.0A"

        local Credits = Window:Tab("Credits")
        local Player = Window:Tab("Player")
        local Players = Window:Tab("Players")
        local Teleports = Window:Tab("Teleports")
        local Visuals = Window:Tab("Visuals")
        local AutoFarm = Window:Tab("AutoFarm")
        local Aura = Window:Tab("AuraCustomer")
        local Settings = Window:Tab("Settings")

        local function GetBall()
            local Fist = game:GetService("Players").LocalPlayer.PrivateStats.FistStrength.Value
            local Ball = ""

            if Fist >= 999 and Fist <= 10000 then
                Ball = "EnergySphere1"
            elseif Fist >= 9999 and Fist <= 100000 then
                Ball = "EnergySphere2"
            elseif Fist >= 99999 and Fist <= 1000000 then
                Ball = "EnergySphere3"
            elseif Fist >= 999999 and Fist <= 10000000 then
                Ball = "EnergySphere4"
            elseif Fist >= 9999999 and Fist <= 100000000 then
                Ball = "EnergySphere5"
            elseif Fist >= 99999999 and Fist <= 10000000000 then
                Ball = "EnergySphere6"
            elseif Fist >= 9999999999 and Fist <= 1000000000000 then
                Ball = "EnergySphere7"
            elseif Fist >= 999999999999 and Fist <= 1000000000000000 then
                Ball = "EnergySphere8"
            elseif Fist >= 999999999999999 then
                Ball = "EnergySphere9"
            end

            return Ball
        end

        Credits:Label("Thank for purchasing," .. game.Players.LocalPlayer.Name .. "!")
        Credits:Label("Current version:" .. Version)
        Credits:Label("If you need help you can contact to us")
        Credits:Button(
            "Script by:Demix#1509 (Press to copy discord)",
            function()
                setclipboard("Demix#1509")
            end
        )
        Credits:Label("Obfuscator:Secret :)")
        Credits:Button(
            "Library:VLib (Press to copy link)",
            function()
                setclipboard("https://raw.githubusercontent.com/DemixPro/Kometa/main/Library.lua")
            end
        )
        Settings:Button(
            "Destroy",
            function()
                for i = 1, 5 do
                    Gui:Destroy()
                end
            end
        )
        Settings:Textbox(
            "Rainbow Rank Change Time",
            "",
            function(a)
                _G.RainbowRankTime = tonumber(a)
            end
        )

        Player:Toggle(
            "Rainbow Weights",
            function(bool)
                _G.RainbowWeights = bool
                while _G.RainbowWeights do
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight1"})
                    wait(_G.RainbowWeightTime)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight2"})
                    wait(_G.RainbowWeightTime)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight3"})
                    wait(_G.RainbowWeightTime)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight4"})
                    wait(_G.RainbowWeightTime)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Unequip"})
                end
            end
        )
        Player:Toggle(
            "Rainbow Rank",
            function(bool)
                _G.RainbowRanks = bool
                while _G.RainbowRanks do
                    if _G.RandomRank then
                        local Arguments = {
                            [1] = {
                                [1] = "ChangeRankEmblem",
                                [2] = math.random(1, game:GetService("Players").LocalPlayer.PrivateStats.Rank.Value)
                            }
                        }
                        game.ReplicatedStorage["RemoteEvent"]:FireServer(unpack(Arguments))
                        wait(_G.RainbowRankTime)
                    else
                        for i = 1, game:GetService("Players").LocalPlayer.PrivateStats.Rank.Value do
                            wait(_G.RainbowRankTime)
                            local Arguments = {
                                [1] = {
                                    [1] = "ChangeRankEmblem",
                                    [2] = i
                                }
                            }
                            game.ReplicatedStorage["RemoteEvent"]:FireServer(unpack(Arguments))
                        end
                    end
                end
            end
        )
        Player:Toggle(
            "Auto Punch",
            function(bool)
                _G.AutoC = bool
                while _G.AutoC do
                    local ohTable1 = {
                        [1] = "Skill_Punch",
                        [2] = "Right"
                    }

                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
                    wait()
                end
            end
        )
        Player:Toggle(
            "Loop invisible",
            function(bool)
                _G.LoopInvis = bool
                while _G.LoopInvis do
                    local args = {
                        [1] = {
                            [1] = "Skill_Invisible",
                            [2] = "Start"
                        }
                    }
                    task.wait()
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                end
                if _G.LoopInvis == false then
                    local args = {
                        [1] = {
                            [1] = "Skill_Invisible",
                            [2] = "Stop"
                        }
                    }
                    task.wait()
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                end
            end
        )
        Player:Toggle(
            "Stack",
            function(bool)
                _G.Stack = bool
                while _G.Stack do
                    local Sphere = GetBall()
                    local args = {[1] = {[1] = "Skill_SpherePunch", [2] = Vector3.new(x, 100000, z)}}
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                    if _G.UL then
                        random = math.random(1, 2)
                        if random == 1 then
                            local ohTable1 = {
                                [1] = "Skill_BulletPunch",
                                [2] = "Left",
                                [3] = Vector3.new(x, 100000, z)
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
                        elseif random == 2 then
                            local ohTable1 = {
                                [1] = "Skill_BulletPunch",
                                [2] = "Right",
                                [3] = Vector3.new(x, 100000, z)
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
                        end
                    end
                    if not _G.NoBallTp then
                        for i, v in ipairs(game:GetService("Workspace").Storage:GetChildren()) do
                            if v.Name == Sphere then
                                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                        end
                    end
                    if not _G.NotInstantTP then
                        task.wait()
                    elseif _G.NotInstantTP then
                        task.wait(_G.BallTpSpeed)
                    end
                end
            end
        )
        Player:Toggle(
            "No void (No tools)",
            function(bool)
                _G.NoVoid = bool
                while _G.NoVoid do
                    task.wait()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools(

                        )
                    end
                    game.Players.LocalPlayer.Backpack:ClearAllChildren()
                end
                if bool == false then
                    local args = {
                        [1] = {
                            [1] = "Respawn"
                        }
                    }
                    Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                    wait(2)
                    game.Players.LocalPlayer.Character.ForceField:Destroy()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
                    wait(1.5)
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
                end
            end
        )
        Player:Toggle(
            "No Void (Remove void)",
            function(bool)
                if bool == true then
                    game.Workspace.FallenPartsDestroyHeight = -math.huge
                end
                if bool == false then
                    game.Workspace.FallenPartsDestroyHeight = -500
                end
            end
        )
        Player:Toggle(
            "Void Protect",
            function(bool)
                _G.VoidProtect = bool
                while _G.VoidProtect do
                    local Y = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
                    if Y <= 5 then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                        wait(.2)
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                    end
                    task.wait()
                end
            end
        )
        Player:Toggle(
            "Safe zone everything (Buggs)",
            function(bool)
                _G.SafeZoneHack = bool
                if _G.SafeZoneHack then
                    local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(434.5519104003906, 249.19729614257812, 878.0158081054688)
                    wait(.2)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
                    wait()
                end
                while _G.SafeZoneHack do
                    for i = 1, 4 do
                        game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight" .. i})
                        task.wait()
                    end
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Uneqip"})
                end
            end
        )
        Player:Toggle(
            "Anti-PP (Rainbow weights)",
            function(bool)
                _G.AntiPP = bool
                while _G.AntiPP do
                    for i = 1, 4 do
                        game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight" .. i})
                        task.wait()
                    end
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Unequip"})
                end
            end
        )
        Player:Toggle(
            "Ball draw",
            function(bool)
                _G.BallDraw = bool
                while _G.BallDraw and task.wait() do
                    local args = {
                        [1] = {[1] = "Skill_SpherePunch", [2] = Vector3.new(x, 9999999999999999999999999999999999, z)}
                    }
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                end
            end
        )
        Player:Toggle(
            "Ear rape",
            function(bool)
                _G.EarRape = bool
                while _G.EarRape do
                    for k, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                        if v:IsA("Sound") then
                            v:Play()
                        end
                    end
                    wait(3)
                end
                if _G.EarRape == false then
                    for k, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                        if v:IsA("Sound") then
                            v:Stop()
                        end
                    end
                end
            end
        )
        Player:Toggle(
            "Death return",
            function(bool)
                _G.DeathReturn = bool
                while _G.DeathReturn do
                    if game:GetService("Lighting").Blur.Enabled then
                        game:GetService("Players").LocalPlayer.PlayerGui.IntroGui.Enabled = false
                        game:GetService("Lighting").Blur.Enabled = false
                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Enabled = true
                        local args = {
                            [1] = {
                                [1] = "Respawn"
                            }
                        }
                        Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                        wait(2)
                        game.Players.LocalPlayer.Character.ForceField:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
                        wait(1.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
                        game:GetService("Lighting").Blur.Size = 0
                    end
                    task.wait()
                end
            end
        )
        Player:Toggle(
            "any% HP Respawn",
            function(bool)
                _G.TFPercentRefresh = bool
                while _G.TFPercentRefresh do
					local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
                    local HP = tonumber(Humanoid.Health)
                    local MinHP = tonumber(Humanoid.MaxHealth) * tonumber(_G.RespawnPercent) / 100
                    if HP ~= 0 then
                        if HP <= MinHP then
                            local args = {
                                [1] = {
                                    [1] = "Respawn"
                                }
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(123321, 321, 123321)
							wait(1.7)
                            game.Players.LocalPlayer.Character.ForceField:Destroy()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
                        end
                    end
                    task.wait()
                end
            end
        )
        Player:Toggle(
            "Remove soul reap scytle",
            function(bool)
                _G.NoScytle = bool
                while _G.NoScytle do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Scythe") then
                        game.Players.LocalPlayer.Character.Scythe:Destroy()
                    end
                    task.wait()
                end
            end
        )
        Player:Button(
            "Server lag",
            function()
                for i = 1, 1500 do
                    local A_1 = {
                        [1] = "Skill_KillingIntent_Start"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        Player:Button(
            "Remove effect from server lag",
            function(bool)
                wait()
                for k, v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if v.Name == "KillingIntentPart" then
                        v:Destroy()
                    end
                end
            end
        )
        Players:Textbox(
            "Player",
            "",
            function(a)
                _G.a = a
                _G.RandomF = false
                if _G.a == "random" then
                    for i, v in pairs(game:FindService("Players"):GetPlayers()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            if _G.RandomF == false then
                                local random = math.random(0, 1)
                                if random == 1 then
                                    _G.a = v.Name
                                    _G.RandomF = true
                                end
                            end
                        end
                    end
                end
                local String = _G.a
                for i, v in pairs(game:FindService("Players"):GetPlayers()) do
                    if v.DisplayName:lower():sub(1, #String) == String:lower() then
                        _G.a = v.DisplayName
                    end
                end
                if _G.a == "me" then
                    _G.a = game.Players.LocalPlayer.Name
                end
                for k, v in pairs(game:GetService("Players"):GetChildren()) do
                    if v.DisplayName == _G.a then
                        _G.a = v.Name
                    end
                end
                for i, v in pairs(game:FindService("Players"):GetPlayers()) do
                    if v.Name:lower():sub(1, #String) == String:lower() then
                        _G.a = v.Name
                    end
                end
                _G.RandomF = false
                _G.SelectedPlr = _G.a
            end
        )
        Players:Toggle(
            "Loop kill",
            function(bool)
                _G.KillSpam = bool
                while _G.KillSpam do
                    if _G.SelectedPlr == "all" then
                        for k, v in pairs(game:GetService("Players"):GetChildren()) do
                            if v.Name ~= game.Players.LocalPlayer.Name then
                                game.Players[v.Name].Character.HumanoidRootPart.CFrame =
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
                                wait(.25)
                            end
                        end
                        local ohTable1 = {
                            [1] = "Skill_Punch",
                            [2] = "Right"
                        }
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
                    else
                        game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
                        wait(.25)
                        local ohTable1 = {
                            [1] = "Skill_Punch",
                            [2] = "Right"
                        }

                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(ohTable1)
                    end
                end
            end
        )
        Players:Toggle(
            "Loop teleport",
            function(bool)
                _G.LoopTp = bool
                while _G.LoopTp do
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame
                end
            end
        )
        Players:Button(
            "Teleport",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame
            end
        )
        Players:Button(
            "Use soul attack",
            function()
                if _G.SelectedPlr == "all" then
                    for k, v in pairs(game:GetService("Players"):GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            _G.SelectedPlra = v.Name
                            local XA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
                            local YA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                            local ZA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                            local X = game.Players[_G.SelectedPlra].Character.HumanoidRootPart.CFrame.X
                            local Y = game.Players[_G.SelectedPlra].Character.HumanoidRootPart.CFrame.Y - 25
                            local Z = game.Players[_G.SelectedPlra].Character.HumanoidRootPart.CFrame.Z
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)
                            wait()
                            game.ReplicatedStorage.RemoteEvent:FireServer(
                                {"Skill_SoulAttack_Start", game.Players[_G.SelectedPlra]}
                            )
                            game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
                            wait(.25)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XA, YA, ZA)
                        end
                    end
                else
                    local XA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
                    local YA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                    local ZA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                    local X = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.X
                    local Y = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.Y - 25
                    local Z = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.Z
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)
                    wait()
                    game.ReplicatedStorage.RemoteEvent:FireServer(
                        {"Skill_SoulAttack_Start", game.Players[_G.SelectedPlr]}
                    )
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
                    wait(.25)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XA, YA, ZA)
                end
            end
        )
        Players:Button(
            "Use soul reap",
            function()
                if game.Players[_G.SelectedPlr].Character.Humanoid.Health ~= 0 then
                    local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    local A_1 = {
                        [1] = "Skill_SoulReap",
                        [2] = game:GetService("Players")[_G.SelectedPlr]
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                    task.wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
                end
            end
        )
        Players:Button(
            "Invis soul attack",
            function()
                if _G.SelectedPlr == "all" then
                    for k, v in pairs(game:GetService("Players"):GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            _G.SelectedPlra = v.Name
                            local XA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
                            local YA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                            local ZA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                            local X = game.Players[_G.SelectedPlra].Character.HumanoidRootPart.CFrame.X
                            local Y = game.Players[_G.SelectedPlra].Character.HumanoidRootPart.CFrame.Y - 25
                            local Z = game.Players[_G.SelectedPlra].Character.HumanoidRootPart.CFrame.Z
                            for i = 1, 20 do
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)
                                wait()
                            end
                            for i = 1, 10 do
                                game.ReplicatedStorage.RemoteEvent:FireServer(
                                    {"Skill_SoulAttack_Start", game.Players[_G.SelectedPlra]}
                                )
                                wait(.1)
                            end
                            wait(.25)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XA, YA, ZA)
                            wait(3)
                            game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
                        end
                    end
                else
                    local XA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
                    local YA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                    local ZA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                    local X = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.X
                    local Y = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.Y - 25
                    local Z = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.Z
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)
                    wait()
                    for i = 1, 10 do
                        game.ReplicatedStorage.RemoteEvent:FireServer(
                            {"Skill_SoulAttack_Start", game.Players[_G.SelectedPlr]}
                        )
                        wait(.1)
                    end
                    wait(.25)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XA, YA, ZA)
                    wait(3)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
                end
            end
        )
        Teleports:Label("--------------Body--------------")
        Teleports:Button(
            "Cold water",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(366.9760437011719, 249.7388153076172, -444.0030517578125)
            end
        )
        Teleports:Button(
            "Fire",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(356.1064758300781, 263.7749328613281, -492.36236572265625)
            end
        )
        Teleports:Button(
            "IceBerg",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1635.42529296875, 259.5495300292969, 2248.265625)
            end
        )
        Teleports:Button(
            "Tornado",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2296.721435546875, 977.1748046875, 1072.8370361328125)
            end
        )
        Teleports:Button(
            "Volcano",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2042.15673828125, 714.2822875976562, -1892.11376953125)
            end
        )
        Teleports:Button(
            "Green fire",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-255.31483459472656, 286.8975830078125, 978.4642333984375)
            end
        )
        Teleports:Button(
            "Acid",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-277.3548278808594, 281.4271240234375, 990.4716796875)
            end
        )
        Teleports:Button(
            "Lava",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-277.4248962402344, 281.4273681640625, 1007.2789916992188)
            end
        )
        Teleports:Label("--------------Fist--------------")
        Teleports:Button(
            "Rock",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(409.29150390625, 271.0437927246094, 978.1526489257812)
            end
        )
        Teleports:Button(
            "Crystal",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2276.59326171875, 1977.2232666015625, 1051.4776611328125)
            end
        )
        Teleports:Button(
            "Blue star",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1176.27001953125, 4789.29736328125, -2294.10498046875)
            end
        )
        Teleports:Button(
            "Atom star",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1379.468017578125, 9274.4033203125, 1647.9232177734375)
            end
        )
        Teleports:Button(
            "Sun",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-366.5953674316406, 15735.1494140625, -5.918274879455566)
            end
        )
        Teleports:Label("--------------Psychic--------------")
        Teleports:Button(
            "Island 1",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2529.554931640625, 5486.3955078125, -533.923828125)
            end
        )
        Teleports:Button(
            "Island 2",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2561.972900390625, 5500.91943359375, -438.8150939941406)
            end
        )
        Teleports:Button(
            "Bridge",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2582.4169921875, 5516.46630859375, -502.429931640625)
            end
        )
        Teleports:Button(
            "Waterfall",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2544.818359375, 5412.4560546875, -495.4271545410156)
            end
        )
        Teleports:Label("--------------Other--------------")
        Teleports:Button(
            "Center",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(118.99668884277344, 270.5973205566406, 889.5672607421875)
            end
        )
        Teleports:Button(
            "Safe zone",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(434.5519104003906, 249.19729614257812, 878.0158081054688)
            end
        )
        Teleports:Button(
            "City port",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(325.72796630859375, 249.2550811767578, -227.4480743408203)
            end
        )
        Teleports:Button(
            "Safe zone (Baseplate)",
            function()
                Baseplate = Instance.new("Part")
                Baseplate.Anchored = true
                Baseplate.CanCollide = true
                Baseplate.Size = Vector3.new(100, 1, 100)
                Baseplate.Position = Vector3.new(-2276.814208984375, 500000, 1051.22021484375)
                Baseplate.Parent = workspace
                Baseplate.Name = "Baseplate"
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2276.814208984375, 500001, 1051.22021484375)
            end
        )
        Player:Button(
            "Remove name",
            function()
                game.Players.LocalPlayer.Character.Head.NameBbGui:Destroy()
            end
        )
        Player:Button(
            "Remove rank",
            function()
                game.Players.LocalPlayer.Character.Head.RankBbGui:Destroy()
            end
        )
        Player:Button(
            "Refresh",
            function()
                local args = {
                    [1] = {
                        [1] = "Respawn"
                    }
                }
                Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                wait(2)
                game.Players.LocalPlayer.Character.ForceField:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
                wait(1.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
            end
        )
        Player:Button(
            "God Mode",
            function()
                local Temp = game:GetService("ReplicatedStorage").GhostRiderPart.CFrame
                game:GetService("ReplicatedStorage").GhostRiderPart.CFrame =
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(4)
                stopQuest = true

                function NoKill()
                    local Character = game:GetService "Players".LocalPlayer.Character
                    local mt = getrawmetatable(game)
                    local OldIndex = mt.__index
                    local OldNameCall = mt.__namecall

                    setreadonly(mt, false)

                    mt.__namecall =
                        newcclosure(
                        function(Self, ...)
                            local args = {...}
                            local NameCallMethod = getnamecallmethod()
                            if not checkcaller() and Self == Character and NameCallMethod == "BreakJoints" then
                                return nil
                            end
                            return OldNameCall(Self, ...)
                        end
                    )

                    setreadonly(mt, true)
                end

                function fixCam()
                    local CurrentCamera = workspace.CurrentCamera
                    CurrentCamera.CameraSubject = game.Players["LocalPlayer"].Character.Humanoid
                    CurrentCamera.CameraType = Enum.CameraType.Custom
                end

                function SetSpeed(speed)
                    local isSpeed = assert(tonumber(speed), "Must be a number")
                    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speed)
                end

                function CanAttack()
                    local MainScript = game:GetService("Players").LocalPlayer.PlayerScripts.MainScript

                    while stopQuest do
                        wait(0.01)
                        getsenv(MainScript).TalkingOnQuest = false
                    end
                end
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
                NoKill()
                fixCam()
                CanAttack()
                game:GetService("Workspace").Main.GhostRiderCollisionPart.CFrame = Temp
            end
        )
        Players:Button(
            "Get stats",
            function()
                function round(num, numDecimalPlaces)
                    local mult = 10 ^ (numDecimalPlaces or 0)
                    return math.floor(num * mult + 0.5) / mult
                end

                function converttoletter(num)
                    if num / 1e21 >= 1 then
                        newnum = num / 1e21
                        return round(newnum, 6) .. "Sx"
                    elseif num / 1e18 >= 1 then
                        newnum = num / 1e18
                        return round(newnum, 6) .. "Qi"
                    elseif num / 1e15 >= 1 then
                        newnum = num / 1e15
                        return round(newnum, 6) .. "Qa"
                    elseif num / 1e12 >= 1 then
                        newnum = num / 1e12
                        return round(newnum, 6) .. "T"
                    elseif num / 1e09 >= 1 then
                        newnum = num / 1e09
                        return round(newnum, 6) .. "B"
                    elseif num / 1e06 >= 1 then
                        newnum = num / 1e06
                        return round(newnum, 6) .. "M"
                    elseif num / 1e03 >= 1 then
                        newnum = num / 1e03
                        return round(newnum, 6) .. "K"
                    else
                        return num
                    end
                end
                game:GetService("StarterGui"):SetCore(
                    "SendNotification",
                    {
                        Title = "Fist:" ..
                            converttoletter(
                                string.format("%.0f", game.Players[_G.SelectedPlr].PrivateStats.FistStrength.Value)
                            ),
                        Text = "Body:" ..
                            converttoletter(
                                string.format("%.0f", game.Players[_G.SelectedPlr].PrivateStats.BodyToughness.Value)
                            ) ..
                                "\nSpeed:" ..
                                    converttoletter(
                                        string.format(
                                            "%.0f",
                                            game.Players[_G.SelectedPlr].PrivateStats.MovementSpeed.Value
                                        )
                                    ) ..
                                        "\nJump:" ..
                                            converttoletter(
                                                string.format(
                                                    "%.0f",
                                                    game.Players[_G.SelectedPlr].PrivateStats.JumpForce.Value
                                                )
                                            ) ..
                                                "\nPsychic:" ..
                                                    converttoletter(
                                                        string.format(
                                                            "%.0f",
                                                            game.Players[_G.SelectedPlr].PrivateStats.PsychicPower.Value
                                                        )
                                                    ),
                        Duration = 5,
                        Button1 = "Okay"
                    }
                )
            end
        )
        Players:Toggle(
            "Loop soul attack",
            function(bool)
                _G.LoopSA = bool
                while _G.LoopSA do
                    task.wait()
                    if game.Players[_G.SelectedPlr].Character.Humanoid.Health ~= 0 then
                        local XA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X
                        local YA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y
                        local ZA = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                        local X = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.X
                        local Y = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.Y - 25
                        local Z = game.Players[_G.SelectedPlr].Character.HumanoidRootPart.CFrame.Z
                        for i = 1, 20 do
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(X, Y, Z)
                            wait()
                        end
                        game.ReplicatedStorage.RemoteEvent:FireServer(
                            {"Skill_SoulAttack_Start", game.Players[_G.SelectedPlr]}
                        )
                        game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
                        wait(.25)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XA, YA, ZA)
                    end
                end
            end
        )
        Players:Toggle(
            "Loop reap",
            function(bool)
                _G.LoopReap = bool
                while _G.LoopReap do
                    task.wait()
                    if _G.SelectedPlr == "all" then
                        for k, v in pairs(game:GetService("Players"):GetChildren()) do
                            local A_1 = {
                                [1] = "Skill_SoulReap",
                                [2] = v
                            }
                            local Event = game:GetService("ReplicatedStorage").RemoteEvent
                            Event:FireServer(A_1)
                            wait(.57)
                        end
                    else
                        if game.Players[_G.SelectedPlr].Character.Humanoid.Health ~= 0 then
                            local A_1 = {
                                [1] = "Skill_SoulReap",
                                [2] = game:GetService("Players")[_G.SelectedPlr]
                            }
                            local Event = game:GetService("ReplicatedStorage").RemoteEvent
                            Event:FireServer(A_1)
                        end
                    end
                end
            end
        )
        Players:Toggle(
            "Player Stack",
            function(bool)
                _G.PlayerChosen = _G.SelectedPlr
                _G.da = bool
                while _G.da do
                    local Sphere = GetBall()
                    if not _G.NotInstantTP then
                        task.wait()
                    elseif _G.NotInstantTP then
                        task.wait(_G.BallTpSpeed)
                    end
                    if _G.SelectedPlr == "all" then
                        for k, z in pairs(game:GetService("Players"):GetChildren()) do
                            _G.PlayerChosen = z.Name
                            if game.Players:FindFirstChild(_G.PlayerChosen).Character.Humanoid.Health ~= 0 then
                                local args = {[1] = {[1] = "Skill_SpherePunch", [2] = Vector3.new(x, 10000000000, z)}}
                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                                for i = 1, 7 do
                                    for i, v in ipairs(game:GetService("Workspace").Storage:GetChildren()) do
                                        if _G.da == true then
                                            if v.Name == Sphere then
                                                v.CFrame =
                                                    CFrame.new(
                                                    game.Players[_G.PlayerChosen].Character.HumanoidRootPart.Position.X,
                                                    game.Players[_G.PlayerChosen].Character.HumanoidRootPart.Position.Y,
                                                    game.Players[_G.PlayerChosen].Character.HumanoidRootPart.Position.Z
                                                )
                                                if not _G.NotInstantTP then
                                                    task.wait()
                                                elseif _G.NotInstantTP then
                                                    task.wait(_G.BallTpSpeed)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    else
                        pcall(
                            function()
                                if game.Players:FindFirstChild(_G.PlayerChosen).Character.Humanoid.Health ~= 0 then
                                    if
                                        not game.Players:FindFirstChild(_G.PlayerChosen).Character:FindFirstChild(
                                            "SafeZoneShield"
                                        )
                                     then
                                        local Sphere = GetBall()
                                        local x = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x
                                        local z = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z

                                        local x2 =
                                            game.Players:FindFirstChild(_G.PlayerChosen).Character.HumanoidRootPart.Position.x
                                        local y =
                                            game.Players:FindFirstChild(_G.PlayerChosen).Character.HumanoidRootPart.Position.y
                                        local z2 =
                                            game.Players:FindFirstChild(_G.PlayerChosen).Character.HumanoidRootPart.Position.z
                                        local args = {[1] = {[1] = "Skill_SpherePunch", [2] = Vector3.new(x, 10000, z)}}
                                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                                        for i, v in ipairs(game:GetService("Workspace").Storage:GetChildren()) do
                                            if v.Name == Sphere then
                                                v.CFrame = CFrame.new(x2, y, z2)
                                            end
                                        end
                                        task.wait()
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )
        AutoFarm:Button(
            "Remove Waist",
            function()
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Label("-----Body-----")
        AutoFarm:Button(
            "Farm in 100+",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(366.1244812011719, 249.72930908203125, -445.01043701171875)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Button(
            "Farm in 10K",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(356.9728088378906, 263.76544189453125, -492.858642578125)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Button(
            "Farm in 100K",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(1638.166015625, 259.6019287109375, 2249.19921875)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Button(
            "Farm in 1M",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2297.7958984375, 977.2603759765625, 1070.6785888671875)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
                Part = Instance.new("Part")
                Part.Anchored = true
                Part.CanCollide = true
                Part.Size = Vector3.new(50, 1, 50)
                Part.Position = Vector3.new(-2297.7958984375, 974.2603759765625, 1070.6785888671875)
                Part.Parent = workspace
            end
        )
        AutoFarm:Button(
            "Farm in 10M",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-2044.7109375, 720.58203125, -1879.5096435546875)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Button(
            "Farm in 1B",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-251.8973846435547, 286.8880615234375, 979.214599609375)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Button(
            "Farm in 100B",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-278.2469482421875, 281.4176025390625, 991.6387329101562)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Button(
            "Farm in 10T",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-278.2888488769531, 281.4178466796875, 1007.1595458984375)
                wait(.5)
                game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
            end
        )
        AutoFarm:Label("-----Psy-----")
        AutoFarm:Toggle(
            "Farm pp 1M",
            function(bool)
                _G.PPa = bool
                while _G.PPa do
                    task.wait()
                    _G.SpeedFarm = false
                    _G.JumpFarm = false
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Unequip"})
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-2531.819091796875, 5486.47607421875, -533.8792724609375)
                    local A_1 = {
                        [1] = "+PP3"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm pp 1B",
            function(bool)
                _G.PPb = bool
                while _G.PPb do
                    task.wait()
                    _G.SpeedFarm = false
                    _G.JumpFarm = false
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Unequip"})
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-2560.724853515625, 5500.83984375, -439.1802062988281)
                    local A_1 = {
                        [1] = "+PP4"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm pp 1T",
            function(bool)
                _G.PPc = bool
                while _G.PPc do
                    task.wait()
                    _G.SpeedFarm = false
                    _G.JumpFarm = false
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Unequip"})
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-2584.1328125, 5516.57470703125, -501.7798767089844)
                    local A_1 = {
                        [1] = "+PP5"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm pp 1Qa",
            function(bool)
                _G.PPx = bool
                while _G.PPx do
                    task.wait()
                    _G.SpeedFarm = false
                    _G.JumpFarm = false
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Unequip"})
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-2546.3359375, 5412.53466796875, -496.21795654296875)
                    local A_1 = {
                        [1] = "+PP6"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Label("-----Fist-----")
        AutoFarm:Toggle(
            "Farm fist Rock",
            function(bool)
                _G.Fista = bool
                while _G.Fista do
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(409.85260009765625, 270.9734191894531, 977.8851928710938)
                    local A_1 = {
                        [1] = "+FS2"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm fist Crystal",
            function(bool)
                _G.Fistb = bool
                while _G.Fistb do
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-2276.658447265625, 1943.37939453125, 1053.1522216796875)
                    local A_1 = {
                        [1] = "+FS3"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm fist 1B",
            function(bool)
                _G.Fistc = bool
                while _G.Fistc do
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(1176.27001953125, 4789.2978515625, -2294.10498046875)
                    local A_1 = {
                        [1] = "+FS4"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm fist 100B",
            function(bool)
                _G.Fistr = bool
                while _G.Fistr do
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(1379.468017578125, 9274.4033203125, 1647.9232177734375)
                    local A_1 = {
                        [1] = "+FS5"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Farm fist 10T",
            function(bool)
                _G.Fistz = bool
                while _G.Fistz do
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(-366.5953674316406, 15735.1494140625, -5.918274879455566)
                    local A_1 = {
                        [1] = "+FS6"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        Players:Button(
            "Void (CAN BE KICKED)",
            function()
                if _G.SelectedPlr == "all" then
                    for a, plr in pairs(game.Players:GetChildren()) do
                        if game.Players[target] then
                            if game.Players[target].Character.Humanoid.Health ~= 0 then
                                local target = plr.Name
                                game.Players.LocalPlayer.Character.Head.NameBbGui:Destroy()
                                game.Players.LocalPlayer.Character.Head.RankBbGui:Destroy()
                                Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                game.Players.LocalPlayer.Character.Humanoid.Name = 1
                                local l = game.Players.LocalPlayer.Character["1"]:Clone()
                                l.Parent = game.Players.LocalPlayer.Character
                                l.Name = "Humanoid"
                                wait(.2)
                                game.Players.LocalPlayer.Character["1"]:Destroy()
                                workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                                game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                                local v = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                                v.Parent = game.Players.LocalPlayer.Character
                                wait(.5)
                                v.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                                wait()
                                firetouchinterest(game.Players[target].Character.HumanoidRootPart, v.Handle, 0)
                                wait()
                                firetouchinterest(game.Players[target].Character.HumanoidRootPart, v.Handle, 1)
                                wait()
                                pcall(
                                    function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5, 999999)
                                    end
                                )
                                wait(.3)
                                local args = {
                                    [1] = {
                                        [1] = "Respawn"
                                    }
                                }
                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                                wait(2)
                                game.Players.LocalPlayer.Character.ForceField:Destroy()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
                            end
                        end
                    end
                else
                    if game.Players[_G.SelectedPlr] then
                        if game.Players[_G.SelectedPlr].Character.Humanoid.Health ~= 0 then
                            if game.Players.LocalPlayer.Character.Head:FindFirstChild("NameBbGui") then
                                game.Players.LocalPlayer.Character.Head.NameBbGui:Destroy()
                            end
                            if game.Players.LocalPlayer.Character.Head:FindFirstChild("RankBbGui") then
                                game.Players.LocalPlayer.Character.Head.RankBbGui:Destroy()
                            end
                            Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                            game.Players.LocalPlayer.Character.Humanoid.Name = 1
                            local l = game.Players.LocalPlayer.Character["1"]:Clone()
                            l.Parent = game.Players.LocalPlayer.Character
                            l.Name = "Humanoid"
                            wait(.2)
                            game.Players.LocalPlayer.Character["1"]:Destroy()
                            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                            game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            local v = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                            v.Parent = game.Players.LocalPlayer.Character
                            wait(.5)
                            v.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                            firetouchinterest(game.Players[_G.SelectedPlr].Character.HumanoidRootPart, v.Handle, 0)
                            wait()
                            firetouchinterest(game.Players[_G.SelectedPlr].Character.HumanoidRootPart, v.Handle, 1)
                            wait()
                            pcall(
                                function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                        CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5, 999999)
                                end
                            )
                            wait(.3)
                            local args = {
                                [1] = {
                                    [1] = "Respawn"
                                }
                            }
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            wait(2)
                            game.Players.LocalPlayer.Character.ForceField:Destroy()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
                        end
                    end
                end
            end
        )
        Players:Button(
            "Bring (CAN BE KICKED)",
            function()
                if game.Players[_G.SelectedPlr] then
                    if game.Players[_G.SelectedPlr].Character.Humanoid.Health ~= 0 then
                        if game.Players.LocalPlayer.Character.Head:FindFirstChild("NameBbGui") then
                            game.Players.LocalPlayer.Character.Head.NameBbGui:Destroy()
                        end
                        if game.Players.LocalPlayer.Character.Head:FindFirstChild("RankBbGui") then
                            game.Players.LocalPlayer.Character.Head.RankBbGui:Destroy()
                        end
                        Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        game.Players.LocalPlayer.Character.Humanoid.Name = 1
                        local l = game.Players.LocalPlayer.Character["1"]:Clone()
                        l.Parent = game.Players.LocalPlayer.Character
                        l.Name = "Humanoid"
                        wait(.2)
                        game.Players.LocalPlayer.Character["1"]:Destroy()
                        workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                        local v = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
                        v.Parent = game.Players.LocalPlayer.Character
                        wait(.5)
                        v.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        firetouchinterest(game.Players[_G.SelectedPlr].Character.HumanoidRootPart, v.Handle, 0)
                        wait()
                        firetouchinterest(game.Players[_G.SelectedPlr].Character.HumanoidRootPart, v.Handle, 1)
                        wait()
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Position)
                            end
                        )
                        wait(.3)
                        local args = {
                            [1] = {
                                [1] = "Respawn"
                            }
                        }
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                        wait(2)
                        game.Players.LocalPlayer.Character.ForceField:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Pos)
                        wait(1.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, UwU)
                    end
                end
            end
        )
        Aura:Button(
            "Remove left aura 1",
            function()
                game:GetService("Players").LocalPlayer.Character.LeftUpperLeg.Aura1:Destroy()
            end
        )
        Aura:Button(
            "Remove left aura 2",
            function()
                game:GetService("Players").LocalPlayer.Character.LeftHand.Aura1:Destroy()
            end
        )
        Aura:Button(
            "Remove left aura 3",
            function()
                game:GetService("Players").LocalPlayer.Character.LeftHand.Aura2:Destroy()
            end
        )
        Aura:Button(
            "Remove left aura 4",
            function()
                game:GetService("Players").LocalPlayer.Character.LeftHand.Aura3:Destroy()
            end
        )
        Aura:Button(
            "Remove right aura 1",
            function()
                game:GetService("Players").LocalPlayer.Character.RightUpperLeg.Aura1:Destroy()
            end
        )
        Aura:Button(
            "Remove right aura 2",
            function()
                game:GetService("Players").LocalPlayer.Character.RightHand.Aura1:Destroy()
            end
        )
        Aura:Button(
            "Remove right aura 3",
            function()
                game:GetService("Players").LocalPlayer.Character.RightHand.Aura2:Destroy()
            end
        )
        Aura:Button(
            "Remove right aura 4",
            function()
                game:GetService("Players").LocalPlayer.Character.RightHand.Aura3:Destroy()
            end
        )
        Aura:Button(
            "Remove body aura",
            function()
                game:GetService("Players").LocalPlayer.Character.UpperTorso.Aura1:Destroy()
            end
        )
        Aura:Button(
            "Remove lighting",
            function()
                game:GetService("Players").LocalPlayer.Character.UpperTorso.Aura2:Destroy()
            end
        )
        AutoFarm:Label("Speed & Jump farm | DISABLE IF YOU WANT FARM PSY!!!")
        AutoFarm:Toggle(
            "Speed farm",
            function(bool)
                _G.SpeedFarm = bool
                while _G.SpeedFarm do
                    wait(.2)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight4"})
                    local A_1 = {
                        [1] = "+MS5"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        AutoFarm:Toggle(
            "Jump farm",
            function(bool)
                _G.JumpFarm = bool
                while _G.JumpFarm do
                    wait(.2)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Weight", "Weight4"})
                    local A_1 = {
                        [1] = "+JF5"
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        Player:Button(
            "Anti-afk",
            function()
                game:GetService("Players").LocalPlayer.Idled:Connect(
                    function()
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
                    end
                )
            end
        )
        Settings:Textbox(
            "Respawn percent",
            "",
            function(text)
                _G.RespawnPercent = tonumber(text)
            end
        )
        Settings:Toggle(
            "Random rank",
            function(bool)
                _G.RandomRank = bool
            end
        )
        Settings:Label("Stack edit")
        Settings:Toggle(
            "No ball tp",
            function(bool)
                _G.NoBallTp = bool
            end
        )
        Settings:Toggle(
            "Not instant ball tp",
            function(bool)
                _G.NotInstantTP = bool
            end
        )
        Settings:Textbox(
            "Ball tp delay",
            "",
            function(bool)
                _G.BallTpSpeed = tonumber(bool)
            end
        )
        Settings:Button(
            "Set normal speed",
            function()
                _G.BallTpSpeed = tonumber("0.03")
            end
        )
        Settings:Toggle(
            "Use lasers",
            function(bool)
                _G.UL = bool
            end
        )
        Visuals:Toggle(
            "Custom stats",
            function(bool)
                _G.CustomStats = bool
                if not _G.CustomStats then
                    local A_1 = {
                        [1] = "CheckStats",
                        [2] = 1,
                        [3] = 1,
                        [4] = 1,
                        [5] = 1,
                        [6] = 1
                    }
                    local Event = game:GetService("ReplicatedStorage").RemoteEvent
                    Event:FireServer(A_1)
                end
            end
        )
        Visuals:Textbox(
            "Fist Strength",
            "",
            function(text)
                while _G.CustomStats do
                    game:GetService("Players").LocalPlayer.PrivateStats.FistStrength.Value = text
                    task.wait()
                end
            end
        )
        Visuals:Textbox(
            "Body Toughness",
            "",
            function(text)
                while _G.CustomStats do
                    game:GetService("Players").LocalPlayer.PrivateStats.BodyToughness.Value = text
                    task.wait()
                end
            end
        )
        Visuals:Textbox(
            "Movement Speed",
            "",
            function(text)
                while _G.CustomStats do
                    game:GetService("Players").LocalPlayer.PrivateStats.MovementSpeed.Value = text
                    task.wait()
                end
            end
        )
        Visuals:Textbox(
            "Jump Force",
            "",
            function(text)
                while _G.CustomStats do
                    game:GetService("Players").LocalPlayer.PrivateStats.JumpForce.Value = text
                    task.wait()
                end
            end
        )
        Visuals:Textbox(
            "Psychic Power",
            "",
            function(text)
                while _G.CustomStats do
                    game:GetService("Players").LocalPlayer.PrivateStats.PsychicPower.Value = text
                    task.wait()
                end
            end
        )
        Visuals:Textbox(
            "Tokens",
            "",
            function(text)
                while _G.CustomStats do
                    game:GetService("Players").LocalPlayer.PrivateStats.Token.Value = text
                    task.wait()
                end
            end
        )
        Player:Slider(
            "Speed",
            0,
            1000,
            game.Players.LocalPlayer.PlayerGui.ScreenGui.MenuFrame.SettingFrame.SettingTxt15.TextBox.Text,
            function(Speed)
                local args = {
                    [1] = {
                        [1] = "Setting",
                        [2] = "SelectedMS",
                        [3] = Speed
                    }
                }

                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end
        )
        Player:Slider(
            "Jump Power",
            0,
            500,
            game.Players.LocalPlayer.PlayerGui.ScreenGui.MenuFrame.SettingFrame.SettingTxt16.TextBox.Text,
            function(JumpPower)
                local args = {
                    [1] = {
                        [1] = "Setting",
                        [2] = "SelectedJP",
                        [3] = JumpPower
                    }
                }

                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end
        )
        Player:Slider(
            "Fly Speed",
            0,
            1000,
            game.Players.LocalPlayer.PlayerGui.ScreenGui.MenuFrame.SettingFrame.SettingTxt17.TextBox.Text,
            function(FlySpeed)
                local args = {
                    [1] = {
                        [1] = "Setting",
                        [2] = "SelectedFS",
                        [3] = FlySpeed
                    }
                }

                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end
        )
    end
end
