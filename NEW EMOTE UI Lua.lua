local WindUI

if shared.WindUI then
    WindUI = shared.WindUI
else
    local ok, result = pcall(function()
        return loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
    end)

    if ok then
        WindUI = result
        shared.WindUI = WindUI
    else
        warn("Error al cargar WindUI:", result)
        WindUI = nil
    end
end

if not WindUI then
    warn("Mi mamada ya no sirve. WindUI no se pudo inicializar.")
    return
else
    print("Gud")
end

WindUI:Popup({
    Title = "All Emotes (TSB)",
    Icon = "user-round",
    Content = "By MIYKO",
    Buttons = {
        {
            Title = "oke",
            Icon = "user-round",
        }
    }
})

local function NotifyAll()
    WindUI:Notify({
        Title = "IMPORTANT",
        Content = "Use by u own risk",
        Icon = "info"
    })
end

local Window = WindUI:CreateWindow({
    Title = "All Emotes (TSB)",
    Author = "by MIYKO",
    Folder = "EPwHthings",
    NewElements = true,
    HideSearchBar = false,
    Background = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/IMG_20251205_130407.jpg",
    OpenButton = {
        Title = "Emotes",
        CornerRadius = UDim.new(1,0),
        StrokeThickness = 3,
        Enabled = true,
        Draggable = true,
        OnlyMobile = false,
        Color = ColorSequence.new(
            Color3.fromHex("#B90600"),
            Color3.fromHex("#FF000E")
        )
    }
})

local GamesTab = Window:Tab({
    Title = "Limited Emotes",
    Icon = "gamepad",
})

--____________________________________________
----------------------------------------------
--____________________________________________

