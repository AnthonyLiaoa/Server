Config              = {}
Config.DrawDistance = 100.0
Config.CopsRequired = 2
Config.BlipUpdateTime = 3000 --In milliseconds. I used it on 3000. If you want instant update, 50 is more than enough. Even 100 is good. I hope it doesn't kill FPS and the server.
Config.CooldownMinutes = 60
Config.Locale = 'en'

Config.Zones = {
	VehicleSpawner = {
		Pos   = {x = 759.01, y = -3195.18, z = 4.97},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Colour    = 6, --BLIP
		Id        = 229, --BLIP
	},
}

Config.VehicleSpawnPoint = {
      Pos   = {x = 767.71, y = -3195.20, z = 5.50},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Type  = -1,
}

Config.Item = {
	{name = 'bitcoin02', count = math.random(1, 3)},
	{name = 'bitcoin02', count = math.random(1, 3)},
	--{name = nil, count = 0},
	--{name = nil, count = 0},
	{name = 'gundesign01', count = math.random(1, 3)},
	{name = 'gundesign01', count = math.random(1, 3)},
	{name = 'gundesign02', count = math.random(1, 3)},
	{name = 'gundesign02', count = math.random(1, 3)},
	{name = 'gundesign02', count = math.random(1, 3)},
	{name = 'bitcoin', count = math.random(30, 50)},
	{name = 'bitcoin', count = math.random(30, 50)},
	{name = 'bitcoin', count = math.random(30, 50)},
	{name = 'bitcoin', count = math.random(30, 50)},
	{name = 'blowtorch', count = 1},
	{name = 'rasperry', count = 1},
	{name = 'c4_bank', count = 1},
	{name = 'lockpick', count = 1},
	{name = 'lockpick', count = 1},
	{name = 'lockpick', count = 1},
	{name = 'lockpick', count = 1},
}

Config.Delivery = {
	--Desert
	--Trevor Airfield 9.22KM
	Delivery1 = {
		Pos      = {x = 2130.68, y = 4781.32, z = 39.87},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 800000,
		Cars = {'teslax','s560m19','project8','488gtb'},
	},
	--Lighthouse 9.61KM
	Delivery4 = {
		Pos      = {x = 3333.51, y = 5159.91, z = 17.20},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1000000,
		Cars = {'teslax', 'panamera17turbo','488gtb','s560m19','project8'},
	},
	--House in Paleto 12.94KM
	Delivery7 = {
		Pos      = {x = -437.56, y = 6254.53, z = 29.02},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 800000,
		Cars = {'panamera17turbo','demonhawk','488gtb','s560m19'},
	},
	--Great Ocean Highway 10.47KM
	Delivery10 = {
		Pos      = {x = -2177.51, y = 4269.51, z = 47.93},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 1500000,
		Cars = {'demonhawk','teslax','panamera17turbo','488gtb','project8'},
	},
	--Marina Drive Desert 8.15KM
	Delivery13 = {
		Pos      = {x = 895.02, y = 3603.87, z = 31.72},
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type  = 1,
		Payment  = 2000000,
		Cars = {'project8','demonhawk','teslax','488gtb'},
	},
}
