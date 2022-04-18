------------------ Notz Developer -------------------------------------
------------------------   ซัพพอร์ท เฉพาะผู้ซื้อเท่านั้น    ------------------
-----ติดต่อสอบถามที่ Discord :: https://discord.gg/ffCsk8u9TD -----  

Config = {}

local anyprop = 1

Config['Event'] = { -- กรณี Base ไม่ใช่ Esx

    [1] = "esx:getSharedObject",
    [2] = "esx_inventoryhud:closeInventory",

}

-- prop ของจุดโพเสส เชื่อมโยงกับ  [        radarremoveprop -- ระยะที่ออกจากจุด แล้วจะลบ prop   ]
Config.Zones = {
	process = {
		coords = vector3(-318.18, 2786.96, 59.52 - 1.00),
		Propprocess = "notzpinehouse", ---- Prop เครื่อง Process
		Heading = 25.0 ------หมุน Prop เครื่อง Process
	}
}


Config.Zone = {

	["Discord"] = {
	
		["NeedWebhook"] = true,  -- ต้องการ Webhook ไหม  ต้องการ = true   /   ถ้าไม่ = false 
		URL_Webhook = "https://discord.com/api/webhooks/887307217139798046/Nxo8YbAMYAPsChAozlSnMdEhK93BOWEqFm0AwFcM5pmGMHLpe4QwSzsY_K9W8sJfBgaa", -- ลิงค์ Webhook
		URL_Avatar = "https://media.discordapp.net/attachments/849048038123241512/863863710514544670/giphy_2.gif", -- รูปภาพบอท
		Username = "Notz-Logs", -- ชื่อของ บอท
		Color = 0x08F896 -- สี
        
	},
	
	Object = {
		object = 'notzpineapple', --'prop_plant_fern_02c' -- ออฟเจ็คบนพื้น
		spawnobj = 5 - anyprop, -- จำนวน prop
		Heading = 240.0, -- หันหน้า prop ไปทิศทางไหน ค่า H
		radarpick = 1.5,  -- ระยะในการกด E เก็บ
		radarremoveprop = 50.0, -- ระยะที่ออกจากจุด แล้วจะลบ prop
		["spawnrandomX"] = {-10, 10}, -- ระยะห่างของ prop บนพื้น  พิกัดสอปอน object x  
		["spawnrandomY"] = {-10, 10} --- ระยะห่างของ prop บนพื้น  พิกัดสอปอน object y
	},
	
	["BaseLimit"] = true, -- ระบบลิมิท ปรับ true / น้ำหนักปรับ false
	["BaseWeight"] = false, --ระบบน้ำหนักปรับ true / ลิมิทปรับ false
	
	Pos = {
		x = -307.28,
		y = 2773.05,
		z = 62.35
	},
	
	Blips = {
		Id = 102,
		Color = 5,
		Size = 1.3,
		Text = '鳳梨'
	},
	
	Item = {
		ItemName = "D-1", -- ไอเทมที่ได้รับ
		ItemCount = {1, 1},  -- จำนวนที่จะได้  {1, 5} คือ 1 ถึง 5
		Useitem = false, --  ใช้ไอเท็มเก็บหรือไม่  true = ใช้	/	false = ไม่ใช้
		itemworking = "notz_manocard",  -- ไอเท็มที่ใช้ทำงาน
		deleteobject = 1 -- ลบ prop ทุกครั้งหลังเก็บหรือไม่    %  1 = 100%, 2 = 50%, 3 = 33%, 4 = 25%, 5 = 20%
	
	},
	
	ItemBonus = {   -- ไอเท็มโบนัส
	--	{
	--		ItemName = "",  -- ชื่อไอเท็ม
	--		ItemCount = {1, 1}, -- จำนวนที่จะได้  {1, 5} คือ 1 ถึง 5  
	--		Percent = 80   -- เปอร์เซ็น
	--	},
		{
			ItemName = "D-1",
			ItemCount = {1, 1}, -- จำนวนที่จะได้  {1, 5} คือ 1 ถึง 5
			Percent = 1   --  1-100 %
		}

	},
	
	TextloadTime = {
		loading = "mythic_progbar:client:progress", -- หลอดโหลด
		textpickup = "按E採集",  -- ตัวหนังสือ ตอนเก็บ
		textdoing = "正在採集",
		Noitemwork = "你沒有鳳梨",
		ItemFull = '你已經採滿了',   -- ตัวหนังสือตอนของเต็ม
		ItemBonusFull = '你已經採滿了',   -- ตัวหนังสือตอนของเต็ม
		timepick = 4  -- เวลาในการทำ วินาที
	},
	
	DrawnText = {
		Font ='font4thai', -- ฟอนท์ตัวหนังสือ
		sizetext = 0.55,  -- ขนาดของตัวหนังสือ
		big = 0.04, --ความใหญ่
		long = 450,  -- ความยาว
		K = 130  -- ความเข้ม
	}
}

Config.Aniwork = { ------ 

	Animation = {   ----- ท่าตอน ขุด
		Scenario = true,
		AnimationDirect = "",
		AnimationScene = "WORLD_HUMAN_GARDENER_PLANT",
	},

}

