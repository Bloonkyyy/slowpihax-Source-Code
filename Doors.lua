local myString = key
local firstFour = string.sub(myString, 1, 9)

if LRM_UserNote ~= "Premium" or LRM_UserNote ~= "Dev" then
    if key == Key then
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = false
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = false
        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = true
    end
end
if LRM_UserNote == "Premium" and key ~= "XxMOIJdSRVwYjYTaUKXXOlkWgcbURAsg" or firstFour == "EventKey_" then
    if key ~= Key then
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = false
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = true
        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = true
    end
end
if LRM_UserNote == "Dev" and key == "XxMOIJdSRVwYjYTaUKXXOlkWgcbURAsg" and key ~= Key then
    if key ~= Key then
        getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = true
        getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = true
        getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = true
    end
end

if LRM_UserNote == "Not specific" and key ~= Key then
    if firstFour ~= "EventKey_" then
        setclipboard("https://discord.com/invite/JN6wgVrUAr")
        game.Players.LocalPlayer:Kick("Bypassing The Key System is Against My Terms Of Service.")
        task.wait(0.1)
        while true do end
    end
else
getgenv().Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slowpii/slowpihub/main/UI_Lib"))()
getgenv().Library.Theme = "slowpi"
getgenv().Flags = getgenv().Library.Flags

if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == false and getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == false then
    getgenv().title = "slowpihax | " .. getgenv().vVersion .. " | Doors | Public"
elseif getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == true and getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == false then
    getgenv().title = "slowpihax | " .. getgenv().vVersion .. " | Doors | Premium"
elseif getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true and getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh == true then
    getgenv().title = "slowpihax | " .. getgenv().vVersion .. " | Doors | Dev"
end

if getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y ~= true then
    setclipboard("https://discord.com/invite/JN6wgVrUAr")
    game.Players.LocalPlayer:Kick("Bypassing The Key System is Against My Terms Of Service.")
end

getgenv().Window =
    getgenv().Library:Window(
    {
        Text = getgenv().title
    }
)

local sped = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed
local jmp = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower

getgenv().Tab =
    getgenv().Window:Tab(
    {
        Text = "Character"
    }
)

getgenv().Section =
    getgenv().Tab:Section(
    {
        Text = "Character"
    }
)

getgenv().Tab2 =
    getgenv().Window:Tab(
    {
        Text = "Visual"
    }
)

getgenv().Section2 =
    getgenv().Tab2:Section(
    {
        Text = "Visual"
    }
)

getgenv().Tab3 =
    getgenv().Window:Tab(
    {
        Text = "Room"
    }
)

getgenv().Section3 =
    getgenv().Tab3:Section(
    {
        Text = "Room (Client Side)"
    }
)

getgenv().Section3_1 =
    getgenv().Tab3:Section(
    {
        Text = "Spawn (Client Side)"
    }
)

getgenv().Tab4 =
    getgenv().Window:Tab(
    {
        Text = "Miscellaneous"
    }
)

getgenv().Section4 =
    getgenv().Tab4:Section(
    {
        Text = "Miscellaneous"
    }
)

getgenv().Tab5 =
    getgenv().Window:Tab(
    {
        Text = "Keybinds"
    }
)

getgenv().Section5 =
    getgenv().Tab5:Section(
    {
        Text = "Character Keybinds"
    }
)

getgenv().Section5_1 =
    getgenv().Tab5:Section(
    {
        Text = "Visual Keybinds"
    }
)

getgenv().Section5_2 =
    getgenv().Tab5:Section(
    {
        Text = "Room Keybinds"
    }
)

getgenv().Section5_3 =
    getgenv().Tab5:Section(
    {
        Text = "Miscellaneous Keybinds"
    }
)

getgenv().Tab6 =
    getgenv().Window:Tab(
    {
        Text = "Games"
    }
)

getgenv().Section6 =
    getgenv().Tab6:Section(
    {
        Text = "Games"
    }
)

getgenv().Tab7 =
    getgenv().Window:Tab(
    {
        Text = "Credits"
    }
)

getgenv().Section7 =
    getgenv().Tab7:Section(
    {
        Text = "Credits"
    }
)

getgenv().DoTheWalkspeed = false
getgenv().WalkspeedValue = tonumber(sped)

getgenv().Section:Slider(
    {
        Text = "Walkspeed",
        Default = tonumber(sped),
        Minimum = 1,
        Maximum = 22,
        Callback = function(Value)
            getgenv().WalkspeedValue = Value
        end
    }
)

getgenv().Section:Toggle(
    {
        Text = "Walkspeed Toggle",
        Callback = function(bool)
            getgenv().DoTheWalkspeed = bool

            while getgenv().DoTheWalkspeed == true do
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = getgenv().WalkspeedValue

                game:GetService("RunService").RenderStepped:Wait()
            end
        end
    }
)

getgenv().Section:Toggle(
    {
        Text = "Noclip",
        Callback = function(bool)
            function doNoclip()
                if bool == true then
                    game.Players.LocalPlayer.Character.Collision.CanCollide = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                end
            end

            while bool == true do
                game:GetService("RunService").RenderStepped:Wait()
                doNoclip()
            end
            if bool == false then
                game.Players.LocalPlayer.Character.Collision.CanCollide = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
            end
        end
    }
)

