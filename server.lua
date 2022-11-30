--[[
   whit3
   For better security: https://discord.gg/KDjp4HND
]]

Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(7000)
		if #GetPlayers() > 0 then 
         doubleConnectDetection = {}
			for k,v in pairs(GetPlayers()) do	
				if IsPedAPlayer(GetPlayerPed(v)) ~= false then
					if doubleConnectDetection[GetPlayerIdentifiers(v)[1]] == nil then 
						doubleConnectDetection[GetPlayerIdentifiers(v)[1]] = 1
					else 
						DropPlayer(v, 'Double connect detection')
					end 
				end
			end
      end
	end
end)