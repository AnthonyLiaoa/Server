local sec = 1000
cfg = {}
cfg['font'] = 'font4thai'
cfg['Delay'] = 500
cfg['Keys'] = {'E',38}
cfg["DisableKeys"] = {                        --  ปิด Keys ที่จะไม่ให้ใช้งานระหว่างโพร
    24,   -- INPUT_ATTACK
    25,   -- INPUT_AIM
    140,  -- ATTACK (R)
    21,   -- INPUT_SPRINT
    22,   -- INPUT_JUMP
    -- 38,   -- INPUT_PICKUP (E)
    29,   -- (B)
    73,   -- (X)
    323,  -- (X)
    245,  -- (T)
    246,  -- (Y)
    170,  -- (F3)
}
cfg['zone'] = {

	['PineApple'] = { 
		name = '鳳梨包裝',
		coords = vector3(-316.33, 2782.79, 60.27),
		Blips = { OpenBlip = false, name = '鳳梨包裝' , sprite = 128, color = 2,  scale = 0.5 },
		Marker = { type = 2 , color = { r = 255 , g = 137 , b = 0 , a = 100 }, size = {x = 1.0, y = 1.0, z = 1.0},},
		TextShow = "按E包裝鳳梨",
		Distance = 2.5,
		xItem = { 
			Add = {
				{ name = 'D-2' , ct =  1 , pct = 100},

			} , 
			Remove = { name = 'D-1' , ct =  1}
		},
		Time = 5 * sec
	},

--	['Stone'] = { 
--		name = 'หิน',
--		coords = vector3(2651.77 , 2806.71, 34.15),
--		Blips = { OpenBlip = false, name = '<font face="sarabun"> จุดแพ็คหิน </font>' , sprite = 318, color = 28,  scale = 0.6 },
--		Marker = { type = 2 , color = { r = 255 , g = 197 , b = 5 , a = 80 }, size = {x = 1.0, y = 1.0, z = 1.0},},
--		Distance = 3 ,
--		xItem = { 
--			Add = {
--				{ name = 'water' , ct =  2 , pct = 100},
--				{ name = 'water' , ct =  1 , pct = 30},
--				{ name = 'water' , ct =  1 , pct = 20},
--				{ name = 'water' , ct =  1 , pct = 10},
--				{ name = 'water' , ct =  1 , pct = 5},
--			} , 
--			Remove = { name = 'water' , ct =  5}
--		},
--		Time = 5 * sec
--	},
}