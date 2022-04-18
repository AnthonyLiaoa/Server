Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 12000  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 15 * minute  -- Time til respawn is available 10
Config.BleedoutTimer              = 30 * minute -- Time til the player bleeds out 5


Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = false --死亡掉武器
Config.RemoveCashAfterRPDeath     = false --死亡掉落現金
Config.RemoveItemsAfterRPDeath    = false --死亡掉落物品


-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

--Config.RespawnPoint = { coords = vector3(354.17, -588.52, 43.32), heading = 62.24 }

--Config.RespawnPoint = { coords = vector3(225.91, -786.04, 30.73), heading = 160.35 } --公停
--Config.RespawnPoint = { coords ={x= 225.91, y= -786.04, z= 30.73}, heading = 160.35 } --公停
Config.RespawnPoint = { coords = vector3(341.0, -1397.3, 32.5), heading = 48.5 }

Config.Hospitals = {

	-- CentralLosSantos = {

	-- 	Blip = {
	-- 		coords = vector3(307.7, -1433.4, 28.9),
	-- 		sprite = 61,
	-- 		scale  = 0.8,
	-- 		color  = 1
	-- 	},

	-- 	AmbulanceActions = {
	-- 		vector3(270.5, -1363.0, 23.5)
	-- 	},

	-- 	Pharmacies = {
	-- 		vector3(230.1, -1366.1, 38.5)
	-- 	},

	-- 	Vehicles = {
	-- 		{
	-- 			Spawner = vector3(307.7, -1433.4, 30.0),
	-- 			InsideShop = vector3(446.7, -1355.6, 43.5),
	-- 			Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
	-- 			SpawnPoints = {
	-- 				{ coords = vector3(297.2, -1429.5, 29.8), heading = 227.6, radius = 4.0 },
	-- 				{ coords = vector3(294.0, -1433.1, 29.8), heading = 227.6, radius = 4.0 },
	-- 				{ coords = vector3(309.4, -1442.5, 29.8), heading = 227.6, radius = 6.0 }
	-- 			}
	-- 		}
	-- 	},

	-- 	Helicopters = {
	-- 		{
	-- 			Spawner = vector3(317.5, -1449.5, 46.5),
	-- 			InsideShop = vector3(305.6, -1419.7, 41.5),
	-- 			Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
	-- 			SpawnPoints = {
	-- 				{ coords = vector3(313.5, -1465.1, 46.5), heading = 142.7, radius = 10.0 },
	-- 				{ coords = vector3(299.5, -1453.2, 46.5), heading = 142.7, radius = 10.0 }
	-- 			}
	-- 		}
	-- 	},

	-- 	FastTravels = {
	-- 		{
	-- 			From = vector3(294.7, -1448.1, 29.0),
	-- 			To = { coords = vector3(272.8, -1358.8, 23.5), heading = 0.0 },
	-- 			Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
	-- 		},

	-- 		{
	-- 			From = vector3(275.3, -1361, 23.5),
	-- 			To = { coords = vector3(295.8, -1446.5, 28.9), heading = 0.0 },
	-- 			Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
	-- 		},

	-- 		{
	-- 			From = vector3(247.3, -1371.5, 23.5),
	-- 			To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
	-- 			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
	-- 		},

	-- 		{
	-- 			From = vector3(335.5, -1432.0, 45.50),
	-- 			To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
	-- 			Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
	-- 		},

	-- 		{
	-- 			From = vector3(234.5, -1373.7, 20.9),
	-- 			To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
	-- 			Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
	-- 		},

	-- 		{
	-- 			From = vector3(317.9, -1476.1, 28.9),
	-- 			To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
	-- 			Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
	-- 		}
	-- 	},

	-- 	FastTravelsPrompt = {
	-- 		{
	-- 			From = vector3(237.4, -1373.8, 26.0),
	-- 			To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
	-- 			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
	-- 			Prompt = _U('fast_travel')
	-- 		},

	-- 		{
	-- 			From = vector3(256.5, -1357.7, 36.0),
	-- 			To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
	-- 			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
	-- 			Prompt = _U('fast_travel')
	-- 		}
	-- 	}

	-- },

	Pillbox = {

		Blip = {
			coords = vector3(296.23, -598.21, 42.33),
			sprite = 61,
			scale  = 0.8,
			color  = 38
		},
	
		AmbulanceActions = {
			vector3(296.23, -598.21, 42.33)
		},

		Cloakrooms = {
			vector3(298.94, -598.08, 42.28)
		},
	
		Pharmacies = {
		 	vector3(304.53, -600.1, 42.28)
		},
	
		Vehicles = {
			{
				Spawner = vector3(299.76, -579.47, 43.26),
				InsideShop = vector3(293.73, -586.66, 42.17),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(293.73, -586.66, 42.17), heading = 337.65, radius = 4.0 },
					{ coords = vector3(289.25, -597.89, 42.17), heading = 337.65, radius = 4.0 },
					--{ coords = vector3(-454.06, -340.35, 34.01), heading = 351.89, radius = 4.0 },
					--{ coords = vector3(289.9, -583.9, 43.2), heading = 338.6, radius = 4.0 }
				}
			}
		},
	
		Helicopters = {
			{
				Spawner = vector3(339.3, -588.61, 74.17),
				InsideShop = vector3(351.76, -588.3, 73.17),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.76, -588.3, 73.17), heading = 14.85, radius = 10.0 }
				}
			},
			{
				Spawner = vector3(-450.39, -320.63, 78.17),
				InsideShop = vector3(-457.68, -288.16, 78.17),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-457.68, -288.16, 78.17), heading = 15.38, radius = 10.0 }
				}
			}
		},
	
		FastTravels = {
			{
				From = vector3(360.1, -585.0, 27.7),
				To = { coords = vector3(336.9, -591.4, 43.3), heading = 67.3 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},
	
			{
				From = vector3(339.3, -592.5, 42.3),
				To = { coords = vector3(356.2, -597.1, 28.8), heading = 253.5 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},
	
		FastTravelsPrompt = {
			{
				From = vector3(327.54, -602.94, 43.3),
				To = { coords = vector3(339.9, -586.7, 74.2), heading = 249.1 },
				Marker = { type = 34, x = 1.0, y = 1.0, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			},
	
			{
				From = vector3(339.3, -583.9, 74.2),
				To = { coords = vector3(332.05, -595.33, 43.3), heading = 255.1 },
				Marker = { type = 42, x = 1.0, y = 1.0, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = true },
				Prompt = _U('fast_travel')
			}
		}
	}
}


Config.AuthorizedVehicles = {

	ambulance = {
		--{ model = 'benzambu', label = '醫護車', price = 100},
		--{ model = 'dodgeEMS', label = '道奇醫護車', price = 1000},
		--{ model = 'amaf', label = '阿法醫護車', price = 100000},
		{ model = 'Ambugtr', label = '醫護GTR', price = 20000},
		{ model = 'svj3', label = '醫護藍寶', price = 30000},
	},

	pdoctor = {
		--{ model = 'benzambu', label = '醫護車', price = 100},
		--{ model = 'dodgeEMS', label = '道奇醫護車', price = 1000},
		--{ model = 'amaf', label = '阿法醫護車', price = 100000},
		{ model = 'Ambugtr', label = '醫護GTR', price = 20000},
		{ model = 'svj3', label = '醫護藍寶', price = 30000},
		{ model = 'ems_gs1200', label = '醫護重機', price = 80000},
	},
	
	doctor = {
		--{ model = 'benzambu', label = '醫護車', price = 100},
		--{ model = 'dodgeEMS', label = '道奇醫護車', price = 1000},
		--{ model = 'amaf', label = '阿法醫護車', price = 100000},
		{ model = 'Ambugtr', label = '醫護GTR', price = 20000},
		{ model = 'svj3', label = '醫護藍寶', price = 30000},
		--{ model = 'cprotection', label = '路虎醫護車', price = 150000},
		{ model = 'ems_gs1200', label = '醫護重機', price = 80000},
	},

	chief_doctor = {
		--{ model = 'benzambu', label = '醫護車', price = 100},
		--{ model = 'dodgeEMS', label = '道奇醫護車', price = 1000},
		{ model = 'Ambugtr', label = '醫護GTR', price = 20000},
		{ model = 'svj3', label = '醫護藍寶', price = 30000},
		--{ model = 'amaf', label = '阿法醫護車', price = 100000},
		--{ model = 'cprotection', label = '路虎醫護車', price = 150000},
		{ model = 'ems_gs1200', label = '醫護重機', price = 80000},
	},

	pchief_doctor = {
		--{ model = 'benzambu', label = '醫護車', price = 100},
		--{ model = 'dodgeEMS', label = '道奇醫護車', price = 1000},
		{ model = 'Ambugtr', label = '醫護GTR', price = 20000},
		{ model = 'svj3', label = '醫護藍寶', price = 30000},
		--{ model = 'amaf', label = '阿法醫護車', price = 100000},
		--{ model = 'cprotection', label = '路虎醫護車', price = 150000},
		{ model = 'ems_gs1200', label = '醫護重機', price = 80000},
	},

	boss = {
		--{ model = 'benzambu', label = '醫護車', price = 100},
		--{ model = 'dodgeEMS', label = '道奇醫護車', price = 1000},
		{ model = 'Ambugtr', label = '醫護GTR', price = 20000},
		--{ model = 'scorcher', label = '醫護腳踏車', price = 10000},
		{ model = 'svj3', label = '醫護藍寶', price = 30000},
		--{ model = 'amaf', label = '阿法醫護車', price = 100000},
		--{ model = 'cprotection', label = '路虎醫護車', price = 150000},
		{ model = 'ems_gs1200', label = '醫護重機', price = 80000},
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1000000 }
	},

	chief_doctor = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1000000 },
		--{ model = 'seasparrow', label = 'Sea Sparrow', price = 1500000 }
	},

	boss = {
		{ model = 'buzzard2', label = 'Nagasaki Buzzard', price = 1000000 },
		--{ model = 'seasparrow', label = 'Sea Sparrow', price = 1500000 }
	}

}
