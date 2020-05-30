------------ Made By caprancTV ------------

RegisterNetEvent('SendPlayerReport')
AddEventHandler('SendPlayerReport', function(needhelpingParty, message)
	TriggerServerEvent("SendHelpRequestToStaff", needhelpingParty, message)
end)
