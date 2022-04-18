Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 22
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 255, g = 128, b = 192 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableSocietyOwnedVehicles = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.groveStations = {

  grove = {
    Blip = {
      Pos     = { x = 827.2, y = 1056.56, z = 310.39 },
      Sprite  = 84,
      Display = 4,
      Scale   = 1.0,
      Colour  = 75,
    },

    AuthorizedWeapons = {
	  },

	  AuthorizedVehicles = {
	  { name = 'v250',  label = '公司用車' },		  
	  },


    Armories = {
      { x = 860.81, y = 1073.17, z = 300.95 },
    },

    Vehicles = {
      --[[{
        Spawner    = { x = -773.43, y = 332.9, z = 243.38 },
        SpawnPoint = { x = -800.48, y = 333.08, z = 85.22 },
        Heading    = 180.31,
      }]]--
    },

    VehicleDeleters = {
      { x = -800.48, y = 333.08, z = 85.7 },
    },

    BossActions = {
      { x = 848.62, y = 1044.18, z = 300.93 }
    },

  },

  
}