getgenv().Section2:Toggle(
    {
        Text = "Item Esp",
        Callback = function(bool)
            if bool == true then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Item Esp Enabled", Description = "You Can Now See All The Doors."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )
                function doItemEsp()
                    if bool == true then
                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ]:WaitForChild("Assets")

                        getgenv().ItemESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                        getgenv().ItemESP.Tracers = false
                        getgenv().ItemESP.Names = true
                        getgenv().ItemESP.Boxes = true
                        getgenv().ItemESP.Players = false
                        getgenv().ItemESP.FaceCamera = true
                        getgenv().ItemESP.BoxShift = CFrame.new(0, 0, 0)
                        getgenv().ItemESP.BoxSize = Vector3.new(1.75, 1.75, 1.75)

                        getgenv().ItemESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "Key",
                                Type = "MeshPart",
                                CustomName = "Key",
                                Color = Color3.fromRGB(0, 255, 0),
                                IsEnabled = "itemesp"
                            }
                        )

                        getgenv().ItemESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "LeverForGate",
                                Type = "Model",
                                CustomName = "Lever",
                                Color = Color3.fromRGB(0, 255, 0),
                                IsEnabled = "itemesp"
                            }
                        )

                        getgenv().ItemESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "LiveHintBook",
                                Type = "Model",
                                CustomName = "Book",
                                Color = Color3.fromRGB(0, 255, 0),
                                IsEnabled = "itemesp"
                            }
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(DescendantKey)
                                if DescendantKey:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ]:WaitForChild("Assets")
                                    getgenv().ItemESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "Key",
                                            Type = "MeshPart",
                                            CustomName = "Key",
                                            Color = Color3.fromRGB(0, 255, 0),
                                            IsEnabled = "itemesp"
                                        }
                                    )

                                    getgenv().ItemESP.itemesp = true
                                    getgenv().ItemESP:Toggle(true)
                                end
                            end
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(DescendantLever)
                                if DescendantLever:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ]:WaitForChild("Assets")
                                    getgenv().ItemESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "LeverForGate",
                                            Type = "Model",
                                            CustomName = "Lever",
                                            Color = Color3.fromRGB(0, 255, 0),
                                            IsEnabled = "itemesp"
                                        }
                                    )
                                end
                            end
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(DescendantBook)
                                if DescendantBook:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ]:WaitForChild("Assets")
                                    getgenv().ItemESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "LiveHintBook",
                                            Type = "Model",
                                            CustomName = "Book",
                                            Color = Color3.fromRGB(0, 255, 0),
                                            IsEnabled = "itemesp"
                                        }
                                    )

                                    getgenv().ItemESP.itemesp = true
                                    getgenv().ItemESP:Toggle(true)
                                end
                            end
                        )
                    end
                end

                doItemEsp()

                getgenv().ItemESP.itemesp = true
                getgenv().ItemESP:Toggle(true)
            elseif bool == false then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Item Esp Disabled", Description = "You Can No Longer See All The Items."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )

                getgenv().ItemESP.itemesp = false
                getgenv().ItemESP:Toggle(false)
            end
        end
    }
)

getgenv().Section2:Toggle(
    {
        Text = "Door Esp",
        Callback = function(bool)
            if bool == true then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Door Esp Enabled", Description = "You Can Now See All The Doors."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )
                function doDoorEsp()
                    if bool == true then
                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ].Door.Door

                        getgenv().DoorESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                        getgenv().DoorESP.Tracers = false
                        getgenv().DoorESP.Names = true
                        getgenv().DoorESP.Boxes = true
                        getgenv().DoorESP.Players = false
                        getgenv().DoorESP.BoxShift = CFrame.new(0, -2, 0)
                        getgenv().DoorESP.BoxSize = Vector3.new(6, 8.5, 0)

                        getgenv().DoorESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "Sign",
                                Type = "MeshPart",
                                CustomName = "Door",
                                Color = Color3.fromRGB(0, 0, 255),
                                IsEnabled = "dooresp"
                            }
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(Descendant)
                                if Descendant:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ].Door.Door
                                    getgenv().DoorESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "Sign",
                                            Type = "MeshPart",
                                            CustomName = "Door",
                                            Color = Color3.fromRGB(0, 0, 255),
                                            IsEnabled = "dooresp"
                                        }
                                    )

                                    getgenv().DoorESP.dooresp = true
                                    getgenv().DoorESP:Toggle(true)
                                end
                            end
                        )
                    end
                end

                doDoorEsp()

                getgenv().DoorESP.dooresp = true
                getgenv().DoorESP:Toggle(true)
            elseif bool == false then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Door Esp Disabled", Description = "You Can No Longer See All The Doors."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )

                getgenv().DoorESP.dooresp = false
                getgenv().DoorESP:Toggle(false)
            end
        end
    }
)

getgenv().Section2:Toggle(
    {
        Text = "Entity Esp",
        Callback = function(bool)
            if bool == true then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Entity Esp Enabled", Description = "You Can Now See All The Entities."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )
                function doEntityEsp()
                    if bool == true then
                        getgenv().EntityESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ]:WaitForChild("FigureSetup")

                        getgenv().EntityESP.Tracers = true
                        getgenv().EntityESP.Names = true
                        getgenv().EntityESP.Boxes = true
                        getgenv().EntityESP.Players = false
                        getgenv().EntityESP.FaceCamera = true
                        getgenv().EntityESP.BoxShift = CFrame.new(0, 0, 0)
                        getgenv().EntityESP.BoxSize = Vector3.new(6, 8.5, 0)

                        getgenv().EntityESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "FigureRagdoll",
                                Type = "Model",
                                CustomName = "Figure",
                                Color = Color3.fromRGB(255, 0, 0),
                                IsEnabled = "entityesp"
                            }
                        )
                    end
                end

                if workspace:FindFirstChild("RushMoving") ~= nil then
                    getgenv().EntityESP:AddObjectListener(
                        workspace,
                        {
                            Recursive = true,
                            Name = "RushMoving",
                            Type = "Model",
                            CustomName = "Rush",
                            Color = Color3.fromRGB(255, 0, 0),
                            IsEnabled = "entityesp"
                        }
                    )

                    getgenv().EntityESP.entityesp = true
                    getgenv().EntityESP:Toggle(true)
                end

                if workspace:FindFirstChild("Lookman") ~= nil then
                    getgenv().EntityESP:AddObjectListener(
                        workspace,
                        {
                            Recursive = true,
                            Name = "Lookman",
                            Type = "Model",
                            CustomName = "Look Man",
                            Color = Color3.fromRGB(255, 0, 0),
                            IsEnabled = "entityesp"
                        }
                    )

                    getgenv().EntityESP.entityesp = true
                    getgenv().EntityESP:Toggle(true)
                end

                workspace.ChildAdded:Connect(
                    function(Descendant)
                        if Descendant:IsA("Model") then
                            task.wait(0.15)

                            if workspace:FindFirstChild("RushMoving") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "RushMoving",
                                        Type = "Model",
                                        CustomName = "Rush",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            if workspace:FindFirstChild("Lookman") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "Lookman",
                                        Type = "Model",
                                        CustomName = "Look Man",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            if workspace:FindFirstChild("AmbushMoving") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "AmbushMoving",
                                        Type = "Model",
                                        CustomName = "Ambush",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            if workspace:FindFirstChild("SeekMoving") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "SeekMoving",
                                        Type = "Model",
                                        CustomName = "Seek",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            getgenv().EntityESP.entityesp = true
                            getgenv().EntityESP:Toggle(true)
                        end
                    end
                )

                workspace.CurrentRooms.ChildAdded:Connect(
                    function(Descendant)
                        if Descendant:IsA("Model") then
                            getgenv().EntityESP.Tracers = true

                            local CurrentDoor =
                                workspace.CurrentRooms[
                                tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                            ]:WaitForChild("FigureSetup")

                            getgenv().EntityESP:AddObjectListener(
                                CurrentDoor,
                                {
                                    Recursive = true,
                                    Name = "FigureRagdoll",
                                    Type = "Model",
                                    CustomName = "Figure",
                                    Color = Color3.fromRGB(255, 0, 0),
                                    IsEnabled = "entityesp"
                                }
                            )

                            getgenv().EntityESP.entityesp = true
                            getgenv().EntityESP:Toggle(true)
                        end
                    end
                )

                doEntityEsp()

                getgenv().EntityESP.entityesp = true
                getgenv().EntityESP:Toggle(true)
            else
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Entity Esp Disabled", Description = "You Can No Longer See All The Entities."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )

                getgenv().EntityESP.entityesp = false
                getgenv().EntityESP:Toggle(false)
            end
        end
    }
)

