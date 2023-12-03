-- Webhook's, replace with your URL webhook

local discordWebhookIn = "https://discord.com/api/webhooks/REPLACE"
local discordWebhookOut = "https://discord.com/api/webhooks/REPLACE"

-- List of FiveM licenses that can use the command
local allowedLicenses = {
    "license:2313fsf432432fse4tt5y6",  -- Replace this with admins FiveM licenses
    "license:ELDIABLOLOCO",
    -- Add more FiveM licenses here if u needed
}

local staffMode = {}
local startTime = {}

function sendToDiscord(source, name, message, color, webhook, timeInStaffMode)
    local date = os.date('*t')
    local timestamp = string.format('%04d-%02d-%02d %02d:%02d:%02d',
        date.year, date.month, date.day, date.hour, date.min, date.sec)
    
    local fields = {
        {["name"] = "Player ID", ["value"] = source, ["inline"] = true},
        {["name"] = "Name", ["value"] = name, ["inline"] = true},
        {["name"] = "Time in staff mode", ["value"] = timeInStaffMode and (timeInStaffMode .. " seconds") or "N/A", ["inline"] = true}
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({
        username = name,
        embeds = {{
            ["description"] = message,
            ["color"] = color,
            ["fields"] = fields,
            ["footer"] = {["text"] = "Date and time: " .. timestamp}
        }}
    }), { ['Content-Type'] = 'application/json' })
end

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

RegisterCommand('clock', function(source, args, rawCommand)
    local playerId = source
    local playerName = GetPlayerName(playerId)
    local identifiers = GetPlayerIdentifiers(playerId)
    local license = nil

    for _, v in pairs(identifiers) do
        if string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
            break
        end
    end

    if license and table.contains(allowedLicenses, license) then
        if args[1] == "in" then
            if not staffMode[playerId] then
                staffMode[playerId] = true
                startTime[playerId] = os.time()
                sendToDiscord(source, playerName, "Has entered staff mode.", 65280, discordWebhookIn)
                TriggerClientEvent('chat:addMessage', source, {
                    color = { 0, 255, 0},
                    multiline = true,
                    args = {"System", "You have entered staff mode."}
                })
            else
                TriggerClientEvent('chat:addMessage', source, {
                    color = { 255, 0, 0},
                    multiline = true,
                    args = {"System", "You are already in staff mode."}
                })
            end
        elseif args[1] == "out" then
            if staffMode[playerId] then
                staffMode[playerId] = nil
                local endTime = os.time()
                local timeInStaffMode = os.difftime(endTime, startTime[playerId])
                sendToDiscord(source, playerName, "Has exited staff mode.", 16711680, discordWebhookOut, timeInStaffMode)
                TriggerClientEvent('chat:addMessage', source, {
                    color = { 255, 0, 0},
                    multiline = true,
                    args = {"System", "You have exited staff mode. Time in staff mode: "..timeInStaffMode.." seconds."}
                })
            else
                TriggerClientEvent('chat:addMessage', source, {
                    color = { 255, 0, 0},
                    multiline = true,
                    args = {"System", "You are not in staff mode."}
                })
            end
        end
    else
        TriggerClientEvent('chat:addMessage', source, {
            color = { 255, 0, 0},
            multiline = true,
            args = {"System", "You do not have permission to use this command."}
        })
    end
end, false)
