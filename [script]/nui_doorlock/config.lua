Config = {}
Config.ShowUnlockedText = false

Config.DoorList = {
------------------------------------------
--	MISSION ROW POLICE DEPARTMENT		--
------------------------------------------
	-- gabz_mrpd	FRONT DOORS
	{
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -1547307588, objHeading = 90.0, objCoords = vector3(434.7444, -983.0781, 30.8153)},
			{objHash = -1547307588, objHeading = 270.0, objCoords = vector3(434.7444, -980.7556, 30.8153)}
		},
		
	},
	----警局頂樓門----
	{
    authorizedJobs={'police','rebel','offpolice'} ,
	locked = true,
	maxDistance = 2.0,
	objHash = -692649124 ,
	objHeading = 90.0 ,
	objCoords = vector3(464.21, -983.87,43.69),
    fixText = true

	},
	----醫護局門鎖----
	{
        authorizedJobs={'rebel','ambulance'},
	    locked = true,
	    maxDistance = 2.0,
	    objHash = 493136920,
    	objHeading = 352.28 ,
	    objCoords = vector3(-445.33,-342.24,69.52),
	    fixText = true
	},
	{
		authorizedJobs={'rebel','ambulance'},
		locked = true,
		maxDistance = 2.0,
		objHash = 493136920,
		objHeading = 291.76 ,
		objCoords = vector3(-452.79,-292.08,34.91),
		fixText = true
	},
	{
		authorizedJobs={'rebel','ambulance'},
		locked = true,
		maxDistance = 2.0,
		objHash = 493136920,
		objHeading = 111.76 ,
		objCoords = vector3(-457.38,-294.81,34.91),
		fixText = true
	},
	-- gabz_mrpd	NORTH DOORS
	{
		authorizedJobs = { 'police','rebel', 'offpolice' ,},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -1547307588, objHeading = 180.0, objCoords = vector3(458.2087, -972.2543, 30.8153)},
			{objHash = -1547307588, objHeading = 0.0, objCoords = vector3(455.8862, -972.2543, 30.8153)}
		},
		
	},

	-- gabz_mrpd	SOUTH DOORS
	{
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -1547307588, objHeading = 0.0, objCoords = vector3(440.7392, -998.7462, 30.8153)},
			{objHash = -1547307588, objHeading = 180.0, objCoords = vector3(443.0618, -998.7462, 30.8153)}
		},
		
	},

	-- gabz_mrpd	LOBBY LEFT


	{
		authorizedJobs = {'police','rebel'},
		objHash = -1406685646,
		objHeading = 0.0,
		objCoords = vector3(441.13, -977.93, 30.82319),
		locked = true,
		maxDistance = 2.0,
		fixText = true
	
	},

	-- gabz_mrpd	LOBBY RIGHT
	{
		objHash = -96679321,
		objHeading = 180.0,
		objCoords = vector3(440.5201, -986.2335, 30.82319),
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	GARAGE ENTRANCE 1
	{
		objHash = 1830360419,
		objHeading = 269.78,
		objCoords = vector3(464.1591, -974.6656, 26.3707),
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	GARAGE ENTRANCE 2
	{
		objHash = 1830360419,
		objHeading = 89.87,
		objCoords = vector3(464.1566, -997.5093, 26.3707),
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},
	
	-- gabz_mrpd	GARAGE ROLLER DOOR 1
	{
		objHash = 2130672747,
		objHeading = 0.0,
		objCoords = vector3(431.4119, -1000.772, 26.69661),
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 6,
		garage = true,
		slides = true,
		audioRemote = true
	},
	
	-- gabz_mrpd	GARAGE ROLLER DOOR 2
	{
		objHash = 2130672747,
		objHeading = 0.0,
		objCoords = vector3(452.3005, -1000.772, 26.69661),
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 6,
		garage = true,
		slides = true,
		audioRemote = true
	},
	
	-- gabz_mrpd	BACK GATE
	{
		objHash = -1603817716,
		objHeading = 90.0,
		objCoords = vector3(488.8948, -1017.212, 27.14935),
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 6,
		slides = true,
		audioRemote = true
	},

	-- gabz_mrpd	BACK DOORS
	{
		authorizedJobs = { 'police','rebel', 'offpolice' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -692649124, objHeading = 0.0, objCoords = vector3(467.3686, -1014.406, 26.48382)},
			{objHash = -692649124, objHeading = 180.0, objCoords = vector3(469.7743, -1014.406, 26.48382)}
		},
		
	},

	-- gabz_mrpd	MUGSHOT
	{
		objHash = -1406685646,
		objHeading = 180.0,
		objCoords = vector3(475.9539, -1010.819, 26.40639),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	CELL ENTRANCE 1
	{
		objHash = -53345114,
		objHeading = 270.0,
		objCoords = vector3(476.6157, -1008.875, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		fixText = true,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL ENTRANCE 2
	{
		objHash = -53345114,
		objHeading = 180.0,
		objCoords = vector3(481.0084, -1004.118, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		fixText = true,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 1
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(477.9126, -1012.189, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 2
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(480.9128, -1012.189, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 3
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(483.9127, -1012.189, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 4
	{
		objHash = -53345114,
		objHeading = 0.0,
		objCoords = vector3(486.9131, -1012.189, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	CELL 5
	{
		objHash = -53345114,
		objHeading = 180.0,
		objCoords = vector3(484.1764, -1007.734, 26.48005),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		fixText = true,
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}
	},

	-- gabz_mrpd	LINEUP
	{
		objHash = -288803980,
		objHeading = 90.0,
		objCoords = vector3(479.06, -1003.173, 26.4065),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	OBSERVATION I
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6694, -983.9868, 26.40548),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	INTERROGATION I
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6701, -987.5792, 26.40548),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	OBSERVATION II
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6699, -992.2991, 26.40548),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	INTERROGATION II
	{
		objHash = -1406685646,
		objHeading = 270.0,
		objCoords = vector3(482.6703, -995.7285, 26.40548),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	EVIDENCE
	{
		objHash = -692649124,
		objHeading = 134.7,
		objCoords = vector3(475.8323, -990.4839, 26.40548),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		setText = true,
		textCoords = vector3(475.3978, -989.9868, 26.34802)
	},

	-- gabz_mrpd	ARMOURY 1
	{
		objHash = -692649124,
		objHeading = 90.0,
		objCoords = vector3(479.7507, -999.629, 30.78927),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		fixText = true
	},

	-- gabz_mrpd	ARMOURY 2
	{
		objHash = -692649124,
		objHeading = 181.28,
		objCoords = vector3(487.4378, -1000.189, 30.78697),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
	},

	-- gabz_mrpd	SHOOTING RANGE
	{
		authorizedJobs = { 'police','rebel' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -692649124, objHeading = 0.0, objCoords = vector3(485.6133, -1002.902, 30.78697)},
			{objHash = -692649124, objHeading = 180.0, objCoords = vector3(488.0184, -1002.902, 30.78697)}
		},
		
	},
	--mechanic
	{
		authorizedJobs = { 'mechanic','rebel' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			
			{objHash = 865041037, objHeading = 180.0, objCoords = vector3(896.17, -58.82, 78.95)},
			{objHash = 865041037, objHeading = 0.0, objCoords = vector3(894.99, -58.17, 78.95)}
		},
		
	},
	--country
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 225.0, objCoords = vector3(-1094.3, -811.8, 19.37)},
			{objHash = -350181704, objHeading = 40.0, objCoords = vector3(-1092.68, -810.6, 19.37)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 225.0, objCoords = vector3(-1091.72, -809.84, 19.37)},
			{objHash = -350181704, objHeading = 40.0, objCoords = vector3(-1090.49, -809, 19.37)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 305.0, objCoords = vector3(-1061.1, -828.63, 19.21)},
			{objHash = -350181704, objHeading = 125.0, objCoords = vector3(-1062.32, -826.77, 19.21)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 37.0, objCoords = vector3(-1111.09, -824.72, 19.32)},
			{objHash = -350181704, objHeading = 217.0, objCoords = vector3(-1112.49, -825.62, 19.32)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 307.0, objCoords = vector3(-1105.95, -845.85, 19.26)},
			{objHash = -350181704, objHeading = 129.0, objCoords = vector3(-1106.99, -844.88, 19.26)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 307.0, objCoords = vector3(-1107.67, -843.66, 19.26)},
			{objHash = -350181704, objHeading = 129.0, objCoords = vector3(-1108.79, -842.29, 19.26)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -350181704, objHeading = 129.0, objCoords = vector3(-1112.58, -847.37, 13.43)},
			{objHash = -350181704, objHeading = 307.0, objCoords = vector3(-1111.63, -848.68, 13.43)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -2023754432, objHeading = 38.0, objCoords = vector3(-1058.52, -840.45, 5.04)},
			{objHash = -2023754432, objHeading = 218.0, objCoords = vector3(-1057.14, -839.44, 5.04)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -2023754432, objHeading = 35.0, objCoords = vector3(-1108.63, -842.01, 13.68)},
			{objHash = -2023754432, objHeading = 35.0, objCoords = vector3(-1108.63, -842.01, 13.68)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -2023754432, objHeading = 129.0, objCoords = vector3(-1089.61, -848.4, 4.88)},
			{objHash = -2023754432, objHeading = 309.0, objCoords = vector3(-1090.82, -847.08, 4.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel', 'offcountry' },
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 211.0, objCoords = vector3(-1073.35, -827.05, 5.48)},
			{objHash = 631614199, objHeading = 211.0, objCoords = vector3(-1073.35, -827.05, 5.48)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 223.0, objCoords = vector3(-1087.3, -829.41, 5.48)},
			{objHash = 631614199, objHeading = 223.0, objCoords = vector3(-1087.3, -829.41, 5.48)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1086.37, -827.29, 5.88)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1086.37, -827.29, 5.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1088.72, -824.16, 5.88)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1088.72, -824.16, 5.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1090.99, -821.07, 5.88)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1090.99, -821.07, 5.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1093.88, -823.23, 5.88)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1093.88, -823.23, 5.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1091.32, -826.26, 5.88)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1091.32, -826.26, 5.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1089.04, -829.71, 5.88)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1089.04, -829.71, 5.88)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -2023754432, objHeading = 129.0, objCoords = vector3(-1091.09, -835.64, 5.48)},
			{objHash = -2023754432, objHeading = 309.0, objCoords = vector3(-1091.93, -834.22, 5.48)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1096.32, -820.23, 5.48)},
			{objHash = 631614199, objHeading = 305.0, objCoords = vector3(-1096.32, -820.23, 5.48)}
		},
		
	},
	{
		authorizedJobs = { 'country','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -147325430, objHeading = 127.0, objCoords = vector3(-1089.76, -841.03, 37.64)},
			{objHash = -147325430, objHeading = 127.0, objCoords = vector3(-1089.76, -841.03, 37.64)}
		},
		
	},
	{
		authorizedJobs = { 'ambulance','rebel'},
		locked = true,
		maxDistance = 2.0,
		doors = {
			{objHash = -1700911976, objHeading = 339.0, objCoords = vector3(313.81, -572.05, 43.28)},
			{objHash = -434783486, objHeading = 339.0, objCoords = vector3(312.7, -571.62, 43.28)}
		},
		
	},


}

Citizen.CreateThread(function()
	Citizen.Wait(5)
	if CustomDoors[1] == nil then --[[no doors]] else
		for k, v in pairs(CustomDoors) do
			table.insert(Config.DoorList, v)
		end
	end
end)