getgenv().Section3:Button(
    {
        Text = "Red Room",
        Callback = function()
            firesignal(
                game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent,
                "tryp",
                workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value],
                (15)
            )
        end
    }
)

getgenv().Section3:Button(
    {
        Text = "Flicker Lights",
        Callback = function()
            firesignal(
                game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent,
                "flickerLights",
                game.ReplicatedStorage.GameData.LatestRoom.Value,
                1
            )
        end
    }
)

getgenv().Section3:Button(
    {
        Text = "Break Lights",
        Callback = function()
            firesignal(
                game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent,
                "breakLights",
                workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value],
                0.416,
                60
            )
        end
    }
)

getgenv().Section3_1:Button(
    {
        Text = "Spawn Screech",
        Callback = function()
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
            )
        end
    }
)

getgenv().Section3_1:Button(
    {
        Text = "Spawn Timothy",
        Callback = function()
            local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
            require(a.RemoteListener.Modules.SpiderJumpscare)(
                require(a),
                workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)].Assets.Table.DrawerContainer,
                0.2
            )
        end
    }
)

getgenv().Section3_1:Button(
    {
        Text = "Spawn Halt",
        Callback = function()
            require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
                workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]
            )
        end
    }
)

getgenv().Section3_1:Button(
    {
        Text = "Spawn Glitch",
        Callback = function()
            require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
                workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]
            )
        end
    }
)

getgenv().Section3_1:Button(
    {
        Text = "Spawn Rush",
        Callback = function()
            local Creator =
                loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/8hEFq5JzQ59XG5oxl2kU/iBG3hy1NIZZn54xP5e6jA8FsG4CgfX/main/d_creatorYzXsw3rsWmKCzF3R0kGr"
                )
            )()

            -- Create entity
            local entity =
                Creator.createEntity(
                {
                    CustomName = "Rush", -- Custom name of your entity
                    Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
                    Speed = 100, -- Percentage, 100 = default Rush speed
                    DelayTime = 2, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = false,
                    KillRange = 25,
                    BreakLights = true,
                    BackwardsMovement = false,
                    FlickerLights = {
                        true, -- Enabled/Disabled
                        1 -- Time (seconds)
                    },
                    Cycles = {
                        Min = 1,
                        Max = 1,
                        WaitTime = 2
                    },
                    CamShake = {
                        true, -- Enabled/Disabled
                        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                        100 -- Shake start distance (from Entity to you)
                    },
                    Jumpscare = {
                        true, -- Enabled/Disabled
                        {
                            Image1 = "rbxassetid://10483855823", -- Image1 url
                            Image2 = "rbxassetid://10483999903", -- Image2 url
                            Shake = true,
                            Sound1 = {
                                10483790459, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Sound2 = {
                                10483837590, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Flashing = {
                                true, -- Enabled/Disabled
                                Color3.fromRGB(0, 0, 255) -- Color
                            },
                            Tease = {
                                true, -- Enabled/Disabled
                                Min = 4,
                                Max = 4
                            }
                        }
                    },
                    CustomDialog = {"You died to Rush...", "Hide when light flickers", "Noob"} -- Custom death message
                }
            )

            -----[[ Advanced ]]-----
            entity.Debug.OnEntitySpawned = function(entityTable)
                print("Entity has spawned:", entityTable.Model)
            end

            entity.Debug.OnEntityDespawned = function(entityTable)
                print("Entity has despawned:", entityTable.Model)
            end

            entity.Debug.OnEntityStartMoving = function(entityTable)
                print("Entity has started moving:", entityTable.Model)
            end

            entity.Debug.OnEntityFinishedRebound = function(entityTable)
                print("Entity has finished rebound:", entityTable.Model)
            end

            entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
                print("Entity:", entityTable.Model, "has entered room:", room)
            end

            entity.Debug.OnLookAtEntity = function(entityTable)
                print("Player has looked at entity:", entityTable.Model)
            end

            entity.Debug.OnDeath = function(entityTable)
                warn("Player has died.")
            end
            ------------------------

            -- Run the created entity
            Creator.runEntity(entity)
        end
    }
)

getgenv().Section3_1:Button(
    {
        Text = "Spawn Ambush",
        Callback = function()
            local Creator =
                loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/8hEFq5JzQ59XG5oxl2kU/iBG3hy1NIZZn54xP5e6jA8FsG4CgfX/main/d_creatorYzXsw3rsWmKCzF3R0kGr"
                )
            )()
            local entity =
                Creator.createEntity(
                {
                    CustomName = "Ambush", -- Custom name of your entity
                    Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Ambush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
                    Speed = 200, -- Percentage, 100 = default Rush speed
                    DelayTime = 2, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = false,
                    KillRange = 25,
                    BreakLights = true,
                    BackwardsMovement = false,
                    FlickerLights = {
                        true, -- Enabled/Disabled
                        1 -- Time (seconds)
                    },
                    Cycles = {
                        Min = 2,
                        Max = 6,
                        WaitTime = 2
                    },
                    CamShake = {
                        true, -- Enabled/Disabled
                        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                        100 -- Shake start distance (from Entity to you)
                    },
                    Jumpscare = {
                        false, -- Enabled/Disabled
                        {
                            Image1 = "rbxassetid://10483855823", -- Image1 url
                            Image2 = "rbxassetid://10483999903", -- Image2 url
                            Shake = true,
                            Sound1 = {
                                10483790459, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Sound2 = {
                                10483837590, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Flashing = {
                                true, -- Enabled/Disabled
                                Color3.fromRGB(0, 0, 255) -- Color
                            },
                            Tease = {
                                true, -- Enabled/Disabled
                                Min = 4,
                                Max = 4
                            }
                        }
                    },
                    CustomDialog = {"You died to who you call Ambush...", "He rebounds", "Shadow Slime Uwu-"} -- Custom death message
                }
            )

            -----[[ Advanced ]]-----
            entity.Debug.OnEntitySpawned = function(entityTable)
                print("Entity has spawned:", entityTable.Model)
            end

            entity.Debug.OnEntityDespawned = function(entityTable)
                print("Entity has despawned:", entityTable.Model)
            end

            entity.Debug.OnEntityStartMoving = function(entityTable)
                print("Entity has started moving:", entityTable.Model)
            end

            entity.Debug.OnEntityFinishedRebound = function(entityTable)
                print("Entity has finished rebound:", entityTable.Model)
            end

            entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
                print("Entity:", entityTable.Model, "has entered room:", room)
            end

            entity.Debug.OnLookAtEntity = function(entityTable)
                print("Player has looked at entity:", entityTable.Model)
            end

            entity.Debug.OnDeath = function(entityTable)
                warn("Player has died.")
            end
            ------------------------

            -- Run the created entity
            Creator.runEntity(entity)
        end
    }
)

