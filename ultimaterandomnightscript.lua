-- When anyone says a specific word an audio plays saying that word out loud, you can easily add more
-- game link : https://www.roblox.com/games/86322978/Ultimate-Random-Night-0-8-8

local PlaySound = game:GetService("ReplicatedStorage").PlaySound
local function FunnymanTracking(msg, plr)
    local msg = string.lower(msg)
    if string.find(msg, "amongus") or string.find(msg, "among us") or string.find(msg, "sus") then
           PlaySound:FireServer(
           "rbxassetid://6395434995",
           0.5,
           100,
           CFrame.new(217.891998, 4.30000496, -126.300003)
           )
    elseif string.find(msg, "bruh") or string.find(msg, "bru") then
           PlaySound:FireServer(
           "rbxassetid://4275842574",
           0.5,
           100,
           CFrame.new(217.891998, 4.30000496, -126.300003)
           )
    elseif string.find(msg, "bababooey") or string.find(msg, "baba booey") then
           PlaySound:FireServer(
           "rbxassetid://4956861134",
           0.5,
           100,
           CFrame.new(217.891998, 4.30000496, -126.300003)
           )
    elseif string.find(msg, "oh my god") or string.find(msg, "omg") then
           PlaySound:FireServer(
           "rbxassetid://5331844382",
           0.5,
           100,
           CFrame.new(217.891998, 4.30000496, -126.300003)
           )
    elseif string.find(msg, "stop") and not string.find(msg, "its time to stop") then
           PlaySound:FireServer(
           "rbxassetid://6609642942",
           0.5,
           100,
           CFrame.new(217.891998, 4.30000496, -126.300003)
           )
    elseif string.find(msg, "its time to stop") then
           PlaySound:FireServer(
           "rbxassetid://4475282486",
           0.5,
           100,
           CFrame.new(217.891998, 4.30000496, -126.300003)
           )
    end
end

local Players = game:GetService("Players")
for i,plr in pairs(Players:GetPlayers()) do
    plr.Chatted:Connect(function(msg)
        FunnymanTracking(msg, plr)
    end)
end
Players.PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(function(msg)
        FunnymanTracking(msg, plr)
    end)
end)
