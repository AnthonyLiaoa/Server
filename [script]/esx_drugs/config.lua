Config = {}

Config.Locale = 'en'

--警察人數限制
Config.RequiredCops = 1

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.DrugDealerItems = {
	heroin = math.random(8000,8000),
	marijuana = math.random(10000,10000),
	--meth = math.random(6000,6000),
	coke = math.random(6000,6000),
	--lsd = math.random(9000,9000),
}

Config.ChemicalsConvertionItems = {
	hydrochloric_acid = 0,
	sodium_hydroxide = 0,
	sulfuric_acid = 0,
	lsa = 0,
}



Config.GiveBlack = true




Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(1954.86, 4855.38, 44.39), name = _U('blip_weedFarm'), color = 25, sprite = 496, radius = 160.0},
	WeedProcessing = {coords = vector3(-143.94, 1902.28, 196.35), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 160.0},
	
	--meth
	--MethProcessing = {coords = vector3(1390.33, 3608.5, 38.94), name = _U('blip_methprocessing'), color = 8, sprite = 514, radius = 000.0},
	--HydrochloricAcidFarm = {coords = vector3(2724.12, 1583.03, 24.5), name = _U('blip_HydrochloricAcidFarm'), color = 8, sprite = 514, radius = 000.0},
	--SulfuricAcidFarm = {coords = vector3(3333.34, 5160.22, 18.31), name = _U('blip_SulfuricAcidFarm'), color = 8, sprite = 514, radius = 000.0},
	--SodiumHydroxideFarm = {coords = vector3(3565.13, 3663.07, 33.94), name = _U('blip_SodiumHydroxideFarm'), color = 8, sprite = 514, radius = 000.0},
	
	--Chemicals
	--ChemicalsField = {coords = vector3(817.46, -3192.84, 5.9), name = _U('blip_ChemicalsFarm'), color = 32, sprite = 499, radius = 000.0},
	--ChemicalsConvertionMenu = {coords = vector3(3718.8, 4533.45, 21.67), name = _U('blip_ChemicalsProcessing'), color = 25, sprite = 496, radius = 0.0},
	
	--Coke
	CokeField = {coords = vector3(249.31, 3588.69, 33.33), name = _U('blip_CokeFarm'), color = 21, sprite = 468, radius = 160.0},
	CokeProcessing = {coords = vector3(440.13, 6459.08, 34.86), name = _U('blip_Cokeprocessing'),color = 21, sprite = 468, radius = 160.0},
	
	--LSD
	
	--thionylchlorideProcessing = {coords = vector3(1903.98, 4922.70, 48.16), name = _U('blip_lsdprocessing01'),color = 32, sprite = 499, radius = 160.0},
	--lsdProcessing = {coords = vector3(91.26, 3749.31, 40.77), name = _U('blip_lsdprocessing02'),color = 32, sprite = 499, radius = 160.0},

	
	--Heroin
	HeroinField = {coords = vector3(-2149.58, 2678.19, 1.86), name = _U('blip_heroinfield'), color = 29, sprite = 403, radius = 160.0},
	HeroinProcessing = {coords = vector3(1527.42, 1703.84, 108.83), name = _U('blip_heroinprocessing'), color = 29, sprite = 403, radius = 160.0},

	--DrugDealer
	DrugDealer = {coords = vector3(-1159.25, -1521.38, 9.63), name = _U('blip_drugdealer'), color = 6, sprite = 484, radius = 80.0},
	
	

}