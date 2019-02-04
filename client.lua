------------ Made By caprancTV ------------

RegisterNetEvent('SendPlayerHelp')
AddEventHandler('SendPlayerHelp', function(needhelpingParty, message)
	TriggerServerEvent("SendHelpRequestToStaff", needhelpingParty, message)
end)
