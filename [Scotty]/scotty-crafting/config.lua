--[[
	file: config.lua
	resource: scotty-crafting
	author: Scotty1944
	contact: https://www.facebook.com/Scotty1944/
	warning: do not sell or release or using more than 1 server, or your license will be terminated
]]

Config = {}
Config["debug"] = true -- developer mode to activate "sc_bench" command
Config["craft_table_color"] = "gold" -- craft ui menu color (use only web code color)
Config["craft_duration"] = 5 -- craft duration
Config["craft_duration_multiply"] = true -- will duration multiply when craft more than one 多數的物品以倍數計算時間陳本
Config["craft_duration_max"] = 600 -- maximum craft duration
Config["craft_enable_fail"] = true -- fail chance enable 
Config["craft_fail_item"] = {"bread",1} -- when failed what you will get
Config["craft_table_sound_distance"] = 5.0 -- maxmimum sound distance
Config["craft_table_sound"] = { -- craft sound inside folder html/sound
	["success"] = "success", -- sound file when success
	["failed"] = "failed" -- sound file when failed
}
Config["notify_mode"] = "pnotify" -- which notify you use on your server ? between pnotify or mythic
Config["craft_discord"] = { -- Discord Webhook Beta
	["item"] = "https://discord.com/api/webhooks/860587655073890374/-EEdWyK5PLW-L3HEE3-2wRgB2myxfF5SQ49BG1VOgGvgkmOzJOIx7RohCUBUklR7Lz8j", -- webhook url
	["weapon"] = "https://discord.com/api/webhooks/860587731595165707/e5To4EIQ8eZ3UiOrAXJFv4RFEr549vvO8Ob5rUY2aQEcXREHxTNjwW7fWGR5K2Yfu59v" -- webhook url
}
Config["craft_cost"] = 100 -- craft cost 預設製作費用
Config["craft_cost_type"] = "cash" -- craft cost type (between "cash" or "black_money")
Config["craft_cost_multiply"] = true -- multiply craft cost when craft more than one 多數的物品會以倍數計算材料

Config["disable_auto_check_weapon"] = false -- disable auto check if item is weapon (set it to true if your server have weapon as a normal item)

Config["disable_blur"] = true -- actually it enable blur

Config["cash_symbol"] = "💵" -- cash icon
Config["black_money_symbol"] = "🧧" -- black money icon

Config["default_animation"] = {"anim@amb@business@coc@coc_unpack_cut_left@","cut_cough_coccutter"} -- default animation
Config["image_source"] = "nui://esx_inventoryhud/html/img/items/" -- image source for item icon

