_G.OnKey = 'Z' --key to turn clicker on
_G.OffKey = 'X' --key to turn clicker off
_G.SafeKey = 'C' --key to close script
_G.Delay = 0.2 --delay between each click (seconds)

local uis = game:GetService("UserInputService")
local sg = game:GetService("StarterGui")
local click = false
local function sendInstructions(text)
    local instructions = _G.OnKey .. " key to start\n" .. _G.OffKey .. " key to end\n" .. _G.SafeKey .. " key to exit"
    if text ~= nil then
        instructions = text
    end
    
    sg:SetCore("SendNotification", {
        Title = "Clicker",
        Text = instructions,
        Duration = 5,
        Button1 = 'Ok'
    })
end


function onInput(inputobj, gp)
    if gp then return end
    local key = inputobj.KeyCode.Name
    if key == _G.OnKey then
        click = true
        print('click true')
    else if key == _G.OffKey then
        click = false
        print('click false')
    else if key == _G.SafeKey then
        click = false
        _G.OnKey = ''
        _G.OffKey = ''
        _G.SafeKey = ''
        sendInstructions('Exited')
        script:Destroy()
    end
    end
end
end

uis.InputBegan:Connect(onInput)

--Run
sendInstructions("Clicker by 5SOO, thank you for using this script")
sendInstructions(nil)

while true do
    if click then
        pcall(function() mouse1click() end)
        pcall(function() leftpress() end)
        pcall(function() Input.LeftClick() end)
        print('clicked')       
    end
    wait(_G.Delay)
end