getgenv().Section4:Button(
    {
        Text = "No E Wait",
        Callback = function()
            PromptButtonHoldBegan =
                game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(
                function(prompt)
                    fireproximityprompt(prompt)
                end
            )
        end
    }
)

getgenv().Section4:Button(
    {
        Text = "Get All Badges (Client Side)",
        Callback = function()
            for i, v in pairs(require(game.ReplicatedStorage.Achievements)) do
                spawn(
                    function()
                        require(
                            game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock
                        )(nil, i)
                    end
                )
            end
        end
    }
)

getgenv().Section4:Button(
    {
        Text = "Get Crucifix (Client Side)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo"))()
        end
    }
)

getgenv().Section4:Button(
    {
        Text = "Skip Door",
        Callback = function()
            pcall(
                function()
                    local HasKey = false
                    local CurrentDoor =
                        workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild(
                        "Door"
                    )
                    for i, v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                        if v.Name == "KeyObtain" then
                            HasKey = v
                        end
                    end
                    if HasKey then
                        local character = game.Players.LocalPlayer.Character
                        local humanoid = character:WaitForChild("Humanoid")
                        local pivot = character.HumanoidRootPart:FindFirstChild("Pivot") or character.HumanoidRootPart:FindFirstChild("RootJoint")
                        local startCFrame = pivot.CFrame
                        local endCFrame = CFrame.new(Vector3.new(HasKey.Hitbox.Position))
                        local duration = 1.475
                        local startTime = tick()
                        
                        while tick() - startTime < duration and bool == true do
                            local t = (tick() - startTime) / duration
                            pivot.CFrame = startCFrame:lerp(endCFrame, t)
                            task.wait()
                        end
                        
                        

                        task.wait(1.5)
                        fireproximityprompt(HasKey.ModulePrompt, 0)

                        local character = game.Players.LocalPlayer.Character
                        local humanoid = character:WaitForChild("Humanoid")
                        local startCFrame = character.HumanoidRootPart.CFrame
                        local endCFrame = CFrame.new(Vector3.new(CurrentDoor.Door.Position))
                        local duration = 1.475
                        local startTime = tick()

                        while tick() - startTime < duration and bool == true do
                            local t = (tick() - startTime) / duration
                            character.CFrame = startCFrame:lerp(endCFrame, t)
                            task.wait()
                        end
                        
                        task.wait(1.5)
                        fireproximityprompt(CurrentDoor.Lock.UnlockPrompt, 0)
                    end
                    if LatestRoom == 50 then
                        CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom + 1)
                        ]:WaitForChild("Door")
                    end

                    local character = game.Players.LocalPlayer.Character
                    local humanoid = character:WaitForChild("Humanoid")
                    local pivot = character.HumanoidRootPart:FindFirstChild("Pivot") or character.HumanoidRootPart:FindFirstChild("RootJoint")
                    local startCFrame = pivot.CFrame
                    local endCFrame = CFrame.new(Vector3.new(CurrentDoor.Door.Position))
                    local duration = 1.475
                    local startTime = tick()
                    
                    while tick() - startTime < duration and bool == true do
                        local t = (tick() - startTime) / duration
                        pivot.CFrame = startCFrame:lerp(endCFrame, t)
                        task.wait()
                    end
                    

                    task.wait(1.5)
                    CurrentDoor.ClientOpen:FireServer()
                end
            )
        end
    }
)

if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh or getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true then
    getgenv().Section4:Toggle(
        {
            Text = "Auto Skip Door",
            Callback = function(bool)
                if bool == true then
                    getgenv().AutoDoor = true

                    getgenv().ACurrentDoor =
                        workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild(
                        "Door"
                    )

                    function AutoDoor()
                        if getgenv().AutoDoor == true then
                            local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

                            if getgenv().ACurrentDoor ~= nil then
                                pcall(
                                    function()
                                        local HasKey = false
                                        for i, v in ipairs(getgenv().ACurrentDoor.Parent:GetDescendants()) do
                                            if v.Name == "KeyObtain" then
                                                HasKey = v
                                            end
                                        end
                                        if HasKey then
                                            game.Players.LocalPlayer.Character:PivotTo(
                                                CFrame.new(HasKey.Hitbox.Position)
                                            )
                                            task.wait(0.3)
                                            fireproximityprompt(HasKey.ModulePrompt, 0)
                                            game.Players.LocalPlayer.Character:PivotTo(
                                                CFrame.new(getgenv().ACurrentDoor.Door.Position)
                                            )
                                            task.wait(0.3)
                                            fireproximityprompt(getgenv().ACurrentDoor.Lock.UnlockPrompt, 0)
                                        end

                                        if getgenv().ACurrentDoor.Parent.Name == "50" then
                                            getgenv().ACurrentDoor = workspace.CurrentRooms["51"]:WaitForChild("Door")
                                        elseif getgenv().ACurrentDoor.Parent.Name ~= "50" then
                                            getgenv().ACurrentDoor =
                                                workspace.CurrentRooms[
                                                tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                            ]:WaitForChild("Door")
                                        end

                                        game.Players.LocalPlayer.Character:PivotTo(
                                            CFrame.new(getgenv().ACurrentDoor.Door.Position)
                                        )
                                        task.wait(0.3)
                                        getgenv().ACurrentDoor.ClientOpen:FireServer()
                                    end
                                )

                                if getgenv().ACurrentDoor.Parent.Name >= "99" then
                                    getgenv().AutoDoor = false
                                end
                            end
                        end
                    end

                    while getgenv().AutoDoor == true do
                        task.wait()
                        AutoDoor()
                        if getgenv().ACurrentDoor ~= nil then
                            task.wait()
                            AutoDoor()
                        end
                    end
                else
                    getgenv().AutoDoor = false
                end
            end
        }
    )
end

