Config                            = {}
Config.DrawDistance               = 100
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'en'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-43.51, -1094.65, 25.45),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},---打開車輛選單

	ShopInside = {
		Pos     = vector3(-43.78, -1100.39, 26.01),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 101.8,
		Type    = -1
	},---看車點

	ShopOutside = {
		Pos     = vector3(-27.79, -1081.72, 26.22),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 69.75,
		Type    = -1
	},---出車點

	BossActions = {
		Pos   = vector3(0, 0, 0),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	-- GiveBackVehicle = {
	-- 	Pos   = vector3(-18.2, -1078.5, 25.6),
	-- 	Size  = {x = 3.0, y = 3.0, z = 1.0},
	-- 	Type  = (Config.EnablePlayerManagement and 1 or -1)
	-- },

	-- ResellVehicle = {
	-- 	Pos   = vector3(-44.6, -1080.7, -250.6),
	-- 	Size  = {x = 3.0, y = 3.0, z = 1.0},
	-- 	Type  = 1
	-- }

}
