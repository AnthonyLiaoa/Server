Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 255, g = 128, b = 192 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.borthStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-947.44, -1475.31, 6.8),
			Sprite  = 378,
			Display = 4,
			Scale   = 1.0,
			Colour  = 75
		},

		Cloakrooms = {
			vector3(0, 0, 0)
		},

		Armories = {
			vector3(-885.45, -1440.77, 7.03)
		},

		Vehicles = {
			{
				Spawner = vector3(-956.83, -1503.13, 4.52),
				InsideShop = vector3(-944.46, -1525.93, 4.06),
				SpawnPoints = {
					{ coords = vector3(-961.17, -1496.62, 4.01), heading = 7.66, radius = 6.0 },
				}
			}
		},

		Helicopters = {
			{
				--[[Spawner = vector3(0, 0, 0),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}]]--
			}
		},

		BossActions = {
			vector3(-882.32, -1462.03, 7.03)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		
	},

	officer = {
		
	},

	sergeant = {
		
	},

	intendent = {
		
	},

	lieutenant = {
		
	},

	chef = {
		
	},

	boss = {
		--{ weapon = 'WEAPON_HEAVYPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'urus', label = '公司車', price = 200000 },
	},

	recruit = {

	},

	officer = {
		
	},

	sergeant = {
		
	},

	intendent = {
		
	},

	lieutenant = {
		
	},

	chef = {
		
	},

	boss = {
		
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {
		
	},

	intendent = {
		
	},

	lieutenant = {
		
	},
	
	chef = {
		
	},

	boss = {
		
	},
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 52,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 77,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 52,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 77,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 52,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 77,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 13,   ['torso_2'] = 2,
			['decals_1'] = 11,   ['decals_2'] = 1,
			['arms'] = 59,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 13,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 1,
			['arms'] = 59,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 13,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 2,
			['arms'] = 59,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 56,  ['tshirt_2'] = 0,
			['torso_1'] = 13,   ['torso_2'] = 0,
			['decals_1'] = 11,   ['decals_2'] = 3,
			['arms'] = 59,
			['pants_1'] = 28,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 70,
			['pants_1'] = 8,   ['pants_2'] = 0,
			['shoes_1'] = 42,   ['shoes_2'] = 2,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 10,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}