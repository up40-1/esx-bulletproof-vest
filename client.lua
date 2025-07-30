RegisterNetEvent('check_armor_use')
AddEventHandler('check_armor_use', function()
    local playerPed = PlayerPedId()

    local dict = "clothingtie"
    local anim = "try_tie_positive_a"

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end

    SendNUIMessage({ action = "showProgress" })

    TaskPlayAnim(playerPed, dict, anim, 8.0, -8.0, 5000, 1, 0, false, false, false)
    FreezeEntityPosition(playerPed, true)

    Wait(5000)

    ClearPedTasks(playerPed)
    FreezeEntityPosition(playerPed, false)

    SendNUIMessage({ action = "hideProgress" })

    SetPedArmour(playerPed, 100)
    TriggerServerEvent('remove_armor')
    ESX.ShowNotification("~b~You put on a bulletproof vest.")
end)
