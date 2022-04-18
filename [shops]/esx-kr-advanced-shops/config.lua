Config                            = {}
Config.DrawDistance               = 20.0
Config.Locale = 'en'
Config.disable_custom_font = true
Config.DeliveryTime = 18000 -- 以SECOUNDS DEFAULT（18000）為5小時/ 300分鐘
Config.TimeBetweenRobberies = 900 -- 搶劫冷卻900
Config.CutOnRobbery = 30 -- 在目標商店中所佔的百分比
Config.RequiredPolices = 2 -- 為了搶劫
Config.SellValue = 4 -- 這是商店價值除以2
Config.ChangeNamePrice = 10000000 -- 以$為單位-您可以更改多少商店名稱
Config.TimeBlip = 24 --seconds

-- CONFIG ITEMS, DON'T FORGET TO ADD CORRECT NUMBER IN THE BRACKETS
Config.Items = {
    --[1] = {label = "Water",       item = "water",        price = 500},
    --[2] = {label = "Bread",      item = "bread",       price = 500},
}

Config.Images = {
  --[1] = {item = "water",   src = "img/water.png"},
  --[2] = {item = "bread",   src = "img/burger.png"},
}

Config.Zones = {

 -- ShopCenter = {
   -- Pos   = {x = 6.09,   y = -708.89,  z = 44.97, number = 'center'},
  --},
  --[[Shop1 = {
    Pos   = {x = 373.875,   y = 325.896,  z = 102.566, number = 1},
  },]]--
  Shop2 = {
    Pos = {x = 2557.458,  y = 382.282,  z = 107.622, number = 2},
  },
  --[[Shop3 = {
    Pos = {x = -3038.939, y = 585.954,  z = 6.908, number = 3},
  },]]--
  Shop4 = {
    Pos = {x = -1487.553, y = -379.107,  z = 39.163, number = 4},
  },
  Shop5 = {
    Pos = {x = 1392.562,  y = 3604.684,  z = 33.980, number = 5},
  },
  --[[Shop6 = {
    Pos = {x = -2968.243, y = 390.910,   z = 14.043, number = 6},
  },]]--
  --[[Shop7 = {
    Pos = {x = 2678.916,  y = 3280.671, z = 54.241, number = 7},
  },]]--
  Shop8 = {
    Pos = {x = -48.519,   y = -1757.514, z = 28.421, number = 8},
  },
  --[[Shop9 = {
    Pos = {x = 1163.373,  y = -323.801,  z = 68.205, number = 9},
  },]]--
  Shop10 = {
    Pos = {x = -707.501,  y = -914.260,  z = 18.215, number = 10},
  },
  --[[Shop11 = {
    Pos = {x = -493.57, y = -339.91,   z = 41.32, number = 11},
  },]]--
  --[[Shop12 = {
    Pos = {x = 1698.388,  y = 4924.404,  z = 41.063, number = 12},
  },]]--
  --[[Shop13 = {
    Pos = {x = 1961.464,  y = 3740.672, z = 31.343, number = 13},
  },]]--
  Shop14 = {
    Pos = {x = 1135.808,  y = -982.281,  z = 45.415, number = 14},
  },
  --[[Shop15 = {
    Pos = {x = 25.88,   y = -1347.1, z = 28.5, number = 15},
  },]]--
  --[[Shop16 = {
    Pos = {x = -1393.409, y = -606.624,  z = 29.319, number = 16},
  },]]--
  --[[Shop17 = {
    Pos = {x = 547.431,   y = 2671.710, z = 41.156, number = 17},
  },]]--
  --[[Shop18 = {
    Pos = {x = -3241.927, y = 1001.462, z = 11.830, number = 18},
  },]]--
  --[[Shop19 = {
    Pos = {x = 1166.024,  y = 2708.930,  z = 37.157, number = 19},
  },]]--
  Shop20 = {
    Pos = {x = 1729.216,  y = 6414.131, z = 34.037, number = 20},
  },
  --[[Shop21 = {  --車業商店
    Pos = {x = -438.21,  y = 169.23, z = 79.78, number = 21},
  },]]--
  Shop22 = {  --扭蛋商店
    Pos = {x = 190.59,  y = -889.8, z = 29.71, number = 22},
  },
  --[[Robbery1 = {
    Pos   = {x = 379.19, y = 332.08, z = 102.57, number = 101, red = true},
  },]]--
  --[[Robbery2 = {
    Pos   = {x = 2550.15, y = 385.37, z = 107.62, number = 102, red = true},--東部高速
  },]]--
  --[[Robbery3 = {
    Pos   = {x = -3047.08, y = 586.37, z = 6.91, number = 103, red = true},
  },]]--
  --[[Robbery4 = {
    Pos   = {x = -1480.09, y = -373.35, z = 38.16, number = 104, red = true},--酒吧上面
  },]]--
  --[[Robbery5 = {
    Pos   = {x = 1396.21, y = 3611.28, z = 33.98, number = 105, red = true},--非法合成台
  },]]--
  --[[Robbery6 = {
    Pos   = {x = -2959.15, y = 388.54, z = 13.04, number = 106, red = true},
  },]]--
  --[[Robbery7 = {
    Pos   = {x = 2673.59, y = 3286.2, z = 54.24, number = 107, red = true},
  },]]--
  --[[Robbery8 = {
    Pos   = {x = -43.7, y = -1750.58, z = 28.42, number = 108, red = true},--9094
  },]]--
  --[[Robbery9 = {
    Pos   = {x = 1161.15, y = -315.73, z = 68.21, number = 109, red = true},
  },]]--
  --[[Robbery10 = {
    Pos   = {x = -708.29, y = -905.99, z = 18.22, number = 110, red = true},--市區洗車+加油站
  },]]--
  --[[Robbery11 = {
    Pos   = {x = -501.46, y = -332.43, z = 41.32, number = 111, red = true},
  },]]--
  --[[Robbery12 = {
    Pos   = {x = 1705.41, y = 4920.56, z = 41.06, number = 112, red = true},
  },]]--
  --[[Robbery13 = {
    Pos   = { x = 1959.04, y = 3747.93, z = 31.34, number = 113, red = true},
  },]]--
  --[[Robbery14 = {
    Pos   = {x = 1126.83, y = -982.6, z = 44.42, number = 114, red = true},--警局後
  },]]--
  --[[Robbery15 = {
    Pos   = {x = 28.48, y = -1339.94, z = 28.5, number = 115, red = true},
  },]]--
  --[[Robbery16 = {
    Pos   = {x = -1384.41, y = -628.71, z = 29.82, number = 116, red = true},
  },]]--
  --[[Robbery17 = {
    Pos   = {x = 546.86, y = 2663.71, z = 41.16, number = 117, red = true},
  },]]--
  --[[Robbery18= {
    Pos   = {x = -3249.3, y = 1004.54, z = 11.83, number = 118, red = true},
  },]]--
  --[[Robbery19 = {
    Pos   = {x = 1166.89, y = 2718.14, z = 36.16, number = 119, red = true},
  },]]--
  --[[Robbery20= {
    Pos   = {x = 1734.88, y = 6419.83, z = 34.04, number = 120, red = true},--北部
  },]]--
}