Config["craft_table"] = {
	-- {
	-- 	position = {x = 4090.87, y = -4672.96, z = 3.39, h = 324.38},
	-- 	max_distance = 2.0,
	-- 	map_blip = false,
	-- 	disable_model = true,
	-- 	marker = false, -- enable marker
	-- 	marker_scale = {1.5,1.5,1.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
	-- 	marker_color = {204,204,0}, -- color of marker (RGB)
	-- 	limit_category = { 19 }, -- category

	-- },
	{
	 	name = "~y~修車廠工作臺", -- title
	 	desc = "做好的東西記得報公司!", -- description
	 	model = GetHashKey("gr_prop_gr_bench_04a"), -- model
		
		disable_model = true, -- disable model
	  	marker = true, -- enable marker
	  	marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
	  	marker_color = {0,255,0}, -- color of marker (RGB)
		
		position = {x = -450.45, y = 176.72, z = 79.77, h = 338.07}, -- position
	 	table_color = "green", -- craft menu color
	 	max_distance = 3.0,
	 	map_blip = false,
	 	blip_name = "修車廠工作臺",
	 	limit_category = { 2 }, -- category
	 	job = {
			["mechanic"] = true,
		    ["rebel"]    = true,	 		
	 	},
	 	--police_required = 1,
	},
	{
	 	name = "~y~醫護工作臺",
	 	desc = "讓生命變得更美好~",
	  	model = GetHashKey("bkr_prop_meth_table01a"),
		
	  	--disable_model = true, -- disable model
	  	--marker = true, -- enable marker
	  	--marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
	  	--marker_color = {0,255,0}, -- color of marker (RGB)
		
	  	position = { x = 343.59, y = -573.23, z = 42.28, h = 160.41  },
	  	table_color = "pink", -- craft menu color
	  	max_distance = 2.0,
	  	map_blip = false,
		blip_name = "醫護工作臺",
		limit_category = { 4 },
		job = {
			["ambulance"] = true,
			["rebel"]    = true,	 
	
		},
	},
	{
	  	name = "~y~稻川集團搞怪工作區🤭",
	  	desc = "不做菜改作怪😜",
		  --model = GetHashKey("prop_cooker_03"),
		disable_model = true,
		marker = true, -- enable marker
		marker_scale = {1.5,1.5,1.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
		marker_color = {204,204,0}, -- color of marker (RGB)

	  	position = { x = -947.95, y = 1330.51, z = 302.67, h = 239.34 },---906.72 , -158.65, 83.5
	  	table_color = "red", -- craft menu color
	  	max_distance = 2.0,
	  	map_blip = false,
	  	blip_name = "稻川集團料理檯",
	  	limit_category = { 21 },
	  	no_item_limit = true, -- disable item limit check
		job = {
			["mafia"] = true,
			["rebel"]    = true,	 
	
		},  
	},
	{
		name = "~y~血狼社工作臺",
		desc = "做槍阿",
		--model = GetHashKey("prop_cooker_03"),
	  disable_model = true,
	  marker = true, -- enable marker
	  marker_scale = {1.5,1.5,1.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
	  marker_color = {204,204,0}, -- color of marker (RGB)

		position = { x = 1392.44, y = 1147.39, z = 113.34, h = 247.48 },---906.72 , -158.65, 83.5
		table_color = "red", -- craft menu color
		max_distance = 2.0,
		map_blip = false,
		blip_name = "血狼社工作台",
		limit_category = { 22 },
		no_item_limit = true, -- disable item limit check
	  job = {
		  ["grove"] = true,
		  ["rebel"]    = true,	 
  
	  },  
    },
    {
		name = "~y~中藥房槍枝工作臺",
		desc = "把槍做出來賣啦",
	    --	model = GetHashKey("bkr_prop_meth_table01a"),
	  
		disable_model = true, -- disable model
		marker = true, -- enable marker
		marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
		marker_color = {0,255,0}, -- color of marker (RGB)
	
		position = { x = -2691.72, y = -101.37, z = 16.01, h = 282.31  },
			
	  	table_color = "pink", -- craft menu color
	  	max_distance = 2.0,
	  	map_blip = false,
		blip_name = "中藥房槍枝工作臺",
		limit_category = { 14 },
		job = {
			["thelostmc"] = true,
			["rebel"]    = true,	 
	
		},  
	},

	{
		name = "~y~稻川合成台",
		desc = "重零開始",
	    --	model = GetHashKey("bkr_prop_meth_table01a"),
	  
		disable_model = true, -- disable model
		marker = true, -- enable marker
		marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
		marker_color = {0,255,0}, -- color of marker (RGB)
	
		position = { x = -964.49, y = 1351.96, z = 299.83, h = -290.42  },
			
	  	table_color = "pink", -- craft menu color
	  	max_distance = 2.0,
	  	map_blip = false,
		limit_category = { 5 },
		job = {
			["mafia"] = true,
			["rebel"]    = true,	 
	
		},  
	},

	{
		name = "~y~健合會合成台",
		desc = "重零開始",
	    --	model = GetHashKey("bkr_prop_meth_table01a"),
	  
		disable_model = true, -- disable model
		marker = true, -- enable marker
		marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
		marker_color = {0,255,0}, -- color of marker (RGB)
	
		position = { x = -372.37, y = 4368.86, z = 58.72, h = 19.71  },
			
	  	table_color = "pink", -- craft menu color
	  	max_distance = 2.0,
	  	map_blip = false,
		limit_category = { 23 },
		job = {
			["thelostmc"] = true,
			["rebel"]    = true,	 
	
		},  
	},
	{
		name = "~y~車業武器合成台",
		desc = "重零開始",
	    --	model = GetHashKey("bkr_prop_meth_table01a"),
	  
		disable_model = true, -- disable model
		marker = true, -- enable marker
		marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
		marker_color = {0,255,0}, -- color of marker (RGB)
	
		position = { x = -452.35, y = 156.28, z = 79.75, h = 19.71  },
			
	  	table_color = "pink", -- craft menu color
	  	max_distance = 2.0,
	  	map_blip = false,
		limit_category = { 24 },
		job = {
			["mechanic"] = true,
			["rebel"]    = true,	 
	
		},  
	},

	--[[{
		name = "~y~紅花商會搞怪工作區🤭",
		desc = "做最好吃更好😘",
		----model = GetHashKey("bkr_prop_meth_table01a"),
	   
		disable_model = true, -- disable model
		marker = true, -- enable marker
		marker_scale = {2.0,2.0,2.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
		marker_color = {253,71,178}, -- color of marker (RGB)
	   
		position = {x = -3206.53, y = 785.22, z = 7.93, h = 125.4  } ,
		table_color = "pink", -- craft menu color
		max_distance = 2.0,
	    map_blip = false,
	    blip_name = "紅花化妝台",
	    limit_category = { 3 },
		job = {
			["grove"] = true,
			["rebel"]    = true,	 
	
		},  
	},]]--

	{
	  	name = "~y~🏭代工廠加工臺🏭", -- title
	  	desc = "來把產物變更有意思吧!!", -- description
		position = {x = 216.46, y = -863.26, z = 29.44, h = 250.53  }, -- position
 	    table_color = "green", -- craft menu color
	  	max_distance = 2.0,
	 	map_blip = false,
	  	blip_name = "『🏭』產物加工臺",
		limit_category = { 8,9 }, -- category
		--[[job = {
			["unemployed"] = true,
			["police"] = true,
			["mechanic"] = true,
			["ambulance"] = true,
			["taxi"] = true,
			["thelostmc"] = true,
			["mafia"] = true,
			["grove"] = true,
			["rebel"]    = true,
		},		]]--  
			 		
    },

	--[[{
	 	name = "~y~🎣釣魚體驗工作臺🎣", -- title
	 	desc = "一起來破壞海洋生態吧！！", -- description
		position = {x = -1612.87, y = 5268.40, z = 4.03, h = 115.90 }, -- position
	    model = GetHashKey("prop_tablesaw_01"), -- model
	    table_color = "green", -- craft menu color
	 	max_distance = 2.0,
	    map_blip = true,
	 	blip_name = "『🎣』釣魚體驗工作臺",
	     limit_category = { 0 }, -- category
	     job = {
		   ["rebel"]	= true, 	
		   ["fisherman"] = true,	
	     },		  
	},]]--


	

	


	{
		name = "~y~🗡非法合成台",
		desc = "非法合成槍枝.比特幣都在這裡!!",


	 	position = {x = 1398.87, y = 3602.50, z = 37.94, h = 200.11},
		max_distance = 2.0,
		map_blip_sprite = 499,
		map_blip = false,
		limit_category = { 6,1 },
	  	blip_name = "【🗡】非法合成台",
	},

	--[[{
		name = "~y~✨特殊造型塗裝合成台✨", -- title
		desc = "想要特效就肝起來~", -- description
	  position = {x = 725.22, y = -1073.67, z = 27.31, h = 91.89  }, -- position
	   table_color = "green", -- craft menu color
		max_distance = 2.0,
	   map_blip = false,
		blip_name = "『✨』特殊造型合成台",
	  limit_category = { 25 , 26 , 27 , 28 }, -- category
	  job = {
		  ["unemployed"] = true,
		  ["police"] = true,
		  ["mechanic"] = true,
		  ["ambulance"] = true,
		  ["taxi"] = true,
		  ["thelostmc"] = true,
		  ["mafia"] = true,
		  ["grove"] = true,
		  ["borth"] = true,
		  ["rebel"] = true,	 		
	  },		  
				   
  },]]--

	--{
	--	name = "~y~🚘車商文件製作",
	--	
	--	disable_model = true, -- disable model
	--	marker = true, -- enable marker
	--	marker_scale = {2.0,2.0,0.5}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
	--	marker_color = {0,255,0}, -- color of marker (RGB)

	-- 	position = {x = -778.96, y = -242.96, z = 36.09, h = 200.11},
	--	max_distance = 2.0,
	--	map_blip_sprite = 499,
	--	map_blip = false,
	--	limit_category = { 0 },
	--	job = {
	--		["cardealer"] = true,
	--		["rebel"] = true,	 		
	--	 },
	--},



	--{
	--	name = "~y~警署文書", -- title
	--	desc = "做好記得鎖門!", -- description
	--	
	--	disable_model = true, -- disable model
	--	marker = true, -- enable marker
	--	marker_scale = {0.0,0.0,0.0}, -- size of marker (X.Y.Z)--   -1268.96 -1916.98 5.86
	--	marker_color = {0,255,0}, -- color of marker (RGB)

	--	position = {x = 487.24, y = -997.15, z = 29.69, h = 50.}, -- position 487.24,-997.15,30.69
	--	table_color = "green", -- craft menu color
	--	max_distance = 2.0,
	--	map_blip = false,

	--	limit_category = { 17 }, -- category
	--	job = {
	--	   ["police"] = true,
	--	   ["rebel"] = true,	 		
	--	},
	--	police_required = 0,
    --},


}

Config["command"] = {
	command = "craftmenu",
	limit_category = {19},
	table_color = "red", -- craft menu color
	enabled = false, -- enable command, if not using just set it to false
	event_mode = false, -- turn this special menu from command to event mode. command = event name
}

--[[
	REFERENCE
	CREATING NEW CATEGORY
	[1] = { -- create category
		name = "General", -- title
		scenario = "WORLD_HUMAN_AA_SMOKE", -- scenario  場景
		animation = { -- animation    動畫
			dict = "anim@amb@business@coc@coc_packing_hi@",
			anim = " base_boxeddoll",
			flag = 30
		},
		list = { -- list of item
			{
				item = "cloth",
				fail_chance = 15,
				fail_item = {"bread",1}, -- give something else when failed
				amount = 3,
				blueprint = {
					["leather"] = 1
				},
			},
		}
	}
	
	ADDING CRAFT RECIPE
	{
		item = "cloth", -- item name (if weapon make sure all letter is lowercase)
		fail_chance = 15, -- 失敗機率
		fail_item = {"bread",1}, -- 失敗後得到的東西
		amount = 1, -- 獲取的物品數量
		cost = 500, -- 所需金錢 (If you not set this will get from Config["craft_cost"])
		cost_type = "black_money", -- 金錢類型 (between "cash" or "black_money")
		
		craft_duration = 10, -- 製作時間
		scenario = "WORLD_HUMAN_AA_SMOKE", -- scenario 
		
		animation = { -- animation
			dict = "mp_player_inteat@burger",
			anim = "mp_player_int_eat_burger",
			flag = 30
		},
		
		equipment = { -- required equipment (will not remove on done)  需要的配備 （完成之後也不會消失）
			["scissors"] = true,
			["pro_wood"] = false
		},
		
		blueprint = { -- required material
			["leather"] = 1,
			["wood"] = 2
		},
	},
]]

Config["category"] = {
	[1] = {
		name = "非法武器製作",
		list = {
			--[[{
				name = "偷渡計畫表",
				item = "thiefcontract", 
				fail_chance = 1,
				amount = 1,
				cost = 50000,
				craft_duration = 10,
				blueprint = {
					["bitcoin02"] = 5,
					["bitcoin"] = 50,
					["diamond"] = 5,
				},
			
			},]]--
			{
				name = ".50手槍",
				item = "weapon_pistol50",
				amount = 1,
				cost = 100000,
				craft_duration = 120,
				blueprint = {
					["diamond"] = 20,
					["gold"] = 45,
					["gundesign01"] = 3,
					["gunkey"] = 1,
					["changecard"] = 3,
				},
			},
			--[[{
				name = "衝鋒手槍",
				item = "weapon_machinepistol",
				amount = 1,
				cost = 400000,
				craft_duration = 120,
				blueprint = {
					["copper"] = 100,
					 ["gold"] = 80,
					 ["diamond"] = 25,
					 ["bitcoin02"] = 20,
					 ["gundesign01"] = 5,
					 ["lsd"] = 200,
				},
			},]]--
			--[[{
				name = "小型衝鋒槍",
		   		item = "weapon_microsmg",  -------要合成的物品
		   		fail_chance = 0,
		   		amount = 1,
		   		cost = 300000,
		   		craft_duration = 10,
		   		blueprint = {
					["diamond"] = 25,
					["gold"] = 35,
					["bitcoin02"] =10,
					["gundesign01"] = 2,
					["gundesign02"] = 2,
		   		},
	  		},]]--
			{
				name = "特製卡賓步槍", 
				item = "weapon_SPECIALCARBINE",
				 fail_chance = 0,
				amount = 1,
				cost = 200000,
				craft_duration = 10,
				 blueprint = {
					 ["gold"] = 65,
					 ["diamond"] = 30,
					 ["gundesign02"] = 4,
					 ["gunkey"] = 2,
					 ["changecard"] = 6,
				 },
			},
			--[[{
				name = "精簡式步槍", 
				item = "weapon_compactrifle",
				fail_chance = 0,
				amount = 1,
				cost = 800000,
				craft_duration = 10,
				 blueprint = {
					 ["copper"] = 150,
					 ["gold"] = 100,
					 ["diamond"] = 30,
					 ["bitcoin02"] = 25,
					 ["gundesign02"] = 3,
					 ["lsd"] = 200,
					 --["gunkey"] = 2,
				 },
			},]]--
			--[[{
			 	item = "weapon_advancedrifle",
			 	fail_chance = 1,
			 	fail_item = {"bread",1},     ----- give something else when failed 失敗後獲取的精神賠償
			 	amount = 1,                  ------製作後獲得的數量
			 	cost = 500000,
			 	blueprint = {
			 		["iron"] = 500,
			 		["gold"] = 150,
			 		["gundesign01"] = 20,
				
			 	},

			},]]--
			-- {
			--  	item = "weapon_PUMPSHOTGUN",
			--  	fail_chance = 3,
			--  	amount = 1,
			--  	cost = 200000,
			--  	craft_duration = 10,
			--  	blueprint = {
			--  		["iron"] = 350,
			--  		["gold"] = 100,
			--  		["gundesign01"] = 12,
			--  	},

						   
			-- },
			-- {
			--  	item = "weapon_pistol50",
			-- 	fail_chance = 3,
			--  	amount = 1,
			--  	cost = 400000,
			--  	craft_duration = 10,
			--  	blueprint = {
			--  		["iron"] = 450,
			--  		["gold"] = 120,
			--  		["gundesign01"] = 15,
			--  	},
	
			-- }, 
			-- {
			--  	item = "weapon_heavypistol",
			--  	fail_chance = 3,
			--  	amount = 1,
			--  	cost = 200000,
			--  	craft_duration = 10,
			--  	blueprint = {
			--  		["iron"] = 350,
			--  		["gold"] = 100,
			--  		["gundesign01"] = 12,
			--  	},

			
			-- },
			-- {
			-- 	item = "bulletproof", 
			-- 	fail_chance = 3,
			-- 	amount = 5,
			-- 	cost = 50000,
			-- 	craft_duration = 10,
			-- 	blueprint = {
			-- 		["lither"] = 5,
			-- 		["sodium_hydroxide"] = 20,
			-- 		["lsa"] = 20,
			-- 		["diamond"] = 1,
			-- 	},

			
			-- },
		
		},
	},


	[2] = {
		name = "修車工零件",
		list = {
			
			{
				item = "fixkit",  -------要合成的物品
				fail_chance = 0,
				amount = 20,
				cost = 200000,
				craft_duration = 10,
				blueprint = {  ---------所需物品跟數量
				},

				
			},

			--[[{
				item = "car50off",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 500000,
				craft_duration = 10,
				blueprint = {
					["copper"] = 1000,  ---------所需物品跟數量
					["paper"] = 50,
				},

				
			},

			{
				item = "car60off",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 400000,
				craft_duration = 10,
				blueprint = {
					["copper"] = 500,  ---------所需物品跟數量
					["paper"] = 25,
				},

				
			},
			
			{			
				item = "car70off",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 200000,
				craft_duration = 10,
				blueprint = {
					["copper"] = 300,  ---------所需物品跟數量
					["paper"] = 15,
				},

				
			},
			{			
				item = "nitro",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 400000,
				craft_duration = 10,
				blueprint = {
					["copper"] = 500,  ---------所需物品跟數量
					["iron"] = 450,
					["glass"] = 5,
				},

				
			},]]--




		},
	},
	[3] = {
		
		name = "洗手作羹湯",				
		list = {
			
			
			{
				item = "porkrice",
				fail_chance = 3,
				amount = 10,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					
					["packaged_chicken"] = 50,

				},
				equipment = {
					
					["packaged_chicken"] = true,
				
				},
				
				
			},
			{
				item = "beefnoodles",
				fail_chance = 3,
				amount = 10,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					
					["packaged_chicken"] = 75,

				},
				equipment = {
					
					["packaged_chicken"] = true,
				
				},
				
				
			},
			{
				item = "chickenbento",
				fail_chance = 3,
				amount = 5,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					
					["packaged_chicken"] = 100,

				},
				equipment = {
					
					["packaged_chicken"] = true,
				
				},
				
				
			},
			{
				item = "cola",
				fail_chance = 3,
				amount = 10,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					
					["packaged_chicken"] = 50,

				},
				equipment = {
					
					["packaged_chicken"] = true,
				
				},
				
				
			},
			{
				item = "milktea",
				fail_chance = 3,
				amount = 10,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					
					["packaged_chicken"] = 75,

				},
				equipment = {
					
					["packaged_chicken"] = true,
				
				},
				
				
			},
			{
				item = "gravalemontea",
				fail_chance = 3,
				amount = 5,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					
					["packaged_chicken"] = 100,

				},
				equipment = {
					
					["packaged_chicken"] = true,
				
				},
				
				
			},
			--[[{
				name = "六六六彩券",
				item = "lotteryticket", ---六六六彩券
			    fail_chance = 0,
			    amount = 1,
			    cost = 1000,
			    craft_duration = 10,
			    blueprint = {
					["paper"] = 10,
   
			    },
			     equipment = {
					["paper"] = true,

			    },
			},]]--
		},
	},
	[4] = {
		name = "醫護工作臺",
		list = {
			{
				item = "bandage",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 1000,
				craft_duration = 5,
				blueprint = {  ---------所需物品跟數量
				},
				equipment = {
				},
				
			},
			--[[{
				item = "medikit",  -------要合成的物品
				fail_chance = 0,
				amount = 50,
				cost = 10,
				craft_duration = 10,
				blueprint = {
					["bottle"] = 1,  ---------所需物品跟數量
					
				},
				equipment = {
					["bottle"] = true,  --------再打一次代碼就好
					
				},
				
			},]]--

			--[[{
				item = "antibioticorosacea",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 5000,
				craft_duration = 10,
				blueprint = {
					["ems_work3"] = 20,  ---------所需物品跟數量
				},	
				
			},

			{
				item = "antibiotico",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 5000,
				craft_duration = 10,
				blueprint = {
					["ems_work3"] = 20,  ---------所需物品跟數量
				},	
				
			},

			{
				item = "sciroppo",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 5000,
				craft_duration = 10,
				blueprint = {
					["ems_work3"] = 20,  ---------所需物品跟數量
				},	
				
			},

			{
				item = "panda_id_card",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 200,
				craft_duration = 10,
				blueprint = {
					["paper"] = 10,
					["gold"] = 1, 
					["copper"] = 10, ---------所需物品跟數量panda_id_card
				},	
				
			},]]--
			
		},
	},
	[5] = {
	  	name = "稻川槍枝工作台",
	  	list = {
			{
			name = "重型手槍",
			item = "weapon_heavypistol",
			fail_chance = 0,
			amount = 1,
			cost = 500000,
			craft_duration = 10,
			blueprint = {
			},
			},	
			{
			name = "復古手槍",
		   item = "weapon_vintagepistol",  -------要合成的物品
		   fail_chance = 0,
		   amount = 1,
		   cost = 500000,
		   craft_duration = 10,
		   blueprint = {
		   },
			},
			{
			name = "衝鋒槍",
			   item = "weapon_smg",  -------要合成的物品
			   fail_chance = 0,
			   amount = 1,
			   cost = 1000000,
			   craft_duration = 10,
			   blueprint = {
			   },
			},
			{
		   name = "洗錢卡",
		   item = "moneywashid",  -------要合成的物品
		   fail_chance = 0,
		   amount = 1,
		   cost = 300000,
		   craft_duration = 10,
		   blueprint = {
			  ["bitcoin02"] = 2
		   },
			},
			{
			name = "犢牛步槍",
			item = "weapon_bullpuprifle",
			fail_chance = 0,
			amount = 1,
			cost = 1800000,
			craft_duration = 10,
			blueprint = {
			  },
			},
			{
				name = "中型防彈衣",
				item = "MedArmor",
				amount = 5,
				cost = 75000,
				craft_duration = 20,
				blueprint = {
				},
			},
			{
		 	   name = "彈匣",
		 	   item = "clip",
		 	   fail_chance = 0,
		 	   amount = 10,
		 	   cost = 70000,
		 	   craft_duration = 10,
		 	   blueprint = {

		 	    },
		 	   equipment = {

		 	    },
		    },
			--[[{
				item = "gunkey", 
				fail_chance = 3,
				amount = 1,
				cost = 100000,
				craft_duration = 10,
				blueprint = {
					["gold"] = 100,
					["bitcoin02"] = 1,
					
				},

			
			},]]--
			-- 		{
			-- 			name = "UZI",
    		--             item = "weapon_microsmg",
    		--             fail_chance = 0,
    		--             amount = 1,
    		--             cost = 500000,
    		--             craft_duration = 10,
    		--             blueprint = {
    		--                 ["iron"] = 600,
			--                 ["gold"] = 100,
    		--                 ["diamond"] = 20,
			-- 				["gundesign02"] = 12,
			-- 				["gunkey"] = 1,
			-- 			},
			-- 		},
			-- 		{
			-- 			name = "老式火槍",
    		--             item = "weapon_musket",
    		--             fail_chance = 0,
    		--             amount = 1,
    		--             cost = 1000000,
    		--             craft_duration = 10,
    		--             blueprint = {
    		--                 ["iron"] = 700,
    		--                 ["gold"] = 150,
    		--                 ["diamond"] = 35,
			-- 				["gundesign02"] = 20,
			-- 				["gunkey"] = 1,
			-- 			},
			--         },
		},
	},
					
	[6] = {
		name = "非法物品製作",
		list = {
			{
				name = "輕型槍枝設計圖",
				item = "gundesign01",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 10000,
				craft_duration = 10,
				blueprint = {
					["changecard"] = 1,  ---------所需物品跟數量
				},
				equipment = {
					["changecard"] = true,  --------再打一次代碼就好
				},
				
			},
			{
				name = "重型槍枝設計圖",
				item = "gundesign02",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 20000,
				craft_duration = 10,
				blueprint = {
					["changecard"] = 2,  ---------所需物品跟數量
				},
				equipment = {
					["changecard"] = true,  --------再打一次代碼就好
				},
				
			},
		    {
		 	   name = "比特幣債券",
		 	   item = "bitcoin02",
		 	   fail_chance = 0,
		 	   amount = 1,
		 	   cost = 1000,
		 	   craft_duration = 10,
		 	   blueprint = {
		 		   ["bitcoin"] = 50,    
		 	    },
		 	   equipment = {
		 		   ["bitcoin"] = true,
		 	    },
		    },
			{
		 	   name = "重型防彈衣",
		 	   item = "HeavyArmor",
		 	   fail_chance = 0,
		 	   amount = 1,
		 	   cost = 10000,
		 	   craft_duration = 10,
		 	   blueprint = {
		 			["changecard"] = 2,
					["clothe"] = 10,
		 	    },
		 	   equipment = {
		 			["changecard"] = true,
					["clothe"] = true,
		 	    },
		    },
			{
		 	   name = "中型防彈衣",
		 	   item = "MedArmor",
		 	   fail_chance = 0,
		 	   amount = 1,
		 	   cost = 10000,
		 	   craft_duration = 10,
		 	   blueprint = {
		 		   ["changecard"] = 1,   
				   ["clothe"] = 5,
		 	    },
		 	   equipment = {
		 		   ["changecard"] = true,
				   ["clothe"] = true
		 	    },
		    },
			{
				item = "gunkey", 
				fail_chance = 0,
				amount = 1,
				cost = 50000,
				craft_duration = 10,
				blueprint = {
					["bitcoin02"] = 3,
				},
			},
			{
				item = "changecard", 
				fail_chance = 0,
				amount = 1,
				cost = 10000,
				craft_duration = 10,
				blueprint = {
					["bitcoin02"] = 2,
					["copper"] = 20,
					["iron"] = 20,
				},
			},
		    --{
		 	--   name = "重型槍枝設計圖",
		 	--   item = "gundesign02",
		 	--   fail_chance = 0,
		 	--   amount = 1,
		 	--   cost = 100,
		 	--   craft_duration = 10,
		 	--   blueprint = {
		 	--	   ["bitcoin02"] = 2,    
		 	--    },
		 	--   equipment = {
		 	--	   ["bitcoin02"] = true,
		 	--    },
		    --},
		    --[[{
			    name = "化學藥劑",
			    item = "lsa",  -------要合成的物品
			    fail_chance = 0,
			    amount = 40,
			    cost = 0,
			    craft_duration = 20,
			    blueprint = {
			        ["chemicals"] = 40,

			    },
			    equipment = {
			        ["chemicals"] = true,

				},
		    },]]--
		   
           
		},
	},
    [7] = {
	 	name = "不做菜改做派",
	  	list = {
			--[[{
			 
				name = "重型霰彈槍",
				item = "weapon_heavyshotgun",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 650000,
				craft_duration = 10,
				blueprint = {
					["iron"] = 520,
					["gold"] = 150, 
					["diamond"] = 30,
					["gundesign02"] = 15,  ---------所需物品跟數量
				},
				 equipment = {
					["iron"] = true,
					["gold"] = true, 
					["diamond"] = true,
					["gundesign02"] = true,  --------再打一次代碼就好
				},
				
			},
		    {
				name = "古森柏機槍",
				item = "weapon_gusenberg",
			    fail_chance = 0,
			    amount = 1,
			    cost = 450000,
			    craft_duration = 10,
			    blueprint = {
					["iron"] = 450,
					["gold"] = 120,
					["diamond"] = 20,
					["gundesign02"] = 10,    
			    },
			     equipment = {
					["iron"] = true,
					["gold"] = true, 
					["diamond"] = true,
					["gundesign02"] = true,
			    },
			},]]--
		 --[[{
				name = "突擊步槍MK2",
				item = "weapon_assaultrifle_mk2",
				fail_chance = 0,
				amount = 1,
				cost = 800000,
				craft_duration = 10,
				blueprint = {
					["iron"] = 550,
					["gold"] = 200,
					["diamond"] = 35,
					["gundesign02"] = 20,
				},

				
			},
			{
				name = "手榴彈",
				item = "weapon_grenade",
				fail_chance = 0,
				amount = 1,
				cost = 20000,
				craft_duration = 10,
				blueprint = {
					["iron"] = 100,
					["gold"] = 50,
					["diamond"] = 10,
					["lsa"] = 10,
					["sulfuric_acid"] = 10,
					["sodium_hydroxide"] = 10,
					["thionyl_chloride"] = 10,
				},

				
			},
			{
				name = "精簡步槍",
				item = "weapon_compactrifle",
			    fail_chance = 0,
			    amount = 1,
			    cost = 600000,
			    craft_duration = 10,
			    blueprint = {
					["iron"] = 480,
					["gold"] = 170,
					["diamond"] = 28,
					["gundesign02"] = 17,
			    },

			},

			{
				name = "機關槍",
				item = "weapon_combatmg",
			    fail_chance = 0,
			    amount = 1,
			    cost = 1300000,
			    craft_duration = 10,
			    blueprint = {
					["iron"] = 500,
					["gold"] = 200,
					["diamond"] = 30,
					["gundesign02"] = 20,
			    },

			},]]--

			-- {
			-- 	item = "gacha_02",
			-- 	fail_chance = 0,
			-- 	amount = 1,
			-- 	cost = 0,
			-- 	craft_duration = 10,
			-- 	blueprint = {
					
			-- 		["blackegg"] = 1,

			-- 	},
			-- 	equipment = {
					
			-- 		["blackegg"] = true,
				
			-- 	},
				
				
			-- },


		 },
	 },
	[8] = {
		name = "就業中心木工製作",
		list = {
			{
			
				item = "paper",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					["packaged_plank"] = 100,  ---------所需物品跟數量
				},

			},
		    {			
			    item = "carbon",
			    fail_chance = 0,
			    amount = 10,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["packaged_plank"] = 200,
			    },

		    },
		    {			
			    item = "resin",
			    fail_chance = 0,
			    amount = 5,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["packaged_plank"] = 200,    
			    },

		    },

		    {
			 
			    item = "cypress",
			    fail_chance = 0,
			    amount = 1,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["packaged_plank"] = 250,    
			    },

		    },
		},
	},
	[9] = {
		name = "就業中心裁縫製作",
		list = {
			{
			
				item = "lither",  -------要合成的物品
				fail_chance = 0,
				amount = 5,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					["clothe"] = 250,  ---------所需物品跟數量
				},
				equipment = {
					["clothe"] = true,  --------再打一次代碼就好
				},
				
			},
		    {			
			    item = "nylon",
			    fail_chance = 0,
			    amount = 1,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["clothe"] = 100,    
			    },
			     equipment = {
				   ["clothe"] = true,
			    },
		    },
		    {			
			    item = "glass",
			    fail_chance = 0,
			    amount = 1,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["clothe"] = 100,    
			    },
			   equipment = {
				   ["clothe"] = true,
			    },
		    },

		    {
			 
			    item = "nami",
			    fail_chance = 0,
			    amount = 1,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["clothe"] = 250,    
			    },
			   equipment = {
				   ["clothe"] = true,
			    },
		    },
		},
	},

	[10] = {
		name = "就業中心屠夫製作",
		list = {
			{
			
				item = "pork",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 100,
				craft_duration = 10,
				blueprint = {
					["packaged_chicken"] = 100,  ---------所需物品跟數量
				},
				equipment = {
					["packaged_chicken"] = true,  --------再打一次代碼就好
			 	},
				
			},
		    {			
			    item = "lamb",
			    fail_chance = 0,
			    amount = 5,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["packaged_chicken"] = 100,    
			    },
			    equipment = {
				   ["packaged_chicken"] = true,
			    },
		    },
		    {			
			    item = "beef",
			    fail_chance = 0,
			    amount = 5,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["packaged_chicken"] = 200,    
			    },
			    equipment = {
				   ["packaged_chicken"] = true,
			    },
		    },

		    {
			 
			    item = "olein",
			    fail_chance = 0,
			    amount = 1,
			    cost = 100,
			    craft_duration = 10,
			    blueprint = {
				   ["packaged_chicken"] = 250,    
			    },
			    equipment = {
				   ["packaged_chicken"] = true,
			    },
		    },
		},
	},
	[11] = {
		name = "非法工具製作",
		list = {
			{
			 	name = "解碼器(非)",
				item = "rasperry",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 100000,
				craft_duration = 10,
				blueprint = {
				--[[	["gold"] = 30,
					["nylon"] = 5,
					["glass"] = 5,]]--  ---------所需物品跟數量
				},
				equipment = {
				--[[	["gold"] = true,
					["nylon"] = true,
					["glass"] = true,]]--  --------再打一次代碼就好
				},
				
			},
		    {
			   name = "C4炸藥(非)",
			   item = "c4_bank",
			   fail_chance = 0,
			   amount = 1,
			   cost = 400000,
			   craft_duration = 10,
			   blueprint = {
				  --[[ ["copper"] = 500,
				   ["resin"] = 5,
				   ["nami"] = 2,    ]]--
			    },
			   equipment = {
				  --[[ ["copper"] = true,
				   ["resin"] = true,
				   ["nami"] = true,]]--
			    },
		    },
		    {
			   name = "電銲工具(非)",  ---lockpick
			   item = "blowtorch",
			   fail_chance = 0,
			   amount = 1,
			   cost = 300000,
			   craft_duration = 10,
			   blueprint = {
				 --[[  ["iron"] = 200,
				   ["carbon"] = 10,
				   ["olein"] = 2,   ]]--
			    },
			   equipment = {
				  --[[ ["iron"] = true,
				   ["carbon"] = true,
				   ["olein"] = true,]]--
			    },
			},
			--[[{
				name = "高級住宅鑰匙(非)",  ---lockpick
				item = "lockpick",
				fail_chance = 0,
				amount = 1,
				cost = 300000,
				craft_duration = 10,
				blueprint = {
				--[[	["resin"] = 1,
					["lither"] = 1,
					["diamond"] = 1,  ]]-- 
				 --},
				--equipment = {
				--[[	["resin"] = true,
					["lither"] = true,
					["diamond"] = true,]]--
				 --},
			--},
		},
	},
	[12] = {
		name = "就業中心礦工製作",
		list = {
			{
			 	name = "鎘銻合金",
				item = "gdmetal",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 50000,
				craft_duration = 10,
				blueprint = {
					["copper"] = 200,
					["iron"] = 100,
					["gold"] = 60,  ---------所需物品跟數量
					["diamond"] = 10,
				},
				equipment = {
					["copper"] = true,
					["iron"] = true,
					["gold"] = true,  --------再打一次代碼就好
					["diamond"] = true,
				},
				
			},

		},
	},
	[13] = {
		name = "特殊產物製作",
		list = {
			{
				name = "化學品許可證",
				item = "chemicalslisence",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 50000,
				craft_duration = 10,
				blueprint = {
				   ["paper"] = 10,
				},
				equipment = {
				   ["paper"] = true,
				},
		   
			},
			--[[{
			 	name = "日暮金幣",
				item = "pandacoin",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 500000,
				craft_duration = 10,
				blueprint = {
					["bitcoin02"] = 70,
					["gold"] = 500,
					["nami"] = 5,  ---------所需物品跟數量
					["carbon"] = 50,
				},
				equipment = {
					["bitcoin02"] = true,
					["gold"] = true,
					["nami"] = true,  --------再打一次代碼就好
					["carbon"] = true,
				},
				
			},]]--
			--{
			--	name = "直升機駕照",
			--   item = "helicopter_license",  -------要合成的物品
			--   fail_chance = 0,
			--   amount = 1,
			--   cost = 5000000,
			--   craft_duration = 10,
			--   blueprint = {
			--	   ["gdmetal"] = 5,
			--	   ["cypress"] = 10,
			--	   ["olein"] = 10, 
			--	   ["nami"] = 10,  ---------所需物品跟數量
			--	   ["bitcoin02"] = 300,
			--   },
			--   equipment = {
			--	   ["gdmetal"] = true,
			--	   ["cypress"] = true,
			--	   ["olein"] = true,  --------再打一次代碼就好
			--	   ["nami"] = true,
			--	   ["bitcoin02"] = true,
			--   },
			   
		   --},
		   --{
			--   name = "船隻駕照",
			--   item = "boat_license",  -------要合成的物品
			--   fail_chance = 0,
			--   amount = 1,
			--   cost = 100000,
			--   craft_duration = 10,
			--   blueprint = {
			--	  ["paper"] = 200,
			--	  ["glass"] = 10,
			--	  ["olein"] = 5,  ---------所需物品跟數量
			--	  ["bitcoin02"] = 25,
			--   },
			--   equipment = {
			--	  ["paper"] = true,
			--	  ["glass"] = true,
			--	  ["olein"] = true,  --------再打一次代碼就好
			--	  ["bitcoin02"] = true,
			--   },
			--  
			--},

			{
				name = "化學藥劑",
				item = "lsa",  -------要合成的物品
				fail_chance = 0,
				amount = 40,
				cost = 0,
				craft_duration = 10,
				blueprint = {
				   ["chemicals"] = 40,

				},
				equipment = {
				   ["chemicals"] = true,

				},
			   
			},
		},
	},

	[14] = {
		name = "中藥房槍枝合成台",
		list = {
		{
			name = "重型手槍",
			item = "weapon_heavypistol",
			fail_chance = 0,
			amount = 1,
			cost = 500000,
			craft_duration = 10,
			blueprint = {
			},
		},	
		{
			name = "復古手槍",
		   item = "weapon_vintagepistol",  -------要合成的物品
		   fail_chance = 0,
		   amount = 1,
		   cost = 500000,
		   craft_duration = 10,
		   blueprint = {
		   },
		},
		{
			name = "衝鋒槍",
			   item = "weapon_smg",  -------要合成的物品
			   fail_chance = 0,
			   amount = 1,
			   cost = 1000000,
			   craft_duration = 10,
			   blueprint = {
			   },
		  },
		{
		   name = "洗錢卡",
		   item = "moneywashid",  -------要合成的物品
		   fail_chance = 0,
		   amount = 1,
		   cost = 300000,
		   craft_duration = 10,
		   blueprint = {
			  ["bitcoin02"] = 2
		   },
		},
		{
			name = "犢牛步槍",
			item = "weapon_bullpuprifle",
			fail_chance = 0,
			amount = 1,
			cost = 1800000,
			craft_duration = 10,
			blueprint = {
			  },
		},
			 
		-- 	{
		-- 		name = "衝鋒槍MKII",
		-- 	   item = "weapon_smg_mk2",  -------要合成的物品
		-- 	   fail_chance = 0,
		-- 	   amount = 1,
		-- 	   cost = 1000000,
		-- 	   craft_duration = 10,
		-- 	   blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["gold"] = 150, 
		-- 		   ["gundesign02"] = 8,
		-- 		   ["gunkey"] = 1,
		-- 		   ["weapon_smg"] = 1,
		-- 	   },
		-- 	},
		-- 	{
		-- 		name = "霰彈槍MKII",
		-- 	   item = "weapon_pumpshotgun_mk2",  -------要合成的物品
		-- 	   fail_chance = 0,
		-- 	   amount = 1,
		-- 	   cost = 700000,
		-- 	   craft_duration = 10,
		-- 	   blueprint = {
		-- 		   ["iron"] = 350,
		-- 		   ["gold"] = 100, 
		-- 		   ["gundesign02"] = 5,
		-- 		   ["gunkey"] = 1,
		-- 		   ["weapon_pumpshotgun"] = 1,
		-- 	   },
		-- 	},
		-- 	{
		-- 		name = "犢牛步槍 MK II",
		-- 		item = "weapon_bullpuprifle_mk2",
		-- 		fail_chance = 0,
		-- 		amount = 1,
		-- 		cost = 2500000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 			["iron"] = 500,
		-- 			["gold"] = 150,
		-- 			["diamond"] = 30,
		-- 			["gundesign02"] = 20,
		-- 			["gunkey"] = 1,
		-- 			["weapon_bullpuprifle"] = 1,
		-- 		},
		-- 	},
		
		},
		
	},
	 [15] = {
	 	name = "新世界改槍系統",
	 	list = {
	 	-- 	{
		-- 	 	name = "彈藥包",
		-- 		item = "clip",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 70000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 			["copper"] = 1400,
		-- 			["iron"] = 800,
		-- 			["diamond"] = 10,
		-- 		},	
		-- 		equipment = {
		-- 			["gunkey"] = true ,
		-- 		},		
		-- 	},
		-- 	{
		-- 	    item = "weaponAcc_Skin",  -------要合成的物品
		-- 	    fail_chance = 0,
		-- 	    amount = 1,
		-- 	    cost = 100000,
		-- 	    craft_duration = 10,
		-- 	    blueprint = {
		-- 		    ["glass"] = 10,
		-- 		    ["resin"] = 10,
		-- 		    ["gold"] = 20,
		-- 		    ["diamond"] = 10,
		-- 		},	
		-- 		equipment = {
		-- 			["gunkey"] = true ,
		-- 		},
	
		--     },			
		-- 	{
		-- 	    item = "weaponAcc_Remove",  -------要合成的物品
		-- 	    fail_chance = 0,
		-- 	    amount = 1,
		-- 	    cost = 100000,
		-- 	    craft_duration = 10,
		-- 	    blueprint = {
		-- 		    ["glass"] = 10,
		-- 			["resin"] = 10,
		-- 			["gold"] = 20,
		-- 			["diamond"] = 10,

		-- 		},
		-- 		equipment = {
		-- 			["gunkey"] = true , 
		-- 		},

				 			
		--     },			
		-- 	{
		-- 	    item = "weaponAcc_Color",  -------要合成的物品
		-- 	    fail_chance = 0,
		-- 	    amount = 1,
		-- 	    cost = 100000,
		-- 	    craft_duration = 10,
		-- 	    blueprint = {
		-- 		    ["glass"] = 10,
		-- 			["resin"] = 10,
		-- 			["gold"] = 20,
		-- 			["diamond"] = 10,

		-- 		},	
		-- 		equipment = {
		-- 			["gunkey"] = true , 
		-- 		},
	
		-- 	},
		-- 	{
		-- 	    item = "weaponAcc_Add",  -------要合成的物品
		-- 	    fail_chance = 0,
		-- 	    amount = 1,
		-- 	    cost = 100000,
		-- 	    craft_duration = 10,
		-- 	    blueprint = {
		-- 		    ["glass"] = 10,
		-- 			["resin"] = 10,
		-- 			["gold"] = 20,
		-- 			["diamond"] = 10,

		-- 		},	
		-- 		equipment = {
		-- 			["gunkey"] = true , 
		-- 		},
	
		-- 	},
		-- 	{
		-- 		item = "weapon_marksmanrifle_mk2",  -------要合成的物品
		-- 		name = "射手狙擊槍",
		-- 		fail_chance = 0,
		-- 		amount = 1,
		-- 		cost = 3000000,
		-- 		cost_type = "cash", -- 金錢類型 (between "cash" or "black_money")
		-- 		craft_duration = 60,
		-- 		blueprint = {
		-- 			["gold"] = 875,
		-- 			["copper"] = 2500,
		-- 			["diamond"] = 250,
		-- 			["gundesign02"] = 75,
		-- 		},
		-- 		equipment = {
		-- 			["gunkey"] = 1, 
		-- 		},

	    --     },			
		 },
	},
	 [16] = {
	 	name = "新世界認證證書系統",
	 	list = {
			-- {
			-- 	item = "gunpost01",  -------要合成的物品
			-- 	fail_chance = 0,
			-- 	amount = 1,
			-- 	cost = 100000,
			-- 	craft_duration = 10,
			-- 	blueprint = {
			-- 		["paper"] = 20,
			-- 		["iron"] = 50,
			-- 		["diamond"] = 5,
			-- 	},	
			-- 	equipment = {
			-- 		["gunkey"] = true ,
			-- 	},
					
			-- },
			-- {
			-- 	item = "gunpost02",  -------要合成的物品
			-- 	fail_chance = 0,
			-- 	amount = 1,
			-- 	cost = 200000,
			-- 	craft_duration = 10,
			-- 	blueprint = {
			-- 		["paper"] = 40,
			-- 		["iron"] = 100,
			-- 		["diamond"] = 10,
			-- 	},	
			-- 	equipment = {
			-- 		["gunkey"] = true ,
			-- 	},
			-- },
		-- 	{
		-- 		item = "warranty01",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 1,
		-- 		cost = 10000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 			["gunkey"] = 1,
		-- 		},
		-- 	},
		-- 	{
		-- 		item = "warranty02",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 1,
		-- 		cost = 10000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 			["gunkey"] = 1,
		-- 		},
		-- 	},
		 },
	 },

     [17] = {
	 	name = "槍證製作",
		animation = { -- animation    動畫
		    dict = "anim@amb@business@coc@coc_unpack_cut_left@",
			anim = "cut_cough_v1_coccutter",
			flag = 30,
		},  
		
	 	list = {
		--[[	{
				item = "weapon_sniperrifle",  -------要合成的物品
				name = "輕型狙擊槍",
				fail_chance = 0,
				amount = 1,
				cost = 3000000,
				cost_type = "black_money", -- 金錢類型 (between "cash" or "black_money")
				craft_duration = 60,
				blueprint = {
					["gold"] = 350,
					["copper"] = 1500,
					["diamond"] = 100,
					["gundesign02"] = 30,
				},
					
			},
            {
				item = "weapon_marksmanrifle",  -------要合成的物品
				name = "射手狙擊槍",
				fail_chance = 0,
				amount = 1,
				cost = 3000000,
				cost_type = "black_money", -- 金錢類型 (between "cash" or "black_money")
				craft_duration = 60,
				blueprint = {
					["gold"] = 875,
					["copper"] = 2500,
					["diamond"] = 250,
					["gundesign02"] = 75,
                },

	        },]]--
			{
				item = "gunpost01",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 100000,
				craft_duration = 10,
				blueprint = {
					["paper"] = 20,
					["iron"] = 50,
					["diamond"] = 5,
				},	
				equipment = {
					["gunkey"] = true ,
				},
					
			},
			{
				item = "gunpost02",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 200000,
				craft_duration = 10,
				blueprint = {
					["paper"] = 40,
					["iron"] = 100,
					["diamond"] = 10,
				},	
				equipment = {
					["gunkey"] = true ,
				},
			},

	 	},      
	 },


	[18] = {
		
		name = "🎣釣魚體驗工作臺🎣",  
		list = {
			{
				item = "fishingrod",  -------要合成的物品
				name = "釣竿",
				fail_chance = 0,
				amount = 10,
				cost = 100,
			--	cost_type = "black_money", -- 金錢類型 (between "cash" or "black_money")
				craft_duration = 120,
				blueprint = {
					["packaged_plank"] = 20,
					["copper"] = 20,

				},
					
			},
            {
				item = "fishbait",  -------要合成的物品
				name = "魚餌",
				fail_chance = 0,
				amount = 10,
				cost = 100,
			--	cost_type = "black_money", -- 金錢類型 (between "cash" or "black_money")
				craft_duration = 12,
				blueprint = {
					["packaged_chicken"] = 10,
                },

			},
			{
				item = "turtlebait",  -------要合成的物品
				name = "海龜餌",
				fail_chance = 0,
				amount = 10 ,
				cost = 100,
			--	cost_type = "black_money", -- 金錢類型 (between "cash" or "black_money")
				craft_duration = 24,
				blueprint = {
					["fish"] = 10,

                },

	        },
		},	
	
	},

	[19] = {

        name = "車商文件",
        list = {
			{
				name = "車輛合約轉讓書",
				item = "contract",  -------要合成的物品
				fail_chance = 0,
				amount = 1,
				cost = 50000,
				craft_duration = 10,
				blueprint = {
				   ["paper"] = 2,
				},
			   
			},
		},

	},
	[20] = {

        name = "車商大燈噴漆罐",
        list = {
		-- 	{
		-- 		name = "紅色大燈噴漆罐",
		-- 		item = "headlightr",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 50000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["lsa"] = 120,
		-- 		},
							   
		-- 	},
		-- 	{
		-- 		name = "藍色大燈噴漆罐",
		-- 		item = "headlightb",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 50000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["lsa"] = 120,
		-- 		},
			   
		-- 	},
		-- 	{
		-- 		name = "綠色大燈噴漆罐",
		-- 		item = "headlightg",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 50000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["lsa"] = 120,
		-- 		},
			   
		-- 	},
		-- 	{
		-- 		name = "粉色大燈噴漆罐",
		-- 		item = "headlightp",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 50000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["lsa"] = 120,
		-- 		},
			   
		-- 	},
		-- 	{
		-- 		name = "黃色大燈噴漆罐",
		-- 		item = "headlighty",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 50000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["lsa"] = 120,
		-- 		},
			   
		-- 	},
		-- 	{
		-- 		name = "紫色大燈噴漆罐",
		-- 		item = "headlightbl",  -------要合成的物品
		-- 		fail_chance = 0,
		-- 		amount = 5,
		-- 		cost = 50000,
		-- 		craft_duration = 10,
		-- 		blueprint = {
		-- 		   ["iron"] = 500,
		-- 		   ["lsa"] = 120,
		-- 		},
			   
		-- 	},
		},

		

	},

	[21] = {

		name = "稻川集團料理台",
		list = {
			{
				 name = "雞腿便當",
				 item = "chickenbento",  -------要合成的物品
				 fail_chance = 0,
				 amount = 5,
				 cost = 25000,
				 craft_duration = 10,
				 blueprint = {
				},
							   
			 },

			{
				name = "芭樂檸檬茶",
				item = "gravalemontea",  -------要合成的物品
				fail_chance = 0,
				amount = 5,
				cost = 15000,
				craft_duration = 10,
				blueprint = {
			   	},
			},

			{
				name = "滷肉飯",
				item = "porkrice",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 5000,
				craft_duration = 10,
				blueprint = {
			   },
			},

			   {
				name = "可樂",
				item = "cola",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 5000,
				craft_duration = 10,
				blueprint = {
				},
			},

			{
				name = "牛肉麵",
				item = "beefnoodles",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 25000,
				craft_duration = 10,
				blueprint = {
			   	},
			},

			{
				name = "原味奶茶",
				item = "milktea",  -------要合成的物品
				fail_chance = 0,
				amount = 10,
				cost = 25000,
				craft_duration = 10,
				blueprint = {
			   },
							  
			},
							  
		},
	},
	[22] = {
		name = "血狼社槍枝工作台",
		list = {
		  {
			  name = "重型手槍",
			  item = "weapon_heavypistol",
			  fail_chance = 0,
			  amount = 1,
			  cost = 500000,
			  craft_duration = 10,
			  blueprint = {
			  },
		  },	
		  {
			  name = "復古手槍",
			 item = "weapon_vintagepistol",  -------要合成的物品
			 fail_chance = 0,
			 amount = 1,
			 cost = 500000,
			 craft_duration = 10,
			 blueprint = {
			 },
		  },
		  {
			  name = "衝鋒槍",
				 item = "weapon_smg",  -------要合成的物品
				 fail_chance = 0,
				 amount = 1,
				 cost = 1000000,
				 craft_duration = 10,
				 blueprint = {
				 },
			},
		  {
			 name = "洗錢卡",
			 item = "moneywashid",  -------要合成的物品
			 fail_chance = 0,
			 amount = 1,
			 cost = 300000,
			 craft_duration = 10,
			 blueprint = {
				["bitcoin02"] = 2
			 },
		  },
		  {
			  name = "犢牛步槍",
			  item = "weapon_bullpuprifle",
			  fail_chance = 0,
			  amount = 1,
			  cost = 1800000,
			  craft_duration = 10,
			  blueprint = {
				},
			},
		},
	},	

	[23] = {
		name = "健合會槍枝工作台",
		list = {
		  {
			  name = "重型手槍",
			  item = "weapon_heavypistol",
			  fail_chance = 0,
			  amount = 1,
			  cost = 500000,
			  craft_duration = 10,
			  blueprint = {
			  },
		  },	
		  {
			  name = "復古手槍",
			 item = "weapon_vintagepistol",  -------要合成的物品
			 fail_chance = 0,
			 amount = 1,
			 cost = 500000,
			 craft_duration = 10,
			 blueprint = {
			 },
		  },
		  {
			  name = "衝鋒槍",
				 item = "weapon_smg",  -------要合成的物品
				 fail_chance = 0,
				 amount = 1,
				 cost = 1000000,
				 craft_duration = 10,
				 blueprint = {
				 },
			},
		  {
			 name = "洗錢卡",
			 item = "moneywashid",  -------要合成的物品
			 fail_chance = 0,
			 amount = 1,
			 cost = 300000,
			 craft_duration = 10,
			 blueprint = {
				["bitcoin02"] = 2
			 },
		    },

		    {
			  name = "犢牛步槍",
			  item = "weapon_bullpuprifle",
			  fail_chance = 0,
			  amount = 1,
			  cost = 1800000,
			  craft_duration = 10,
			  blueprint = {
				},
			},	

			{
				name = "日暮威爾鋼",
				item = "morphine2",
				fail_chance = 0,
				amount = 5,
				cost = 700000,
				craft_duration = 10,
				blueprint = {
				  },
			},	
		},
	},	

	[24] = {
		name = "車業武器工作台",
		list = {
		    {
			  name = "手電筒",
			  item = "weapon_flashlight",
			  fail_chance = 0,
			  amount = 1,
			  cost = 200000,
			  craft_duration = 10,
			  blueprint = {
			  },
		    },	
		   {
			 name = "球棒",
			 item = "weapon_bat",
			 fail_chance = 0,
			 amount = 1,
			 cost = 400000,
			 craft_duration = 10,
			 blueprint = {
			 },
		    },
			{
				name = "小刀",
				item = "weapon_knife",
				fail_chance = 0,
				amount = 1,
				cost = 400000,
				craft_duration = 10,
				blueprint = {
				},
			},		
			{
				name = "開山刀",
				item = "weapon_machete",
				fail_chance = 0,
				amount = 1,
				cost = 400000,
				craft_duration = 10,
				blueprint = {
				},
			},	
		},
	},	

	[25] = {
		name = "頭部特效",
		list = {
		    --[[{
			  name = "天使光環",
			  item = "fashion_angelring",
			  fail_chance = 0,
			  amount = 1,
			  cost = 15000000,
			  craft_duration = 10,
			  blueprint = {
				  ["heroinpack"] = 50,
				  ["bitcoin02"] = 300,
			  },
		    },]]--

			{
				name = "熊熊帽",
				item = "fashion_bearhat",
				fail_chance = 0,
				amount = 1,
				cost = 150000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 5,
					["bitcoin02"] = 10,
				},
			},	

			{
				name = "墨鏡",
				item = "fashion_sunglasses",
				fail_chance = 0,
				amount = 1,
				cost = 100000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 4,
					["bitcoin02"] = 8,
				},
			},	

			{
				name = "頭上貓咪",
				item = "fashion_chii",
				fail_chance = 0,
				amount = 1,
				cost = 100000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 5,
					["bitcoin02"] = 10,
				},
			},	
		},
	},	

	[26] = {
		name = "背部特效",
		list = {
			--[[{
				name = "大翅膀(金)",
				item = "fashion_angelwing2",
				fail_chance = 0,
				amount = 1,
				cost = 20000000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 120,
					["bitcoin02"] = 750,
				},
			},]]--

			{
				name = "金翅膀",
				item = "fashion_wingsrender",
				fail_chance = 0,
				amount = 1,
				cost = 200000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 12,
					["bitcoin02"] = 20,
				},
			},	

			{
				name = "大翅膀(銀)",
				item = "fashion_angelwing",
				fail_chance = 0,
				amount = 1,
				cost = 200000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 10,
					["bitcoin02"] = 20,
				},
			},	

			--[[{
				name = "大翅膀(黑)",
				item = "fashion_angelwing3",
				fail_chance = 0,
				amount = 1,
				cost = 20000000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 140,
					["bitcoin02"] = 800,
				},
			},]]--

			{
				name = "大翅膀(黑綠)",
				item = "fashion_angelwing19",
				fail_chance = 0,
				amount = 1,
				cost = 200000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 9,
					["bitcoin02"] = 20,
				},
			},	

			--[[{
				name = "霧化翅膀",
				item = "fashion_anglewing",
				fail_chance = 0,
				amount = 1,
				cost = 20000000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 170,
					["bitcoin02"] = 1100,
				},
			},	]]--
		},
	},	

	[27] = {
		name = "背部特效",
		list = {
			{
				name = "肩上神龍",
				item = "dragon",
				fail_chance = 0,
				amount = 1,
				cost = 300000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 20,
					["bitcoin02"] = 40,
				},
			},	

			{
				name = "肩上鸚鵡",
				item = "fashion_birdcooper",
				fail_chance = 0,
				amount = 1,
				cost = 100000,
				craft_duration = 10,
				blueprint = {
					["heroinpack"] = 8,
					["bitcoin02"] = 20,
				},
			},	
		},
	},	

	[28] = {
		name = "濃縮物品製作",
		list = {
			{
				name = "大麻濃縮包",
				item = "methpack",
				fail_chance = 0,
				amount = 1,
				cost = 0,
				craft_duration = 10,
				blueprint = {
					["marijuana"] = 50,
				},
			},

			--[[{
				name = "海洛因包",
				item = "heroinpack",
				fail_chance = 0,
				amount = 1,
				cost = 1000,
				craft_duration = 10,
				blueprint = {
					["heroin"] = 20,
				},
			},]]--
		},
	},	

}