getgenv().Section4:Toggle(
    {
        Text = "Remove Doors",
        Callback = function(bool)
            local doorPosition = {}

            function deleteDoors()
                task.wait(0.25)
                if bool == true then
                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "Door" then
                            v.Transparency = 1
                            v.CanCollide = false
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "Part" and v.Parent.ClassName == "Model" and v.Name == "Hidden" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Plate" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Knob" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "SurfaceGui" and v.Parent.ClassName == "Model" and v.Name == "Sign" then
                            v.Enabled = false
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Sign" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "ThingToOpen" then
                            v.Transparency = 1
                            v.CanCollide = false
                        end
                    end
                end
            end

            function returnDoors()
                task.wait(0.25)
                if bool == false then
                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "Door" then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "Part" and v.Parent.ClassName == "Model" and v.Name == "Hidden" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Plate" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Knob" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "SurfaceGui" and v.Parent.ClassName == "Model" and v.Name == "Sign" then
                            v.Enabled = true
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Sign" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "ThingToOpen" then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                    end
                end
            end

            if bool == true then
                while bool == true do
                    deleteDoors()
                end
            elseif bool == false then
                returnDoors()
            end
        end
    }
)

getgenv().KeybindNoclip = 0
getgenv().KeybindItemEsp = 0
getgenv().KeybindDoorEsp = 0
getgenv().KeybindEntityEsp = 0
getgenv().KeybindFullbright = 0
getgenv().KeybindAutoSkip = 0
getgenv().KeybindRemoveDoors = 0

getgenv().Section5:Keybind(
    {
        Text = "Noclip Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            if getgenv().KeybindNoclip == 0 then
                getgenv().KeybindNoclip = getgenv().KeybindNoclip + 1
            elseif getgenv().KeybindNoclip == 1 then
                getgenv().KeybindNoclip = getgenv().KeybindNoclip - 1
            end
            if getgenv().KeybindNoclip == 1 then
                function doNoclip()
                    if getgenv().KeybindNoclip == 1 then
                        game.Players.LocalPlayer.Character.Collision.CanCollide = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                    end
                end

                while getgenv().KeybindNoclip == 1 do
                    game:GetService("RunService").RenderStepped:Wait()
                    doNoclip()
                end
                if getgenv().KeybindNoclip == 0 then
                    game.Players.LocalPlayer.Character.Collision.CanCollide = true
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
                end
            end
        end
    }
)

getgenv().Section5_1:Keybind(
    {
        Text = "Item Esp Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            if getgenv().KeybindItemEsp == 0 then
                getgenv().KeybindItemEsp = getgenv().KeybindItemEsp + 1
            elseif getgenv().KeybindItemEsp == 1 then
                getgenv().KeybindItemEsp = getgenv().KeybindItemEsp - 1
            end
            if getgenv().KeybindItemEsp == 1 then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Item Esp Enabled", Description = "You Can Now See All The Doors."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )
                function doItemEsp()
                    if getgenv().KeybindItemEsp == 1 then
                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ]:WaitForChild("Assets")

                        getgenv().ItemESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                        getgenv().ItemESP.Tracers = false
                        getgenv().ItemESP.Names = true
                        getgenv().ItemESP.Boxes = true
                        getgenv().ItemESP.Players = false
                        getgenv().ItemESP.FaceCamera = true
                        getgenv().ItemESP.BoxShift = CFrame.new(0, 0, 0)
                        getgenv().ItemESP.BoxSize = Vector3.new(1.75, 1.75, 1.75)

                        getgenv().ItemESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "Key",
                                Type = "MeshPart",
                                CustomName = "Key",
                                Color = Color3.fromRGB(0, 255, 0),
                                IsEnabled = "itemesp"
                            }
                        )

                        getgenv().ItemESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "LeverForGate",
                                Type = "Model",
                                CustomName = "Lever",
                                Color = Color3.fromRGB(0, 255, 0),
                                IsEnabled = "itemesp"
                            }
                        )

                        getgenv().ItemESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "LiveHintBook",
                                Type = "Model",
                                CustomName = "Book",
                                Color = Color3.fromRGB(0, 255, 0),
                                IsEnabled = "itemesp"
                            }
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(DescendantKey)
                                if DescendantKey:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ]:WaitForChild("Assets")
                                    getgenv().ItemESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "Key",
                                            Type = "MeshPart",
                                            CustomName = "Key",
                                            Color = Color3.fromRGB(0, 255, 0),
                                            IsEnabled = "itemesp"
                                        }
                                    )

                                    getgenv().ItemESP.itemesp = true
                                    getgenv().ItemESP:Toggle(true)
                                end
                            end
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(DescendantLever)
                                if DescendantLever:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ]:WaitForChild("Assets")
                                    getgenv().ItemESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "LeverForGate",
                                            Type = "Model",
                                            CustomName = "Lever",
                                            Color = Color3.fromRGB(0, 255, 0),
                                            IsEnabled = "itemesp"
                                        }
                                    )
                                end
                            end
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(DescendantBook)
                                if DescendantBook:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ]:WaitForChild("Assets")
                                    getgenv().ItemESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "LiveHintBook",
                                            Type = "Model",
                                            CustomName = "Book",
                                            Color = Color3.fromRGB(0, 255, 0),
                                            IsEnabled = "itemesp"
                                        }
                                    )

                                    getgenv().ItemESP.itemesp = true
                                    getgenv().ItemESP:Toggle(true)
                                end
                            end
                        )
                    end
                end

                doItemEsp()

                getgenv().ItemESP.itemesp = true
                getgenv().ItemESP:Toggle(true)
            else
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Item Esp Disabled", Description = "You Can No Longer See All The Items."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )

                getgenv().ItemESP.itemesp = false
                getgenv().ItemESP:Toggle(false)
            end
        end
    }
)

getgenv().Section5_1:Keybind(
    {
        Text = "Door Esp Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            if getgenv().KeybindDoorEsp == 0 then
                getgenv().KeybindDoorEsp = getgenv().KeybindDoorEsp + 1
            elseif getgenv().KeybindDoorEsp == 1 then
                getgenv().KeybindDoorEsp = getgenv().KeybindDoorEsp - 1
            end

            if getgenv().KeybindDoorEsp == 1 then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Door Esp Enabled", Description = "You Can Now See All The Doors."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )
                function doDoorEsp()
                    if getgenv().KeybindDoorEsp == 1 then
                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ].Door.Door

                        getgenv().DoorESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                        getgenv().DoorESP.Tracers = false
                        getgenv().DoorESP.Names = true
                        getgenv().DoorESP.Boxes = true
                        getgenv().DoorESP.Players = false
                        getgenv().DoorESP.BoxShift = CFrame.new(0, -2, 0)
                        getgenv().DoorESP.BoxSize = Vector3.new(6, 8.5, 0)

                        getgenv().DoorESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "Sign",
                                Type = "MeshPart",
                                CustomName = "Door",
                                Color = Color3.fromRGB(0, 0, 255),
                                IsEnabled = "dooresp"
                            }
                        )

                        workspace.CurrentRooms.ChildAdded:Connect(
                            function(Descendant)
                                if Descendant:IsA("Model") then
                                    local CurrentDoor =
                                        workspace.CurrentRooms[
                                        tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                    ].Door.Door
                                    getgenv().DoorESP:AddObjectListener(
                                        CurrentDoor,
                                        {
                                            Recursive = true,
                                            Name = "Sign",
                                            Type = "MeshPart",
                                            CustomName = "Door",
                                            Color = Color3.fromRGB(0, 0, 255),
                                            IsEnabled = "dooresp"
                                        }
                                    )

                                    getgenv().DoorESP.dooresp = true
                                    getgenv().DoorESP:Toggle(true)
                                end
                            end
                        )
                    end
                end

                doDoorEsp()

                getgenv().DoorESP.dooresp = true
                getgenv().DoorESP:Toggle(true)
            else
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Door Esp Disabled", Description = "You Can No Longer See All The Doors."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )

                getgenv().DoorESP.dooresp = false
                getgenv().DoorESP:Toggle(false)
            end
        end
    }
)

