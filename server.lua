ESX.RegisterUsableItem('armor', function(source)
    TriggerClientEvent('check_armor_use', source)
end)

RegisterNetEvent('remove_armor')
AddEventHandler('remove_armor', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.removeInventoryItem('armor', 1)
    end
end)
