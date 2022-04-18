ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local markerCoords = vector3(196.98, -935.88, 22.69)
        DrawMarker(1, markerCoords, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 150.0, 150.0, 10.0, 255, 0, 0, 100, false, true, 2, true, false, false, false)
        
    end
end)

local blips = {
    {title="非管制區域", colour=1, id=437, x = 196.98, y = -935.88, z = 30.69}
}
Citizen.CreateThread(function()
    
    Citizen.Wait(1)
    
    local bool = true
      
    if bool then
            
            for k,v in pairs(blips) do
               
    
                    zoneblip = AddBlipForRadius(v.x,v.y,v.z,750.0)
                            SetBlipSprite(zoneblip,1)
                            SetBlipColour(zoneblip,49)
                            SetBlipAlpha(zoneblip,75)
                             
            end
             
        
            for _, info in pairs(blips) do
            
                info.blip = AddBlipForCoord(info.x, info.y, info.z)
                            SetBlipSprite(info.blip, info.id)
                            SetBlipDisplay(info.blip, 4)
                            SetBlipColour(info.blip, info.colour)
                            SetBlipAsShortRange(info.blip, true)
                            BeginTextCommandSetBlipName("STRING")
                            AddTextComponentString(info.title)
                            EndTextCommandSetBlipName(info.blip)
            end
           
        bool = false
       
    end
end)