getgenv().Section5_1:Keybind(
    {
        Text = "Entity Esp Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            if getgenv().KeybindEntityEsp == 0 then
                getgenv().KeybindEntityEsp = getgenv().KeybindEntityEsp + 1
            elseif getgenv().KeybindEntityEsp == 1 then
                getgenv().KeybindEntityEsp = getgenv().KeybindEntityEsp - 1
            end

            if getgenv().KeybindEntityEsp == 1 then
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Entity Esp Enabled", Description = "You Can Now See All The Entities."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )
                function doEntityEsp()
                    if getgenv().KeybindEntityEsp == 1 then
                        getgenv().EntityESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ]:WaitForChild("FigureSetup")

                        getgenv().EntityESP.Tracers = true
                        getgenv().EntityESP.Names = true
                        getgenv().EntityESP.Boxes = true
                        getgenv().EntityESP.Players = false
                        getgenv().EntityESP.FaceCamera = true
                        getgenv().EntityESP.BoxShift = CFrame.new(0, 0, 0)
                        getgenv().EntityESP.BoxSize = Vector3.new(6, 8.5, 0)

                        getgenv().EntityESP:AddObjectListener(
                            CurrentDoor,
                            {
                                Recursive = true,
                                Name = "FigureRagdoll",
                                Type = "Model",
                                CustomName = "Figure",
                                Color = Color3.fromRGB(255, 0, 0),
                                IsEnabled = "entityesp"
                            }
                        )
                    end
                end

                if workspace:FindFirstChild("RushMoving") ~= nil then
                    getgenv().EntityESP:AddObjectListener(
                        workspace,
                        {
                            Recursive = true,
                            Name = "RushMoving",
                            Type = "Model",
                            CustomName = "Rush",
                            Color = Color3.fromRGB(255, 0, 0),
                            IsEnabled = "entityesp"
                        }
                    )

                    getgenv().EntityESP.entityesp = true
                    getgenv().EntityESP:Toggle(true)
                end

                if workspace:FindFirstChild("Lookman") ~= nil then
                    getgenv().EntityESP:AddObjectListener(
                        workspace,
                        {
                            Recursive = true,
                            Name = "Lookman",
                            Type = "Model",
                            CustomName = "Look Man",
                            Color = Color3.fromRGB(255, 0, 0),
                            IsEnabled = "entityesp"
                        }
                    )

                    getgenv().EntityESP.entityesp = true
                    getgenv().EntityESP:Toggle(true)
                end

                workspace.ChildAdded:Connect(
                    function(Descendant)
                        if Descendant:IsA("Model") then
                            task.wait(0.15)

                            if workspace:FindFirstChild("RushMoving") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "RushMoving",
                                        Type = "Model",
                                        CustomName = "Rush",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            if workspace:FindFirstChild("Lookman") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "Lookman",
                                        Type = "Model",
                                        CustomName = "Look Man",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            if workspace:FindFirstChild("AmbushMoving") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "AmbushMoving",
                                        Type = "Model",
                                        CustomName = "Ambush",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            if workspace:FindFirstChild("SeekMoving") ~= nil then
                                getgenv().EntityESP:AddObjectListener(
                                    workspace,
                                    {
                                        Recursive = true,
                                        Name = "SeekMoving",
                                        Type = "Model",
                                        CustomName = "Seek",
                                        Color = Color3.fromRGB(255, 0, 0),
                                        IsEnabled = "entityesp"
                                    }
                                )

                                getgenv().EntityESP.entityesp = true
                                getgenv().EntityESP:Toggle(true)
                            end

                            getgenv().EntityESP.entityesp = true
                            getgenv().EntityESP:Toggle(true)
                        end
                    end
                )

                workspace.CurrentRooms.ChildAdded:Connect(
                    function(Descendant)
                        if Descendant:IsA("Model") then
                            getgenv().EntityESP.Tracers = true

                            local CurrentDoor =
                                workspace.CurrentRooms[
                                tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                            ]:WaitForChild("FigureSetup")

                            getgenv().EntityESP:AddObjectListener(
                                CurrentDoor,
                                {
                                    Recursive = true,
                                    Name = "FigureRagdoll",
                                    Type = "Model",
                                    CustomName = "Figure",
                                    Color = Color3.fromRGB(255, 0, 0),
                                    IsEnabled = "entityesp"
                                }
                            )

                            getgenv().EntityESP.entityesp = true
                            getgenv().EntityESP:Toggle(true)
                        end
                    end
                )

                doEntityEsp()

                getgenv().EntityESP.entityesp = true
                getgenv().EntityESP:Toggle(true)
            else
                local NotificationHolder =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
                local Notification =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
                Notification:Notify(
                    {Title = "Entity Esp Disabled", Description = "You Can No Longer See All The Entities."},
                    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 2, Type = "default"}
                )

                getgenv().EntityESP.entityesp = false
                getgenv().EntityESP:Toggle(false)
            end
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Red Room Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            firesignal(
                game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent,
                "tryp",
                workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value],
                (15)
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Flicker Lights Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            firesignal(
                game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent,
                "flickerLights",
                game.ReplicatedStorage.GameData.LatestRoom.Value,
                1
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Break Lights Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            firesignal(
                game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent,
                "breakLights",
                workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value],
                0.416,
                60
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Spawn Screech Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Spawn Timothy Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
            require(a.RemoteListener.Modules.SpiderJumpscare)(
                require(a),
                workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)].Assets.Table.DrawerContainer,
                0.2
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Spawn Halt Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
                workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Spawn Glitch Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
                workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]
            )
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Spawn Rush Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            local Creator =
                loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/8hEFq5JzQ59XG5oxl2kU/iBG3hy1NIZZn54xP5e6jA8FsG4CgfX/main/d_creatorYzXsw3rsWmKCzF3R0kGr"
                )
            )()

            -- Create entity
            local entity =
                Creator.createEntity(
                {
                    CustomName = "Rush", -- Custom name of your entity
                    Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
                    Speed = 100, -- Percentage, 100 = default Rush speed
                    DelayTime = 2, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = false,
                    KillRange = 25,
                    BreakLights = true,
                    BackwardsMovement = false,
                    FlickerLights = {
                        true, -- Enabled/Disabled
                        1 -- Time (seconds)
                    },
                    Cycles = {
                        Min = 1,
                        Max = 1,
                        WaitTime = 2
                    },
                    CamShake = {
                        true, -- Enabled/Disabled
                        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                        100 -- Shake start distance (from Entity to you)
                    },
                    Jumpscare = {
                        true, -- Enabled/Disabled
                        {
                            Image1 = "rbxassetid://10483855823", -- Image1 url
                            Image2 = "rbxassetid://10483999903", -- Image2 url
                            Shake = true,
                            Sound1 = {
                                10483790459, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Sound2 = {
                                10483837590, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Flashing = {
                                true, -- Enabled/Disabled
                                Color3.fromRGB(0, 0, 255) -- Color
                            },
                            Tease = {
                                true, -- Enabled/Disabled
                                Min = 4,
                                Max = 4
                            }
                        }
                    },
                    CustomDialog = {"You died to Rush...", "Hide when light flickers", "Noob"} -- Custom death message
                }
            )

            -----[[ Advanced ]]-----
            entity.Debug.OnEntitySpawned = function(entityTable)
                print("Entity has spawned:", entityTable.Model)
            end

            entity.Debug.OnEntityDespawned = function(entityTable)
                print("Entity has despawned:", entityTable.Model)
            end

            entity.Debug.OnEntityStartMoving = function(entityTable)
                print("Entity has started moving:", entityTable.Model)
            end

            entity.Debug.OnEntityFinishedRebound = function(entityTable)
                print("Entity has finished rebound:", entityTable.Model)
            end

            entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
                print("Entity:", entityTable.Model, "has entered room:", room)
            end

            entity.Debug.OnLookAtEntity = function(entityTable)
                print("Player has looked at entity:", entityTable.Model)
            end

            entity.Debug.OnDeath = function(entityTable)
                warn("Player has died.")
            end
            ------------------------

            -- Run the created entity
            Creator.runEntity(entity)
        end
    }
)

