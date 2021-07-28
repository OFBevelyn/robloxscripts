--Custom Mobs
--https://www.roblox.com/games/6299805723/RELEASE-Anime-Fighters-Simulator?refPageId=6eae412b-3082-4529-ba74-8fc48fc5a83c#
getgenv().Kyaaa = true -- on/off lol
function OniiChan()
    pcall(function()
        for Hurt,Onii in pairs(game.Workspace.Worlds:GetDescendants()) do
            if Onii:FindFirstChild("HumanoidRootPart") then
                Onii.Head.face.Texture = "rbxassetid://5070337028"
                if Onii:FindFirstChild("Clothing") and Onii.Clothing.ShirtTemplate then
                    Onii.Clothing.Name = "Shirt"
                end
                if Onii:FindFirstChild("Clothing") and Onii.Clothing.PantsTemplate then
                    Onii.Clothing.Name = "Pants"
                end
                if Onii:FindFirstChild("Shirt") and Onii:FindFirstChild("Pants") then
                    Onii.Shirt.ShirtTemplate = "rbxassetid://5328967798"
                    Onii.Pants.PantsTemplate = "rbxassetid://69"
                end
                Onii.HumanoidRootPart.EnemyInfo.Health.EnemyName.Text = "Onii Chan"
            end
        end
    end)
end
function ItaiItai(f)
    coroutine.wrap(f)()
end
ItaiItai(function()
    while getgenv().Kyaaa do wait()
        OniiChan()
    end
end)
