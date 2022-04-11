ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local coords = GetEntityCoords(GetPlayerPed(-1), false)
        local st = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
        if IsPedInVehicle(GetPlayerPed(-1), ESX.Game.GetClosestVehicle(GetEntityCoords(PlayerPedId(), false))) then
            SendNUIMessage({type = "base", streetname = GetStreetNameFromHashKey(st)})
        else
            SendNUIMessage({type = "base", streetname = " "})
        end
    end
end)