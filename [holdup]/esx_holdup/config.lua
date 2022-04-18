Config = {}
Config.Locale = 'en'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- 微小的圓柱狀圓
	DrawDistance = 15.0, Type = 1    -- 默認圓型，由於室內區域，繪製距離短
}

Config.PoliceNumberRequired = 0
Config.TimerBeforeNewRob    = 1800 -- 搶劫完成/取消後商店的冷卻時間計時器（以秒為單位）
Config.MaxDistance    = 20   -- 與機器人的最大距離，再離開機器人將取消機器人

Config.GiveBlackMoney = true -- 給黑錢？如果禁用，它將提供現金

Stores = {
	["paleto_twentyfourseven"] = {
		position = { x = 1736.32, y = 6419.47, z = 35.03 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "北部超商",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	--[[["sandyshores_twentyfoursever"] = {
		position = { x = 1961.24, y = 3749.46, z = 32.34 },
		--reward = math.random(5000, 120000),
		reward = 1500000,
		nameOfStore = "便利超商 Sandyshores",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},]]--
	["littleseoul_twentyfourseven"] = {
		position = { x = -709.17, y = -904.21, z = 19.21 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "市區超商(洗車場)",--洗車場
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	--[[["bar_one"] = {
		position = { x = 1990.57, y = 3044.95, z = 47.21 },
		--reward = math.random(5000, 120000),
		reward = 1500000,
		nameOfStore = "Yellow Jack. (Sandy Shores)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},]]--
	["ocean_liquor"] = {
		position = { x = -2959.33, y = 388.21, z = 14.00 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "西部超商",--全福旁
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["rancho_liquor"] = {
		position = { x = 1126.80, y = -980.40, z = 45.41 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "高速旁超商",--警局後
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["sanandreas_liquor"] = {
		position = { x = -1219.85, y = -916.27, z = 11.32 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "市區超商(海灘)",--海灘
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	--[[["grove_ltd"] = {
		position = { x = -43.40, y = -1749.20, z = 29.42 },
		--reward = math.random(5000, 120000),
		reward = 1500000,
		nameOfStore = "LTD Gasoline. (Grove Street)",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},]]--
	["mirror_ltd"] = {
		position = { x = 1160.67, y = -314.40, z = 69.20 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "賭場超商",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["fist_ltd"] = {
		position = { x = 2550.14, y = 386.28, z = 108.62 },
		--reward = math.random(5000, 120000),
		reward = 200000,
		nameOfStore = "拳頭超商",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
	["mid_ltd"] = {
		position = { x = 1396.21, y = 3611.28, z = 34.98 },
		--reward = math.random(5000, 120000),
		reward = 300000,
		nameOfStore = "中部超商",
		secondsRemaining = 200, -- seconds
		lastRobbed = 0
	},
}
