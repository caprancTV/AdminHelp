------------ Made By caprancTV ------------

local HelpCommand = "ahelp"

local staff ={
    "steam:11000010dbe40a2", -- Change this to add staff members
    "steam:[ADD HEX HERE]",
    "steam:[ADD HEX HERE]",
    "steam:[ADD HEX HERE]" -- To add more copy and paste "steam: [ADD HEX HERE]" underneath (REMEMBER, when adding more, add a comma after!)
}

RegisterCommand(HelpCommand, function(j, c)
	local message = table.concat(c, " ")
    local reportedPerson = tonumber(c[1])

    if message then
        TriggerClientEvent("chatMessage", j, "^1Help request Sent to Online Admins.")
        TriggerClientEvent("SendPlayerReport", -1, j, message)
    else
        TriggerClientEvent("chatMessage", j, "^3Please specify a help message. \n^7Usage: /" .. HelpCommand .. " Reason")
    end
end)

RegisterServerEvent('SendHelpRequestToStaff')
AddEventHandler('SendHelpRequestToStaff', function(needhelpingParty, message)
    local src = source

    if IsAdmin(src) then
        TriggerClientEvent('chatMessage', src, "^*^4[".. GetPlayerName(needhelpingParty).." NEEDS HELP]^r " .. message)
    end
end)

function IsAdmin(id)
    local hex = GetPlayerIdentifiers(id)[1]
    for k,v in pairs(staff) do
        if hex == v then
            return true
        end
    end
    return false
end
