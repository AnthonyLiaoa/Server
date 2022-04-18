-------      .__   __.   ______   .___________.________  		-------
-------      |  \ |  |  /  __  \  |           |       /  		-------
-------      |   \|  | |  |  |  | `---|  |----`---/  /   		-------
-------      |  . `  | |  |  |  |     |  |       /  /    		-------
-------      |  |\   | |  `--'  |     |  |      /  /----.		-------
-------      |__| \__|  \______/      |__|     /________|		-------
-------                                                  		-------
-------      		                                            -------

------------------ Notz Developer -------------------------------------
------------------------   ซัพพอร์ท เฉพาะผู้ซื้อเท่านั้น    ------------------
-----ติดต่อสอบถามที่ Discord :: https://discord.gg/ffCsk8u9TD -----  

function RachYO()
	
	if Config.Aniwork.Animation.Scenario then
		TaskStartScenarioInPlace(GetPlayerPed(-1), Config.Aniwork.Animation.AnimationScene, 0, false)
	else
		ESX.Streaming.RequestAnimDict(Config.Aniwork.Animation.AnimationDirect, function()
			TaskPlayAnim(PlayerPedId(), Config.Aniwork.Animation.AnimationDirect, Config.Aniwork.Animation.AnimationScene, 3.0, 1.0, -1, 01, 0, 0, 0, 0)
		end)
	
	end
	
end