getgenv().Section5_2:Keybind(
    {
        Text = "Spawn Ambush Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            local Creator =
                loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/8hEFq5JzQ59XG5oxl2kU/iBG3hy1NIZZn54xP5e6jA8FsG4CgfX/main/d_creatorYzXsw3rsWmKCzF3R0kGr"
                )
            )()
            local entity =
                Creator.createEntity(
                {
                    CustomName = "Ambush", -- Custom name of your entity
                    Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Ambush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
                    Speed = 200, -- Percentage, 100 = default Rush speed
                    DelayTime = 2, -- Time before starting cycles (seconds)
                    HeightOffset = 0,
                    CanKill = false,
                    KillRange = 25,
                    BreakLights = true,
                    BackwardsMovement = false,
                    FlickerLights = {
                        true, -- Enabled/Disabled
                        1 -- Time (seconds)
                    },
                    Cycles = {
                        Min = 2,
                        Max = 6,
                        WaitTime = 2
                    },
                    CamShake = {
                        true, -- Enabled/Disabled
                        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                        100 -- Shake start distance (from Entity to you)
                    },
                    Jumpscare = {
                        false, -- Enabled/Disabled
                        {
                            Image1 = "rbxassetid://10483855823", -- Image1 url
                            Image2 = "rbxassetid://10483999903", -- Image2 url
                            Shake = true,
                            Sound1 = {
                                10483790459, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Sound2 = {
                                10483837590, -- SoundId
                                {Volume = 0.5} -- Sound properties
                            },
                            Flashing = {
                                true, -- Enabled/Disabled
                                Color3.fromRGB(0, 0, 255) -- Color
                            },
                            Tease = {
                                true, -- Enabled/Disabled
                                Min = 4,
                                Max = 4
                            }
                        }
                    },
                    CustomDialog = {"You died to who you call Ambush...", "He rebounds", "Shadow Slime Uwu-"} -- Custom death message
                }
            )

            -----[[ Advanced ]]-----
            entity.Debug.OnEntitySpawned = function(entityTable)
                print("Entity has spawned:", entityTable.Model)
            end

            entity.Debug.OnEntityDespawned = function(entityTable)
                print("Entity has despawned:", entityTable.Model)
            end

            entity.Debug.OnEntityStartMoving = function(entityTable)
                print("Entity has started moving:", entityTable.Model)
            end

            entity.Debug.OnEntityFinishedRebound = function(entityTable)
                print("Entity has finished rebound:", entityTable.Model)
            end

            entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
                print("Entity:", entityTable.Model, "has entered room:", room)
            end

            entity.Debug.OnLookAtEntity = function(entityTable)
                print("Player has looked at entity:", entityTable.Model)
            end

            entity.Debug.OnDeath = function(entityTable)
                warn("Player has died.")
            end
            ------------------------

            -- Run the created entity
            Creator.runEntity(entity)
        end
    }
)

if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh or getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true then
    getgenv().Section5_3:Keybind(
        {
            Text = "Skip Door Keybind",
            Default = Enum.KeyCode.Clear,
            Callback = function()
                pcall(
                    function()
                        local HasKey = false
                        local CurrentDoor =
                            workspace.CurrentRooms[
                            tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                        ]:WaitForChild("Door")
                        for i, v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                            if v.Name == "KeyObtain" then
                                HasKey = v
                            end
                        end
                        if HasKey then
                            game.Players.LocalPlayer.Character:PivotTo(CFrame.new(HasKey.Hitbox.Position))
                            task.wait(0.3)
                            fireproximityprompt(HasKey.ModulePrompt, 0)
                            game.Players.LocalPlayer.Character:PivotTo(CFrame.new(CurrentDoor.Door.Position))
                            task.wait(0.3)
                            fireproximityprompt(CurrentDoor.Lock.UnlockPrompt, 0)
                        end
                        if LatestRoom == 50 then
                            CurrentDoor =
                                workspace.CurrentRooms[
                                tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom + 1)
                            ]:WaitForChild("Door")
                        end
                        game.Players.LocalPlayer.Character:PivotTo(CFrame.new(CurrentDoor.Door.Position))
                        task.wait(0.3)
                        CurrentDoor.ClientOpen:FireServer()
                    end
                )
            end
        }
    )
end

if getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh or getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M == true then
    getgenv().Section5_3:Keybind(
        {
            Text = "Auto Skip Door Keybind",
            Default = Enum.KeyCode.Clear,
            Callback = function()
                if getgenv().KeybindAutoSkip == 0 then
                    getgenv().KeybindAutoSkip = getgenv().KeybindAutoSkip + 1
                elseif getgenv().KeybindAutoSkip == 1 then
                    getgenv().KeybindAutoSkip = getgenv().KeybindAutoSkip - 1
                end

                if getgenv().KeybindAutoSkip == 1 then
                    getgenv().AutoDoor = true

                    getgenv().ACurrentDoor =
                        workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild(
                        "Door"
                    )

                    function AutoDoor()
                        if getgenv().AutoDoor == true then
                            local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

                            if getgenv().ACurrentDoor ~= nil then
                                pcall(
                                    function()
                                        local HasKey = false
                                        for i, v in ipairs(getgenv().ACurrentDoor.Parent:GetDescendants()) do
                                            if v.Name == "KeyObtain" then
                                                HasKey = v
                                            end
                                        end
                                        if HasKey then
                                            game.Players.LocalPlayer.Character:PivotTo(
                                                CFrame.new(HasKey.Hitbox.Position)
                                            )
                                            task.wait(0.3)
                                            fireproximityprompt(HasKey.ModulePrompt, 0)
                                            game.Players.LocalPlayer.Character:PivotTo(
                                                CFrame.new(getgenv().ACurrentDoor.Door.Position)
                                            )
                                            task.wait(0.3)
                                            fireproximityprompt(getgenv().ACurrentDoor.Lock.UnlockPrompt, 0)
                                        end

                                        if getgenv().ACurrentDoor.Parent.Name == "50" then
                                            getgenv().ACurrentDoor = workspace.CurrentRooms["51"]:WaitForChild("Door")
                                        elseif getgenv().ACurrentDoor.Parent.Name ~= "50" then
                                            getgenv().ACurrentDoor =
                                                workspace.CurrentRooms[
                                                tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)
                                            ]:WaitForChild("Door")
                                        end

                                        game.Players.LocalPlayer.Character:PivotTo(
                                            CFrame.new(getgenv().ACurrentDoor.Door.Position)
                                        )
                                        task.wait(0.3)
                                        getgenv().ACurrentDoor.ClientOpen:FireServer()
                                    end
                                )

                                if getgenv().ACurrentDoor.Parent.Name >= "99" then
                                    getgenv().AutoDoor = false
                                end
                            end
                        end
                    end

                    while getgenv().AutoDoor == true do
                        task.wait()
                        AutoDoor()
                        if getgenv().ACurrentDoor ~= nil then
                            task.wait()
                            AutoDoor()
                        end
                    end
                else
                    getgenv().AutoDoor = false
                end
            end
        }
    )
end

getgenv().Section5_3:Keybind(
    {
        Text = "Remove Door Keybind",
        Default = Enum.KeyCode.Clear,
        Callback = function()
            if getgenv().KeybindRemoveDoors == 0 then
                getgenv().KeybindRemoveDoors = getgenv().KeybindRemoveDoors + 1
            elseif getgenv().KeybindRemoveDoors == 1 then
                getgenv().KeybindRemoveDoors = getgenv().KeybindRemoveDoors - 1
            end

            local doorPosition = {}

            function deleteDoors()
                task.wait(0.25)
                if getgenv().KeybindRemoveDoors == 1 then
                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "Door" then
                            v.Transparency = 1
                            v.CanCollide = false
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "Part" and v.Parent.ClassName == "Model" and v.Name == "Hidden" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Plate" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Knob" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "SurfaceGui" and v.Parent.ClassName == "Model" and v.Name == "Sign" then
                            v.Enabled = false
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Sign" then
                            v.Transparency = 1
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "ThingToOpen" then
                            v.Transparency = 1
                            v.CanCollide = false
                        end
                    end
                end
            end

            function returnDoors()
                task.wait(0.25)
                if getgenv().KeybindRemoveDoors == 0 then
                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "Door" then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "Part" and v.Parent.ClassName == "Model" and v.Name == "Hidden" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Plate" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Knob" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "SurfaceGui" and v.Parent.ClassName == "Model" and v.Name == "Sign" then
                            v.Enabled = true
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "MeshPart" and v.Name == "Sign" then
                            v.Transparency = 0
                        end
                    end

                    for i, v in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
                        if v.ClassName == "MeshPart" and v.Parent.ClassName == "Model" and v.Name == "ThingToOpen" then
                            v.Transparency = 0
                            v.CanCollide = true
                        end
                    end
                end
            end

            if getgenv().KeybindRemoveDoors == 1 then
                while getgenv().KeybindRemoveDoors == 1 do
                    deleteDoors()
                end
            elseif getgenv().KeybindRemoveDoors == 0 then
                returnDoors()
            end
        end
    }
)

local drop =
    getgenv().Section6:Dropdown(
    {
        Text = "Nico's Nextbots | Working",
        List = {"Teleport"},
        Callback = function(v)
            local placeid = 10118559731

            for i, v in pairs(game:FindFirstChildOfClass("Players"):GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    game:GetService("TeleportService"):Teleport(placeid, v)
                end
            end
            task.wait(0.5)
            local NotificationBindable = Instance.new("BindableFunction")
            NotificationBindable.OnInvoke = callback
            --
            game.StarterGui:SetCore(
                "SendNotification",
                {
                    Title = "Teleport Failed",
                    Text = "Join The Game Manually",
                    Icon = "",
                    Duration = 5,
                    Callback = NotificationBindable
                }
            )
        end
    }
)

getgenv().Section6:Button(
    {
        Text = "Load Universal",
        Callback = function()
            loadstring(
                game:HttpGetAsync(
                    "https://slowpihax.xyz/Games/Universal.lua"
                )
            )()
        end
    }
)

getgenv().Section7:Button(
    {
        Text = "Scripted by slowpi#8954",
        Callback = function()
            local NotificationHolder =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
            local Notification =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
            Notification:Notify(
                {Title = "Script By slowpi#8954", Description = "Scripted By slowpi#8954"},
                {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "default"}
            )
        end
    }
)

getgenv().Section7:Button(
    {
        Text = "UI by Unnamed Library",
        Callback = function()
            local NotificationHolder =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
            local Notification =
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
            Notification:Notify(
                {Title = "UI Library by Rain-Design (GitHub)", Description = "Gui Made With Unnamed UI Library"},
                {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "default"}
            )
        end
    }
)
getgenv().xw0DLBPTqZkzEWOXx6qCScoNKSoBhGh = nil
getgenv().UtlpHuOwhroliTt4DRSwzv4qdQYuK9M = nil
getgenv().M6bBwLtxy43AzjR2jRZUe2bHslRrs0y = nil
end
