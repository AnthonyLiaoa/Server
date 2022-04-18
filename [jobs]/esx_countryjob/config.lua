Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.countryStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-1084.3, -813.23, 19.49),
			Sprite  = 58,
			Display = 4,
			Scale   = 1.2,
			Colour  = 38,
			Name = '『🕌』國軍'
		},
		
		BoatBlip = {
			--[[Coords = vector3(-1718.17, -1048.75, 2.15),
			Sprite  = 356,
			Display = 4,
			Scale   = 0.8,
			Colour  = 29,
			Name = '『🕌』軍用船庫']]--
		},

		------更衣室
		Cloakrooms = {
			vector3(-1099,-830.7,14.08)
		},
        ------槍械室
		Armories = {
			vector3(-1106.57,-825.98,14.08)
		},
        -------車庫
		Vehicles = {
			{
				------生成點
				Spawner = vector3(-1112.98, -843.37, 13.04),
				------買點
				InsideShop = vector3(-1114.34, -837.83, 13.04),
				------生成的位置
				SpawnPoints = {
					{ coords = vector3(-1112.36, -836.39, 12.34), heading = 131.72, radius = 6.0 },
					{ coords = vector3(-1117.98, -854.8, 12.34), heading = 36.96, radius = 6.0 }
				}
			},

			{
				------生成點
				Spawner = vector3(-1085.93, -849.55, 4.58),
			    -----買點
				InsideShop = vector3(-1114.34, -837.83, 13.04),
				------生成的位置
				SpawnPoints = {
					{ coords = vector3(-1076.6, -846.84, 3.88), heading = 219.84, radius = 6.0 },
					--{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				------生成點
				Spawner = vector3(-1092.48, -840.17, 37.4),
				-----買點
				InsideShop = vector3(-1096.35, -832.32, 37.4),
				------生成的位置
				SpawnPoints = {
					{ coords = vector3(-1096.35, -832.32, 37.4), heading = 309, radius = 10.0 }
				}
			}
		},

		Boats = {
			{
				------生成點
				Spawner = vector3(-1527.12, -1315.31, 1.39),
				-----買點
				InsideShop = vector3(-1570.74, -1341.69, 0.81),
				------生成的位置
				SpawnPoints = {
					{ coords = vector3(-1570.74, -1341.69, 0.81), heading = 120.23, radius = 10.0 },
				}
			}
		},
		
		-----老闆系統
		BossActions = {
			vector3(-1102.27,-820.02,14.08)
		}

	},
	
	--[[Sandy = {

		Blip = {
			Coords  = vector3(1846.03, 3692.6, 32.48),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 0,
			Name = '『👮』中部分局'
		},

		BoatBlip = {
			Coords  = vector3(1593.45, 3907.78, 32.51),
			Sprite  = 356,
			Display = 4,
			Scale   = 0.8,
			Colour  = 29,
			Name = '『👮』警用船庫'
		},

		Cloakrooms = {
			vector3(1849.41, 3695.74, 34.36)
		},

		Armories = {
			vector3(1846.03, 3692.6, 34.26)
		},

		Vehicles = {
			{
				Spawner = vector3(1861.01, 3680.86, 33.72),
				InsideShop = vector3(228.18, -995.48, -98.0),
				SpawnPoints = {
					{ coords = vector3(1869.05, 3682.14, 33.65), heading = 301.89, radius = 6.0 },
					{ coords = vector3(1863.57, 3678.86, 33.64), heading = 306.91, radius = 6.0 },
					{ coords = vector3(1869.13, 3675.67, 32.88), heading = 300.4, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(1850.9, 3707.01, 33.32),
				InsideShop = vector3(228.18, -995.48, -98.0),
				SpawnPoints = {
					{ coords = vector3(1842.65, 3707.66, 33.51), heading = 14.89, radius = 6.0 },
					{ coords = vector3(1838.34, 3700.09, 34.06), heading = 302.39, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(1845.23, 3678.16, 38.61),
				InsideShop = vector3(1833.48, 3681.17, 39.52),
				SpawnPoints = {
					{ coords = vector3(1833.48, 3681.17, 39.52), heading = 23.33, radius = 10.0 }
				}
			}
		},

		Boats = {
			{
				Spawner = vector3(1593.45, 3907.78, 32.51),
				InsideShop = vector3(1591.21, 3916.07, 29.77),
				SpawnPoints = {
					{ coords = vector3(1591.21, 3916.07, 29.77), heading = 12.51, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(1862.57, 3690.4, 34.26)
		}

	}]]--

}

Config.AuthorizedWeapons = {
	recruit = {

	},

	officer = {

	},

	sergeant = {

	},

	lieutenant = {

	},

	chef = {
		--{ weapon = 'WEAPON_CARBINERIFLE', price = 30000 },
		--{ weapon = 'WEAPON_COMBATPISTOL', price = 30000 }, 
		--{ weapon = 'WEAPON_NIGHTSTICK', price = 5000 },
		--{ weapon = 'WEAPON_STUNGUN', price = 100000 },
		--{ weapon = 'WEAPON_SNSPISTOL', price = 150000 },
		--{ weapon = 'WEAPON_ASSAULTSMG', price = 150000 },
		--{ weapon = 'WEAPON_APPISTOL', price = 150000 },
		--{ weapon = 'WEAPON_ASSAULTSHOTGUN', price = 150000 },
	},
	intendent = {
		--{ weapon = 'WEAPON_CARBINERIFLE', price = 30000 },
		--{ weapon = 'WEAPON_COMBATPISTOL', price = 30000 },
		--{ weapon = 'WEAPON_NIGHTSTICK', price = 5000 },
		--{ weapon = 'WEAPON_STUNGUN', price = 100000 },
		--{ weapon = 'WEAPON_SNSPISTOL', price = 150000 },
		--{ weapon = 'WEAPON_ASSAULTSMG', price = 150000 },
		--{ weapon = 'WEAPON_APPISTOL', price = 150000 },
		--{ weapon = 'WEAPON_ASSAULTSHOTGUN', price = 150000 },
	},
	
	boss = {
		{ weapon = 'WEAPON_CARBINERIFLE', price = 30000 },  --卡賓步槍
		{ weapon = 'WEAPON_COMBATPISTOL', price = 30000 },  --戰鬥手槍
		{ weapon = 'WEAPON_NIGHTSTICK', price = 5000 },     --警棍
		--{ weapon = 'WEAPON_STUNGUN', price = 20000 },       --電擊槍
		--{ weapon = 'WEAPON_SNSPISTOL', price = 150000 },    --劣質手槍
		{ weapon = 'WEAPON_ASSAULTSMG', price = 150000 },   --突擊衝鋒
		{ weapon = 'WEAPON_APPISTOL', price = 150000 },     --穿甲手槍
		--{ weapon = 'WEAPON_ASSAULTSHOTGUN', price = 150000 },--突擊霰彈
		--{ weapon = 'WEAPON_CARBINERIFLE_MK2', price = 300000 },--卡賓MKII
		--{ weapon = 'WEAPON_HEAVYSNIPER', price = 500000},   --重狙
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'hmmwv', label = '國軍專用', price = 300000 },
		--{ model = 'r1custom', label = '警員重機', price = 30000},
	},

	recruit = {
		--{ model = 'ghispo2', label = '正式警員專用', price = 50000 },
		
		--{ model = 'pd_snake', label = '走私車專用追逐車輛', price = 30000},

	},

	officer = {
		--{ model = 'ghispo2', label = '正式警員專用', price = 50000 },
		--{ model = 'pd_snake', label = '走私車專用追逐車輛', price = 30000},
		--{ model = 'BerlinLifeRP', label = '警用鎮暴車', price = 200000},
	},

	sergeant = {
		--{ model = 'ghispo2', label = '正式警員專用', price = 50000 },
		--{ model = 'pd_snake', label = '走私車專用追逐車輛', price = 30000},
		--{ model = 'BerlinLifeRP', label = '警用鎮暴車', price = 200000},
	},

	lieutenant = {
		--{ model = 'ghispo2', label = '正式警員專用', price = 50000 },
		--{ model = 'pd_snake', label = '走私車專用追逐車輛', price = 30000},
		--{ model = 'riot', label = '警用鎮暴車', price = 300},
		--{ model = 'BerlinLifeRP', label = '警用鎮暴車', price = 200000},
	},

	chef = {
		--{ model = 'ghispo2', label = '正式警員專用', price = 50000 },
		--{ model = 'nm_corvette', label = '偵防車(跑車)', price = 200000},
		--{ model = 'pd_snake', label = '走私車專用追逐車輛', price = 30000},
		--{ model = 'BerlinLifeRP', label = '警用鎮暴車', price = 200000},
	},

    intendent = {

	},

	boss = {
		--{ model = 'ghispo2', label = '正式警員專用', price = 50000 },
		--{ model = 'legacycharg', label = '正式警員專用', price = 50000 },
		--{ model = 'r1custom', label = '警員重機', price = 30000},
		--{ model = 'polf430', label = '署長專用', price = 150000 },
		--{ model = 'cobra11f30mk1', label = '署長車', price = 100000 },
		--{ model = 'nm_corvette', label = '偵防車(跑車)', price = 200000},
		--{ model = 'BerlinLifeRP', label = '警用鎮暴車', price = 200000},
		--{ model = 'pd_snake', label = '走私車專用追逐車輛', price = 30000},
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {
--		{ model = 'polmav', label = '警用直升機', livery = 0, price = 10000 }
	},

	sergeant = {
--		{ model = 'polmav', label = '警用直升機', livery = 0, price = 10000 }
	},

	lieutenant = {
		{ model = 'cargobob', label = '軍用直升機', livery = 0, price = 500000 }
	},

	chef = {
		{ model = 'cargobob', label = '軍用直升機', livery = 0, price = 500000 }
	},

	intendent =  {
		{ model = 'cargobob', label = '軍用直升機', livery = 0, price = 500000 }
	},
	
	boss = {
		{ model = 'cargobob', label = '軍用直升機', livery = 0, price = 500000 }
	}
}

Config.AuthorizedBoats = {
	recruit = {},

	officer = {
		{ model = 'predator', label = '警用快艇', livery = 0, price = 100000 }
	},

	sergeant = {
		{ model = 'predator', label = '警用快艇', livery = 0, price = 100000 }
	},

	lieutenant = {
		{ model = 'predator', label = '警用快艇', livery = 0, price = 100000 }
	},

	chef = {
		{ model = 'predator', label = '警用快艇', livery = 0, price = 100000 }
	},

	intendent =  {
		{ model = 'predator', label = '警用快艇', livery = 0, price = 100000 }
	},
	
	boss = {
		{ model = 'predator', label = '警用快艇', livery = 0, price = 100000 }
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {                
		--[[male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 56,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = 19,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}]]--
	},
	officer_wear = {
		--[[male = {
			['tshirt_1'] = 122,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 24,   ['pants_2'] = 0,
			['shoes_1'] = 56,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,    ['chain_2'] = 0,
			['ears_1'] = 19,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}]]--
	},
	sergeant_wear = {
		--[[male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 53,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 53,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = -1,   ['chain_2'] = 0,
			['ears_1'] = 15,     ['ears_2'] = 1
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}]]--
	},
	intendent_wear = {
		--[[male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}]]--
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		--[[male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}]]--
	},
	chef_wear = {
		--[[male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}]]--
	},
	boss_wear = { -- currently the same as chef_wear
		--[[male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}]]--
	},
	bullet_wear = {
		--[[male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}]]--
	},
	gilet_wear = {
		--[[male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}]]--
	}

}