GamesTab:Section({
    Title = "The Strongest",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local vu196 = game:GetService("Players").LocalPlayer.Character
        local v197 = {
            [0] = {
                SoundId = "rbxassetid://117787451950766",
                Volume = 2
            },
            [0.01] = {
                SoundId = "rbxassetid://97998065677521",
                Volume = 1.85
            },
            [2.29] = {
                SoundId = "rbxassetid://99535007576182",
                Looped = true,
                Volume = 2
            }
        }

        for delayTime, soundData in pairs(v197) do
            task.delay(delayTime, function()
                local sound = Instance.new("Sound")
                sound.SoundId = soundData.SoundId
                sound.Volume = soundData.Volume or 1
                sound.Looped = soundData.Looped or false
                sound.Parent = workspace
                sound:Play()
            end)
        end

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://86505219150915"
        vu196.Humanoid:LoadAnimation(anim):Play()

        task.delay(0.1, function()
            local bind = Instance.new("Folder")
            bind.Name = "PrideBind"
            bind.Parent = vu196
            bind:SetAttribute("EmoteProperty", true)

            require(game.ReplicatedStorage.Emotes.VFX):MainFunction({
                Character = vu196,
                vfxName = "Boss Raid",
                SpecificModule = game.ReplicatedStorage.Emotes.VFX,
                AnimSent = 86505219150915,
                RealBind = bind
            })
        end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/The_Strongest.png",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "The Fallen",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v231 = game:GetService("Players")
                local vu232 = game:GetService("ReplicatedStorage")
                local vu233 = v231.LocalPlayer.Character
                local v234 = Instance.new("Animation")
                v234.AnimationId = "rbxassetid://133818134745501"
                vu233.Humanoid:LoadAnimation(v234):Play()
                task.delay(0.1, function()
                    local v235 = vu233:FindFirstChild("DismantleEffect")
                    if v235 then
                        v235:Destroy()
                    end
                    local v236 = Instance.new("Accessory")
                    v236.Name = "DismantleEffect"
                    v236.Parent = vu233
                    v236:SetAttribute("EmoteEffect", true)
                    require(vu232.Emotes.VFX):MainFunction({
                        Character = vu233,
                        vfxName = "Pride",
                        SpecificModule = vu232.Emotes.VFX,
                        AnimSent = 133818134745501,
                        RealBind = v236,
                        CanRotate = true
                    })
                    local v237 = Instance.new("Sound")
                    v237.SoundId = "rbxassetid://93369149563360"
                    v237.Volume = 2
                    v237.Looped = false
                    v237.Parent = vu233:FindFirstChild("Torso")
                    v237:Play()
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/The_Fallen.png",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "The Fallen Finisher",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v371 = game:GetService("Players").LocalPlayer
                local v372 = v371.Character or v371.CharacterAdded:Wait()
                local v373 = v372:WaitForChild("Torso") or v372:WaitForChild("UpperTorso")
                local v374 = next
                local v375 = {
                    {
                        SoundId = "rbxassetid://113267998039039",
                        Volume = 1.65,
                        ParentTorso = true
                    }
                }
                local v376 = nil
                local v377 = "rbxassetid://87401852788032"
                while true do
                    local v378
                    v376, v378 = v374(v375, v376)
                    if v376 == nil then
                        break
                    end
                    local v379 = Instance.new("Sound")
                    v379.SoundId = v378.SoundId
                    v379.Volume = v378.Volume or 1
                    v379.Looped = v378.Looped or false
                    v379.Parent = v378.ParentTorso and v373 and v373 or workspace
                    v379:Play()
                end
                local v380 = Instance.new("Sound")
                v380.SoundId = v377
                v380.Volume = 1
                v380.Parent = workspace
                v380:Play()
                local v381 = game:GetService("Players")
                local v382 = game:GetService("ReplicatedStorage")
                local v383 = v381.LocalPlayer
                local v384 = v383.Character or v383.CharacterAdded:Wait()
                local v385 = v384:WaitForChild("Humanoid")
                local v386 = Instance.new("Animation")
                v386.AnimationId = "rbxassetid://95171537920426"
                v385:LoadAnimation(v386):Play()
                local v387 = Instance.new("Accessory")
                v387.Name = "#EmoteHolder_" .. math.random(1, 100000)
                v387.Parent = v384
                v387:SetAttribute("EmoteProperty", true)
                require(v382.Emotes.VFX):MainFunction({
                    Character = v384,
                    vfxName = "slice combo",
                    SpecificModule = v382.Emotes.VFX,
                    AnimSent = 95171537920426,
                    RealBind = v387
                })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/The_Fallen.png",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "World Cutting Slash",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v322 = game:GetService("Players")
                local vu323 = game:GetService("ReplicatedStorage")
                local vu324 = game:GetService("TweenService")
                local vu325 = game:GetService("Debris")
                local vu326 = v322.LocalPlayer.Character
                local v327 = Instance.new("Animation")
                v327.AnimationId = "rbxassetid://120001337057214"
                local vu328 = vu326.Humanoid:LoadAnimation(v327)
                local v329 = vu328
                vu328.Play(v329)
                task.delay(0.1, function()
                    local vu330 = Instance.new("Accessory")
                    vu330.Name = "#EmoteHolder_" .. math.random(1, 100000)
                    vu330.Parent = vu326
                    local v331 = vu330
                    vu330.SetAttribute(v331, "EmoteProperty", true)
                    require(vu323.Emotes.VFX):MainFunction({
                        Character = vu326,
                        vfxName = "HugeSlash",
                        SpecificModule = vu323.Emotes.VFX,
                        AnimSent = 120001337057214,
                        RealBind = vu330,
                        CanRotate = true
                    })
                    local vu355 = vu328:GetMarkerReachedSignal("fifth"):Once(function()
                        if vu330 and vu330.Parent then
                            local v332 = vu326.PrimaryPart.CFrame
                            vu326:SetAttribute("ForcedCFrame", v332)
                            local vu333 = Instance.new("Part")
                            vu333.Size = Vector3.new(55, 35, 10)
                            vu333.Transparency = 1
                            vu333.BrickColor = BrickColor.new("Really red")
                            vu333.Anchored = true
                            vu333.CanCollide = false
                            vu333.CanQuery = false
                            vu333.CanTouch = false
                            vu333.CFrame = v332 * CFrame.new(0, - 10, - 4)
                            vu333.Parent = workspace:FindFirstChild("Thrown") or workspace
                            vu325:AddItem(vu333, 1)
                            vu324:Create(vu333, TweenInfo.new(0.19, Enum.EasingStyle.Linear), {
                                CFrame = v332 * CFrame.new(0, - 10, - 114)
                            }):Play()
                            local vu334 = {}
                            local function v342()
                                local v335, v336, v337 = pairs(workspace:GetPartsInPart(vu333, OverlapParams.new()))
                                local v338 = {}
                                while true do
                                    local v339
                                    v337, v339 = v335(v336, v337)
                                    if v337 == nil then
                                        break
                                    end
                                    local v340 = v339.Parent:FindFirstChildOfClass("Humanoid")
                                    local v341 = v339.Parent:FindFirstChildOfClass("ForceField")
                                    if v340 and (v340.Name ~= "FakeHumanoid" and (not v341 and (v340 ~= vu326.Humanoid and not table.find(vu334, v340.Parent)))) then
                                        table.insert(v338, v340.Parent)
                                        table.insert(vu334, v340.Parent)
                                    end
                                end
                                return v338
                            end
                            local v343 = tick()
                            while task.wait() and (vu333 and (vu333.Parent and (vu330 and (vu330.Parent and tick() - v343 <= 1)))) do
                                local v344 = v342()
                                local v345, v346, v347 = pairs(v344)
                                while true do
                                    local v348
                                    v347, v348 = v345(v346, v347)
                                    if v347 == nil then
                                        break
                                    end
                                    local v349 = v348:FindFirstChild("Humanoid")
                                    local v350 = v348:FindFirstChild("HumanoidRootPart")
                                    if v349 and (v349.Health <= 0 and v350) then
                                        shared.sfx({
                                            SoundId = "rbxassetid://74053599625174",
                                            Volume = 5,
                                            CFrame = v350.CFrame
                                        }):Play()
                                        local v351, v352, v353 = pairs(v348:GetDescendants())
                                        while true do
                                            local v354
                                            v353, v354 = v351(v352, v353)
                                            if v353 == nil then
                                                break
                                            end
                                            if v354:IsA("BallSocketConstraint") or v354:IsA("Weld") then
                                                v354:Destroy()
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end)
                    task.delay(4, function()
                        if vu355 then
                            vu355:Disconnect()
                        end
                    end)
                    local v356 = Instance.new("Sound")
                    v356.SoundId = "rbxassetid://103835306879590"
                    v356.Volume = 3
                    v356.Looped = false
                    v356.Parent = vu326:FindFirstChild("Torso") or vu326.PrimaryPart
                    v356:Play()
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/The_Fallen.png",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "Boundless Rage",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v205 = game:GetService("Players")
                local vu206 = game:GetService("TweenService")
                local vu207 = game:GetService("ReplicatedStorage")
                local vu208 = game:GetService("Debris")
                local vu209 = v205.LocalPlayer.Character
                local v210 = Instance.new("Animation")
                v210.AnimationId = "rbxassetid://107649573628906"
                vu209.Humanoid:LoadAnimation(v210):Play()
                local vu211 = nil
                local vu212 = nil
                task.delay(0.1, function()
                    vu211 = Instance.new("Accessory")
                    vu211.Name = "#EmoteHolder_" .. math.random(1, 100000)
                    vu211.Parent = vu209
                    vu211:SetAttribute("EmoteProperty", true)
                    require(vu207.Emotes.VFX):MainFunction({
                        Character = vu209,
                        vfxName = "Boundless Rage",
                        SpecificModule = vu207.Emotes.VFX,
                        AnimSent = 107649573628906,
                        RealBind = vu211
                    })
                    vu212 = Instance.new("Folder")
                    vu212.Name = "NoRotate"
                    vu212.Parent = vu209
                    vu212:SetAttribute("EmoteProperty", true)
                end)
                task.delay(4, function()
                    if vu209 and vu209.Parent and workspace.Live:FindFirstChild(tostring(vu209)) then
                        local v213 = vu207.Emotes.VFX.VfxMods.Boundless.vfx.AuraChar:Clone()
                        vu208:AddItem(v213, 5)
                        if vu212 and vu212.Parent then
                            vu212:Destroy()
                        end
                        local vu214 = Instance.new("Sound")
                        vu214.SoundId = "rbxassetid://81055990581650"
                        vu214.Parent = vu209:FindFirstChild("Torso")
                        vu214.Looped = true
                        vu214.Volume = 1
                        vu214.Name = "CrushEmoteAmbience"
                        vu214:Play()
                        local v215, v216, v217 = pairs(v213:GetChildren())
                        while true do
                            local v218
                            v217, v218 = v215(v216, v217)
                            if v217 == nil then
                                break
                            end
                            if v218:IsA("BasePart") then
                                local v219 = vu209:FindFirstChild(v218.Name)
                                local v220, v221, v222 = pairs(v218:GetChildren())
                                while true do
                                    local v223
                                    v222, v223 = v220(v221, v222)
                                    if v222 == nil then
                                        break
                                    end
                                    if v219 and (v223:IsA("Attachment") or v223:IsA("ParticleEmitter")) then
                                        local vu224 = v223:Clone()
                                        vu224.Parent = v219
                                        local v225 = vu224
                                        vu224.SetAttribute(v225, "LimitedAura", true)
                                        task.delay(60, function()
                                            vu206:Create(vu214, TweenInfo.new(0.5), {
                                                Volume = 0
                                            }):Play()
                                            task.delay(0.75, function()
                                                if vu214 and vu214.Parent then
                                                    vu214:Destroy()
                                                end
                                            end)
                                            if vu224:IsA("ParticleEmitter") then
                                                vu224.Enabled = false
                                            else
                                                local v226 = vu224
                                                local v227, v228, v229 = pairs(v226:GetChildren())
                                                while true do
                                                    local v230
                                                    v229, v230 = v227(v228, v229)
                                                    if v229 == nil then
                                                        break
                                                    end
                                                    v230.Enabled = false
                                                end
                                            end
                                        end)
                                        task.delay(65, function()
                                            if vu224 and vu224.Parent then
                                                vu224:Destroy()
                                            end
                                        end)
                                    end
                                end
                            end
                        end
                        v213:Destroy()
                    end
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/Boundless_rage_icon.png",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "Final Stand",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v40 = game:GetService("Players")
                local vu41 = game:GetService("TweenService")
                local vu42 = game:GetService("ReplicatedStorage")
                local vu43 = v40.LocalPlayer.Character
                local v44 = Instance.new("Animation")
                v44.AnimationId = "rbxassetid://113876851900426"
                vu43.Humanoid:LoadAnimation(v44):Play()
                task.delay(0.1, function()
                    local v45 = Instance.new("Accessory")
                    v45.Name = "#EmoteHolder_" .. math.random(1, 100000)
                    v45.Parent = vu43
                    v45:SetAttribute("EmoteProperty", true)
                    require(vu42.Emotes.VFX):MainFunction({
                        Character = vu43,
                        vfxName = "Final Stand",
                        SpecificModule = vu42.Emotes.VFX,
                        AnimSent = 113876851900426,
                        RealBind = v45
                    })
                end)
                task.delay(9, function()
                    if acc and acc.Parent and workspace.Live:FindFirstChild(tostring(vu43)) then
                        local v46, v47, v48 = pairs({
                            {
                                SoundId = "rbxassetid://112446641141594",
                                Volume = 1
                            },
                            {
                                SoundId = "rbxassetid://98080224862986",
                                Volume = 0.3
                            }
                        })
                        while true do
                            local v49
                            v48, v49 = v46(v47, v48)
                            if v48 == nil then
                                break
                            end
                            local vu50 = Instance.new("Sound")
                            vu50.SoundId = v49.SoundId
                            vu50.Volume = v49.Volume
                            vu50.Looped = true
                            vu50.Parent = vu43:FindFirstChild("Torso")
                            local v51 = vu50
                            vu50.Play(v51)
                            task.delay(60, function()
                                vu41:Create(vu50, TweenInfo.new(0.5), {
                                    Volume = 0
                                }):Play()
                                task.delay(0.75, function()
                                    if vu50 and vu50.Parent then
                                        vu50:Destroy()
                                    end
                                end)
                            end)
                        end
                        local v52 = vu42.Emotes.VFX.VfxMods.FS.vfx.Aura:Clone()
                        local v53, v54, v55 = pairs(v52:GetChildren())
                        while true do
                            local v56
                            v55, v56 = v53(v54, v55)
                            if v55 == nil then
                                break
                            end
                            local v57 = vu43:FindFirstChild(v56.Name)
                            if v56.Name == "HumanoidRootPart" then
                                v57 = vu43:FindFirstChild("Torso")
                            end
                            if v57 then
                                local v58, v59, v60 = pairs(v56:GetChildren())
                                while true do
                                    local vu61
                                    v60, vu61 = v58(v59, v60)
                                    if v60 == nil then
                                        break
                                    end
                                    if vu61:IsA("ParticleEmitter") then
                                        vu61.LockedToPart = true
                                    end
                                    vu61:SetAttribute("LimitedAura", true)
                                    vu61.Parent = v57
                                    task.delay(65, function()
                                        if vu61 and vu61.Parent then
                                            vu61:Destroy()
                                        end
                                    end)
                                    task.delay(60, function()
                                        if vu61:IsA("ParticleEmitter") then
                                            vu61.Enabled = false
                                        else
                                            local v62 = vu61
                                            local v63, v64, v65 = pairs(v62:GetChildren())
                                            while true do
                                                local v66
                                                v65, v66 = v63(v64, v65)
                                                if v65 == nil then
                                                    break
                                                end
                                                v66.Enabled = false
                                            end
                                        end
                                    end)
                                end
                            end
                        end
                        v52:Destroy()
                    end
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "https://raw.githubusercontent.com/MIYKOtuff/Assets-MP3-images-idk./refs/heads/main/Final_stand_icon.png",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "Final Spark",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v357 = game:GetService("Players")
                local v358 = game:GetService("ReplicatedStorage")
                local v359 = v357.LocalPlayer
                local v360 = v359.Character or v359.CharacterAdded:Wait()
                local v361 = v360:WaitForChild("Humanoid")
                local v362 = Instance.new("Animation")
                v362.AnimationId = "rbxassetid://129361308786827"
                v361:LoadAnimation(v362):Play()
                local v363 = Instance.new("Accessory")
                v363.Name = "#EmoteHolder_" .. math.random(1, 100000)
                v363.Parent = v360
                v363:SetAttribute("EmoteProperty", true)
                require(v358.Emotes.VFX):MainFunction({
                    Character = v360,
                    vfxName = "Final Spark",
                    SpecificModule = v358.Emotes.VFX,
                    AnimSent = 129361308786827,
                    RealBind = v363
                })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "Last Will",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v364 = game:GetService("Players")
                local v365 = game:GetService("ReplicatedStorage")
                local v366 = v364.LocalPlayer
                local v367 = v366.Character or v366.CharacterAdded:Wait()
                local v368 = v367:WaitForChild("Humanoid")
                local v369 = Instance.new("Animation")
                v369.AnimationId = "rbxassetid://113450724032380"
                v368:LoadAnimation(v369):Play()
                local v370 = Instance.new("Accessory")
                v370.Name = "#EmoteHolder_" .. math.random(1, 100000)
                v370.Parent = v367
                v370:SetAttribute("EmoteProperty", true)
                require(v365.Emotes.VFX):MainFunction({
                    Character = v367,
                    vfxName = "Last Will",
                    SpecificModule = v365.Emotes.VFX,
                    AnimSent = 113450724032380,
                    RealBind = v370
                })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "True Aura",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v238 = game:GetService("Players")
                local vu239 = game:GetService("ReplicatedStorage")
                local vu240 = v238.LocalPlayer.Character
                local vu241 = game:GetService("CollectionService")
                local v242 = Instance.new("Animation")
                v242.AnimationId = "rbxassetid://103668868712897"
                vu240.Humanoid:LoadAnimation(v242):Play()
                task.delay(0.1, function()
                    local vu243 = Instance.new("Accessory")
                    vu243.Name = "#EmoteHolder_" .. math.random(1, 100000)
                    vu243.Parent = vu240
                    vu241:AddTag(vu243, "emoteendstuff" .. vu240.Name)
                    require(vu239.Emotes.VFX):MainFunction({
                        Character = vu240,
                        vfxName = "True Aura",
                        SpecificModule = vu239.Emotes.VFX,
                        AnimSent = 103668868712897,
                        RealBind = vu243
                    })
                    local vu244 = vu240.PrimaryPart
                    if tostring(vu240) == "YungCrepetics" then
                        task.delay(6.3, function()
                            if vu243 and vu243.Parent then
                                local v245, v246, v247 = pairs(workspace:GetPartBoundsInRadius(vu244.Position, 40))
                                while true do
                                    local v248
                                    v247, v248 = v245(v246, v247)
                                    if v247 == nil then
                                        break
                                    end
                                    local _ = v248:GetAttribute("IsTree") or v248.Name == "TreeRoot"
                                    local v249 = v248.Parent:FindFirstChildOfClass("Humanoid")
                                    if v249 and v249.Name ~= "FakeHumanoid" then
                                        local _ = v249 == vu240.Humanoid
                                    end
                                end
                            end
                        end)
                    end
                    local v250 = Instance.new("Sound")
                    v250.SoundId = "rbxassetid://83049960731792"
                    v250.Volume = 3
                    v250.Looped = false
                    v250.Parent = vu240:FindFirstChild("Torso")
                    v250:Play()
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "Divine Form",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        task.spawn(function()
                    wait(7.14)
                    local v162 = game.Players.LocalPlayer
                    local vu163 = v162.Character or v162.CharacterAdded:Wait()
                    local vu164 = game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.Evolved.vfx.Folder;
                    (function()
                        local v165 = Instance.new("Folder")
                        v165.Name = "AuraHolder"
                        v165:SetAttribute("DivineForm", true)
                        v165:SetAttribute("LimAura", true)
                        v165:SetAttribute("EmoteEffect", true)
                        v165.Parent = vu163
                        local v166 = vu164
                        local v167, v168, v169 = pairs(v166:GetChildren())
                        while true do
                            local v170
                            v169, v170 = v167(v168, v169)
                            if v169 == nil then
                                break
                            end
                            if v170:IsA("BasePart") then
                                local v171 = vu163:FindFirstChild(v170.Name)
                                if v171 then
                                    local vu172 = v170:Clone()
                                    vu172.Transparency = 1
                                    vu172.Massless = true
                                    vu172:SetAttribute("LimAura", true)
                                    vu172.Name = tostring(math.random(1, 1000))
                                    vu172.Parent = v165
                                    local v173 = Instance.new("Weld")
                                    v173.Part0 = v171
                                    v173.Part1 = vu172
                                    v173.Parent = vu172
                                    local v174, v175, v176 = pairs(vu172:GetDescendants())
                                    while true do
                                        local vu177
                                        v176, vu177 = v174(v175, v176)
                                        if v176 == nil then
                                            break
                                        end
                                        if vu177:IsA("ParticleEmitter") or vu177:IsA("Beam") then
                                            vu177:SetAttribute("LimitedAura", true)
                                            task.delay(240, function()
                                                vu177.Enabled = false
                                            end)
                                        end
                                    end
                                    task.delay(244, function()
                                        if vu172 and vu172.Parent then
                                            vu172:Destroy()
                                        end
                                    end)
                                end
                            end
                        end
                    end)()
                end)
                local vu178 = game:GetService("Players").LocalPlayer.Character
                local v179 = vu178.Humanoid
                local v180 = Instance.new("Animation")
                v180.AnimationId = "rbxassetid://116187503451999"
                v179:LoadAnimation(v180):Play()
                local vu181 = Instance.new("Accessory")
                vu181.Name = "#EmoteHolder_" .. math.random(1, 100000)
                vu181.Parent = vu178
                local v182 = vu181
                vu181.SetAttribute(v182, "EmoteProperty", true)
                require(game.ReplicatedStorage.Emotes.VFX):MainFunction({
                    Character = vu178,
                    vfxName = "Divine Form",
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX,
                    AnimSent = 116187503451999,
                    RealBind = vu181
                })
                task.delay(7, function()
                    if vu181 and vu181.Parent and workspace.Live:FindFirstChild(tostring(vu178)) then
                        local v183 = Instance.new("Folder")
                        v183.Name = "AuraHolder"
                        v183:SetAttribute("DivineForm", true)
                        v183:SetAttribute("LimAura", true)
                        v183:SetAttribute("EmoteEffect", true)
                        v183.Parent = vu178
                        local v184 = game.ReplicatedStorage.Emotes.VFX.VfxMods.Evolved.vfx.Folder
                        local v185, v186, v187 = pairs(v184:GetChildren())
                        while true do
                            local v188
                            v187, v188 = v185(v186, v187)
                            if v187 == nil then
                                break
                            end
                            if v188:IsA("BasePart") then
                                local v189 = vu178:FindFirstChild(v188.Name)
                                if v189 then
                                    local vu190 = v188:Clone()
                                    vu190.Transparency = 1
                                    vu190.Massless = true
                                    vu190.Name = tostring(math.random(1, 1000))
                                    vu190:SetAttribute("LimAura", true)
                                    local v191 = Instance.new("Weld")
                                    v191.Part0 = v189
                                    v191.Part1 = vu190
                                    v191.Parent = vu190
                                    vu190.Parent = v183
                                    local v192, v193, v194 = pairs(vu190:GetDescendants())
                                    while true do
                                        local vu195
                                        v194, vu195 = v192(v193, v194)
                                        if v194 == nil then
                                            break
                                        end
                                        if vu195:IsA("ParticleEmitter") or vu195:IsA("Beam") then
                                            vu195:SetAttribute("LimitedAura", true)
                                            task.delay(2, function()
                                                vu195.Enabled = false
                                            end)
                                        end
                                    end
                                    task.delay(4, function()
                                        if vu190 and vu190.Parent then
                                            vu190:Destroy()
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GamesTab:Section({
    Title = "Inner Rage",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GamesTab:Space()

GamesTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v67 = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
                local vu68 = {}
                local v69 = Instance.new("Animation")
                v69.AnimationId = "rbxassetid://96993907314948"
                local v70 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(v69)
                v70:Play()
                v70.Stopped:Connect(function()
                    local v71 = Instance.new("Animation")
                    v71.AnimationId = "rbxassetid://127234845846317"
                    game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(v71):Play()
                end)
                local vu72 = Instance.new("Accessory")
                vu72.Name = "#EmoteHolder_" .. math.random(1, 100000)
                vu72.Parent = game.Players.LocalPlayer.Character
                game:GetService("CollectionService"):AddTag(vu72, "emoteendstuff" .. game.Players.LocalPlayer.Character.Name)
                require(game.ReplicatedStorage.Emotes.VFX):MainFunction({
                    Character = game.Players.LocalPlayer.Character,
                    vfxName = "Energy Explosion",
                    AnimSent = 96993907314948,
                    RealBind = vu72,
                    NoInsertion = true,
                    Colour = v67
                })
                local vu73 = {}
                local vu74 = {}
                local vu75 = {}
                task.delay(1.3, function()
                    if vu72 and vu72.Parent then
                        (function()
                            local v76, v77, v78 = pairs(game.Players.LocalPlayer.Character.FakeHead:GetChildren())
                            while true do
                                local v79
                                v78, v79 = v76(v77, v78)
                                if v78 == nil then
                                    break
                                end
                                if v79:IsA("Accessory") and v79:FindFirstChild("Handle") and v79:FindFirstChild("Handle"):FindFirstChild("HairAttachment") then
                                    local v80 = v79:FindFirstChild("Handle")
                                    table.insert(vu74, v80)
                                    local v81, v82, v83 = pairs(v80:GetChildren())
                                    while true do
                                        local v84
                                        v83, v84 = v81(v82, v83)
                                        if v83 == nil then
                                            break
                                        end
                                        if v84:IsA("SpecialMesh") then
                                            v84:SetAttribute("basetext", v84.TextureId)
                                        end
                                    end
                                end
                            end
                            local v85, v86, v87 = pairs(vu74)
                            while true do
                                local v88
                                v87, v88 = v85(v86, v87)
                                if v87 == nil then
                                    break
                                end
                                local v89 = v88:Clone()
                                table.insert(vu73, v89)
                                local v90 = Instance.new("Weld")
                                v90.Part0 = v89
                                v90.Part1 = v88
                                v90.Parent = v89
                                v89.Parent = game.Workspace.Thrown
                                v88.Transparency = 1
                                game:GetService("TweenService"):Create(v88, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
                                    Transparency = 0
                                }):Play()
                                local v91 = v88:FindFirstChildOfClass("SpecialMesh")
                                if v91 then
                                    v91.TextureId = ""
                                    local v92 = game.ReplicatedStorage.Resources.DeathEffect.Template:Clone()
                                    v92.Color3 = Color3.new(v3189.R * 5, v3189.G * 5, v3189.B * 5)
                                    v92.Parent = v89
                                end
                            end
                            local v93 = {
                                hairs = vu74,
                                destroy = vu73
                            }
                            vu68[game.Players.LocalPlayer.Character] = v93
                        end)()
                        task.delay(200, function()
                            local v94, v95, v96 = pairs(vu73)
                            while true do
                                local v97
                                v96, v97 = v94(v95, v96)
                                if v96 == nil then
                                    break
                                end
                                game:GetService("TweenService"):Create(v97, TweenInfo.new(0.1), {
                                    Transparency = 1
                                }):Play()
                                game.Debris:AddItem(v97, 0.5)
                            end
                            local v98, v99, v100 = pairs(vu74)
                            while true do
                                local v101
                                v100, v101 = v98(v99, v100)
                                if v100 == nil then
                                    break
                                end
                                if not game.Players.LocalPlayer.Character:GetAttribute("InMech") then
                                    game:GetService("TweenService"):Create(v101, TweenInfo.new(0.1), {
                                        Transparency = 0
                                    }):Play()
                                end
                                local v102, v103, v104 = pairs(v101:GetChildren())
                                while true do
                                    local v105
                                    v104, v105 = v102(v103, v104)
                                    if v104 == nil then
                                        break
                                    end
                                    if v105:IsA("SpecialMesh") or v105:IsA("MeshPart") then
                                        v105.TextureId = v105:GetAttribute("basetext")
                                    end
                                end
                            end
                        end)
                        local vu106 = Instance.new("Folder")
                        vu106.Name = "AuraHolder"
                        local v107 = vu106
                        vu106.SetAttribute(v107, "LimAura", true)
                        local v108 = vu106
                        vu106.SetAttribute(v108, "EmoteEffect", true)
                        vu106.Parent = game.Players.LocalPlayer.Character
                        task.delay(203, function()
                            if vu106 then
                                vu106:Destroy()
                            end
                        end)
                        local v109, v110, v111 = pairs(game.ReplicatedStorage.Emotes.AuraReal:GetChildren())
                        local v112 = {}
                        while true do
                            local v113
                            v111, v113 = v109(v110, v111)
                            if v111 == nil then
                                break
                            end
                            local vu114 = v113:Clone()
                            local v115 = vu114
                            vu114.SetAttribute(v115, "LimAura", true)
                            table.insert(v112, vu114)
                            task.delay(203, function()
                                if vu114 then
                                    vu114:Destroy()
                                end
                            end)
                            local v116 = vu114
                            if vu114.IsA(v116, "Attachment") then
                                vu114.Parent = game.Players.LocalPlayer.Character.PrimaryPart
                            else
                                local v117 = vu114
                                if vu114.IsA(v117, "PointLight") then
                                end
                                local v118 = Instance.new("Weld")
                                v118.Part0 = game.Players.LocalPlayer.Character.PrimaryPart
                                v118.Part1 = vu114
                                v118.Parent = vu114
                            end
                            local v119 = vu114
                            local v120, v121, v122 = pairs(vu114.GetDescendants(v119))
                            while true do
                                local vu123
                                v122, vu123 = v120(v121, v122)
                                if v122 == nil then
                                    break
                                end
                                if vu123:IsA("ParticleEmitter") or vu123:IsA("PointLight") then
                                    vu123.Enabled = false
                                    table.insert(vu75, vu123)
                                    vu123:SetAttribute("LimitedAura", true)
                                    vu123:SetAttribute("InnerRageAura", true)
                                    if vu123:IsA("ParticleEmitter") or vu123:IsA("Beam") then
                                        vu123.Color = ColorSequence.new(Color3.new(v3189.R, v3189.G, v3189.B))
                                    end
                                    if vu123:IsA("PointLight") or (vu123:IsA("SpotLight") or vu123:IsA("SurfaceLight")) then
                                        vu123.Brightness = vu123.Brightness * 1.3
                                        vu123.Color = Color3.new(v3189.R * 1.3, v3189.G * 1.3, v3189.B * 1.3)
                                    end
                                    task.delay(200, function()
                                        vu123.Enabled = false
                                    end)
                                end
                            end
                        end
                    end
                end)
                task.delay(5.3, function()
                    if vu72 and vu72.Parent then
                        local v124, v125, v126 = pairs(vu75)
                        while true do
                            local v127
                            v126, v127 = v124(v125, v126)
                            if v126 == nil then
                                break
                            end
                            v127.Enabled = true
                        end
                        wait(0.05)
                        local v128, v129, v130 = pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks())
                        while true do
                            local v131
                            v130, v131 = v128(v129, v130)
                            if v130 == nil then
                                break
                            end
                            if v131.Animation.AnimationId == "rbxassetid://127234845846317" then
                                v131:Stop()
                                local v132 = Instance.new("Animation")
                                v132.AnimationId = "rbxassetid://117177504280717"
                                game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(v132):Play()
                            end
                        end
                    end
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GamesTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GamesTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

local GoonTab = Window:Tab({
    Title = "Kill Emotes",
    Icon = "gamepad",
})

--____________________________________________
----------------------------------------------
--____________________________________________

GoonTab:Section({
    Title = "Embers",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Embers Kill Emote By MIYKO"))()

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GoonTab:Section({
    Title = "Ruthless",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Ruthless Kill Emote By MIYKO"))()

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GoonTab:Section({
    Title = "Time Shift",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v425 = game:GetService("Players")
                local v426 = game:GetService("ReplicatedStorage")
                local v427 = v425.LocalPlayer
                local v428 = v427.Character or v427.CharacterAdded:Wait()
                local v429 = v428:WaitForChild("Humanoid")
                local v430 = Instance.new("Animation")
                v430.AnimationId = "rbxassetid://114451374603244"
                local v431 = v429:LoadAnimation(v430)
                v431:Play()
                local v432 = Instance.new("Accessory")
                v432.Name = "#EmoteHolder_" .. math.random(1, 100000)
                v432.Parent = v428
                v432:SetAttribute("EmoteProperty", true)
                require(v426.Emotes.VFX):MainFunction({
                    Character = v428,
                    vfxName = "Time Shift",
                    SpecificModule = v426.Emotes.VFX,
                    AnimSent = 114451374603244,
                    RealBind = v432
                })
                local v433 = Instance.new("Sound")
                v433.SoundId = "rbxassetid://78909185953598"
                v433.Volume = 3
                v433.Parent = workspace
                v433:Play()
                task.wait(7.9)
                v431:Stop()
                v433:Stop()

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GoonTab:Section({
    Title = "Beneath Me",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Beneath Me"))()

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GoonTab:Section({
    Title = "Boxed Up",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v434 = game:GetService("Players")
                local v435 = game:GetService("ReplicatedStorage")
                local v436 = v434.LocalPlayer
                local v437 = v436.Character or v436.CharacterAdded:Wait()
                local v438 = v437:WaitForChild("Humanoid")
                local v439 = Instance.new("Animation")
                v439.AnimationId = "rbxassetid://111810635064735"
                v438:LoadAnimation(v439):Play()
                local v440 = Instance.new("Accessory")
                v440.Name = "#EmoteHolder_" .. math.random(1, 100000)
                v440.Parent = v437
                v440:SetAttribute("EmoteProperty", true)
                require(v435.Emotes.VFX):MainFunction({
                    Character = v437,
                    vfxName = "Boxed Up",
                    SpecificModule = v435.Emotes.VFX,
                    AnimSent = 111810635064735,
                    RealBind = v440
                })
                local v441 = Instance.new("Sound")
                v441.SoundId = "rbxassetid://90314606305113"
                v441.Volume = 3
                v441.Parent = workspace
                v441:Play()

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GoonTab:Section({
    Title = "Energy Barrage",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v909 = game:GetService("Players").LocalPlayer
                local v910 = v909.Character or v909.CharacterAdded:Wait()
                local v911 = v910:WaitForChild("Humanoid")
                local v912 = Instance.new("Animation")
                v912.AnimationId = "rbxassetid://101680746241828"
                v911:LoadAnimation(v912):Play()
                local v913 = Instance.new("Sound")
                v913.SoundId = "rbxassetid://82169026724146"
                v913.Volume = 2
                v913.Parent = v910:FindFirstChild("HumanoidRootPart") or v910.PrimaryPart
                v913:Play()
                local v914 = Instance.new("Folder")
                v914.Name = "RuthlessBind"
                v914.Parent = v910
                v914:SetAttribute("EmoteProperty", true)
                require(game.ReplicatedStorage.Emotes.VFX):MainFunction({
                    Character = v910,
                    vfxName = "Energy Barrage",
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX,
                    AnimSent = 101680746241828,
                    RealBind = v914
                })

    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


GoonTab:Section({
    Title = "Dragon Combo",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

GoonTab:Space()

GoonTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        local v915 = game:GetService("Players").LocalPlayer
                local v916 = v915.Character or v915.CharacterAdded:Wait()
                local v917 = v916:WaitForChild("Humanoid")
                local v918 = Instance.new("Animation")
                v918.AnimationId = "rbxassetid://136363608783208"
                v917:LoadAnimation(v918):Play()
                local v919 = Instance.new("Sound")
                v919.SoundId = "rbxassetid://131083520587944"
                v919.Volume = 2
                v919.Parent = v916:FindFirstChild("HumanoidRootPart") or v916.PrimaryPart
                v919:Play()
                local v920 = Instance.new("Folder")
                v920.Name = "RuthlessBind"
                v920.Parent = v916
                v920:SetAttribute("EmoteProperty", true)
                require(game.ReplicatedStorage.Emotes.VFX):MainFunction({
                    Character = v916,
                    vfxName = "Dragon Combo",
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX,
                    AnimSent = 136363608783208,
                    RealBind = v920
                })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

GoonTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

GoonTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

local SkibidiTab = Window:Tab({
    Title = "Free Emotes",
    Icon = "gamepad",
})

--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________

SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        
                end)

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


SkibidiTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

SkibidiTab:Space()

SkibidiTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

SkibidiTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

SkibidiTab:Space({ Columns = 3 })



--____________________________________________
----------------------------------------------
--____________________________________________


local AurasTab = Window:Tab({
    Title = "Limited Emotes (Auras)",
    Icon = "gamepad",
})

--____________________________________________
----------------------------------------------
--____________________________________________

AurasTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

AurasTab:Space()

AurasTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

AurasTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

AurasTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


AurasTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

AurasTab:Space()

AurasTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

AurasTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

AurasTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________


AurasTab:Section({
    Title = "",
    TextSize = 24,
    FontWeight = Enum.FontWeight.SemiBold,
})

AurasTab:Space()

AurasTab:Button({
    Title = "Play",
    Color = Color3.fromHex("#510600"),
    Justify = "Center",
    IconAlign = "Left",
    Icon = "",
    Callback = function()
        

        WindUI:Notify({
            Title = "Script By MIYKO",
            Content = "Enjoy"
        })
    end
})

AurasTab:Image({
    Image = "",
    AspectRatio = "1:1",
    Radius = 9,
})

AurasTab:Space({ Columns = 3 })


--____________________________________________
----------------------------------------------
--____________________________________________