Config["disable_custom_font"] = true

Config["translate"] = {
	you_crafted = '你製作了 <span style="color:gold">%s</span> - <span style="color:lawngreen">%d</span> 個!',
	not_enough = "材料不足",
	not_enough2 = "請補足你的材料",
	you_blow = "機率這麼低你都能失敗啊 %s",
	received_from_fail = 'You received <span style="color:maroon">%s</span> - <span style="color:red">%s</span> ea, from your own failure',
	no_equipment = "你沒有足夠的材料做這些東西",
	no_equipment2 = "你需要補足你的材料才能夠製作你想要的東西",
	no_money = "錢不夠",
	no_money2 = "你需要 $%s 才足夠付款",
	limit_reach = "超過最大上限數量",
	limit_reach2 = "You can't make this, because of item limit",
	discord_bot = "Crafting Table",
	discord_item = "%s 製作 %s - %s 個",
	discord_weapon = "%s 製作武器 %s - %s 個",
	discord_failed = "%s 製作失敗 %s",
	discord_identifier = "\nSteam Identifier: %s\n時間: %s",
	crafting = "製作中",
	limit_weight_reach = "超過最大上限數量",
	limit_weight_reach2 = "Your inventory weight is hit limit<br>Currently %s/%s KG.",
	already_have_weapon = "失敗搂!",
	already_have_weapon2 = "你已經有一把了不要這麼貪心好嗎?",
	job_limit = "~r~只有 %s 能用",
	job_police = "警政署",
	job_ambulance = "醫護局",
	job_mecano = "mechanic",
	job_mechanic = "修車廠",
	job_thelostmc = "中藥房",
	job_taxi = "紅花商會",
	job_grove = "血玫瑰",
	job_unemployed = "產物加工員",
    job_mafia = "稻川集團",
	job_borth = "焰暘堂",
	police_required = "~r~需要 %s 警察在線",
	not_allowed = "~r~You're not allowed to use this table",
	allow_for = "~g~Available for %s seconds",
	press_info = "按 ~INPUT_CONTEXT~ 來使用 ~y~ 製作台",
	ui_no_item_category = "此項目無物品",
	ui_required_item = "需要的材料",
	ui_required_equipment = "需要的工具",
	ui_you_will_get = "你將得到",
}