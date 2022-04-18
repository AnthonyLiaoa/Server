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

Config.GroveStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(1381.49, 1147.27, 114.33),
			Sprite  = 543,
			Display = 4,
			Scale   = 1.0,
			Colour  = 8
		},

		Cloakrooms = {
			vector3(0, 0, 0)
		},

		Armories = {
			vector3(1400.59, 1141.45, 113.34)
		},

		Vehicles = {
			--[[{
				Spawner = vector3(1416.62, 1112.73, 114.83),
				InsideShop = vector3(1413.74, 1118.16, 113.84),
				SpawnPoints = {
					{ coords = vector3(1412.74, 1118.16, 113.84), heading = 94.84, radius = 6.0 },
				}
			}]]--
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
			vector3(1395.33, 1159.52, 114.34)
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
		{ model = 'PCS18', label = '公司車', price = 200000 },
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