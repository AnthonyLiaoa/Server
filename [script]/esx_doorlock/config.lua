Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	--[[{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = { 'police','rebel'  },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objYaw = 90.0,
		objCoords  = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.1, -986.3, 31.7),
		authorizedJobs = { 'police','rebel'},
		locked = true
	},]]--

	-- Rooftop
--[[	{
		objName = 'v_ilev_gtdoor02',
		objYaw = 270.0,
		objCoords  = vector3(464.3, -984.6, 43.8),
		textCoords = vector3(464.3, -984.0, 44.8),
		authorizedJobs = { 'police','rebel' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 90.0,
		objCoords  = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.0, 31.5),
		authorizedJobs = { 'police','rebel' },
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = -90.0,
		objCoords  = vector3(452.6, -982.7, 30.6),
		textCoords = vector3(453.0, -982.6, 31.7),
		authorizedJobs = { 'police','rebel' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = -180.0,
		objCoords  = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.2, -980.0, 31.7),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.6, -989.4, 31.7),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},

	--
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 0.0,
		objCoords  = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -90.0,
		objCoords  = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = { 'police','rebel' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.7, -1001.9, 24.9),
		textCoords = vector3(461.8, -1002.4, 25.0),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.0, -1003.5, 25.5),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		textCoords = vector3(468.6, -1014.4, 27.1),
		authorizedJobs = { 'police','rebel' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 0.0,
				objCoords  = vector3(467.3, -1014.4, 26.5)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 180.0,
				objCoords  = vector3(469.9, -1014.4, 26.5)
			}
		}
	},]]--

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objYaw = 90.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' ,'rebel'},
		locked = true,
		distance = 14,
		size = 2
	},
	
	-----------------------------------------------------------------------
	-------------------------Nieuw Politie----------------------------------
	------------------------------------------------------------------------
	-- {
	-- 	objName = 'mrpd_celldoor',
	-- 	objCoords  = vector3(461.37, -988.67, 34.19),
	-- 	textCoords = vector3(461.37, -988.67, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_celldoor',
	-- 	objCoords  = vector3(455.56, -988.66, 34.19),
	-- 	textCoords = vector3(455.56, -988.66, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_celldoor',
	-- 	objCoords  = vector3(449.66, -988.62, 34.19),
	-- 	textCoords = vector3(449.66, -988.62, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_celldoor2',
	-- 	objCoords  = vector3(449.63, -984.56, 34.19),
	-- 	textCoords = vector3(449.75, -985.22, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_celldoor2',
	-- 	objCoords  = vector3(455.62, -985.2, 34.19),
	-- 	textCoords = vector3(455.62, -985.2, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 2
	-- },
	
	-- {
	-- 	objName = 'mrpd_celldoor',
	-- 	objCoords  = vector3(461.61, -985.15, 34.19),
	-- 	textCoords = vector3(461.61, -985.15, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_door_04',
	-- 	objCoords  = vector3(436.45, -985.38, 34.19),
	-- 	textCoords = vector3(436.45, -985.38, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 														{
	-- 	objName = 'mrpd_door_04',
	-- 	objCoords  = vector3(441.96, -994.62, 34.19),
	-- 	textCoords = vector3(441.96, -994.62, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 															{
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(467.41, -991.82, 34.19),
	-- 	textCoords = vector3(467.41, -991.82, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 																{
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(476.13, -996.46, 34.19),
	-- 	textCoords = vector3(476.13, -996.46, 34.19),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 																	{
	-- 	objName = 'mrpd_door_01_r',
	-- 	objCoords  = vector3(434.2, -981.37, 30.71),
	-- 	textCoords = vector3(434.2, -981.37, 30.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 																		{
	-- 	objName = 'mrpd_door_01_l',
	-- 	objCoords  = vector3(434.18, -982.48, 30.71),
	-- 	textCoords = vector3(434.18, -982.48, 30.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_door_01_l',
	-- 	objCoords  = vector3(439.58, -999.28, 30.71),
	-- 	textCoords = vector3(439.58, -999.28, 30.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 4,
	-- 	size = 1
	-- },
	
	-- 											{
	-- 	objName = 'mrpd_door_01_l',
	-- 	objCoords  = vector3(442.18, -999.19, 30.71),
	-- 	textCoords = vector3(442.18, -999.19, 30.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 4,
	-- 	size = 1
	-- },
	
	-- 											{
	-- 	objName = 'mrpd_door_01_r',
	-- 	objCoords  = vector3(440.73, -999.19, 30.71),
	-- 	textCoords = vector3(440.73, -999.19, 30.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 4,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_door_01_r',
	-- 	objCoords  = vector3(443.36, -999.23, 30.71),
	-- 	textCoords = vector3(443.36, -999.23, 30.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 4,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_garage_door',
	-- 	objCoords  = vector3(431.28, -1001.61, 25.71),
	-- 	textCoords = vector3(431.28, -1001.61, 25.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 8,
	-- 	size = 2
	-- },
	
	-- {
	-- 	objName = 'mrpd_garage_door',
	-- 	objCoords  = vector3(436.21, -1001.68, 25.71),
	-- 	textCoords = vector3(436.21, -1001.68, 25.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 8,
	-- 	size = 2
	-- },
	
	-- 			{
	-- 	objName = 'mrpd_garage_door',
	-- 	objCoords  = vector3(447.57, -1001.55, 25.71),
	-- 	textCoords = vector3(447.57, -1001.55, 25.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 7,
	-- 	size = 2
	-- },
	
	-- 			{
	-- 	objName = 'mrpd_garage_door',
	-- 	objCoords  = vector3(452.12, -1001.57, 25.71),
	-- 	textCoords = vector3(452.12, -1001.57, 25.71),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 7,
	-- 	size = 2
	-- },
	
	-- 		{
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(441.06, -993.8, 30.70),
	-- 	textCoords = vector3(441.06, -993.8, 30.70),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	-- 		{
	-- 	objName = 'mrpd_door_04',
	-- 	objCoords  = vector3(438.45, -995.88, 30.70),
	-- 	textCoords = vector3(438.45, -995.88, 30.70),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 1,
	-- 	size = 1
	-- },
	
	-- 		{
	-- 	objName = 'mrpd_door_04',
	-- 	objCoords  = vector3(443.37, -994.81, 30.70),
	-- 	textCoords = vector3(443.37, -994.81, 30.70),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 1,
	-- 	size = 1
	-- },
	
	-- 		{
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(467.38, -991.28, 30.70),
	-- 	textCoords = vector3(467.38, -991.28, 30.70),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 1,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(471.48, -998.93, 30.70),
	-- 	textCoords = vector3(471.48, -998.93, 30.70),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 1,
	-- 	size = 1
	-- },
	
	-- 		{
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(464.35, -988.72, 25.79),
	-- 	textCoords = vector3(464.35, -988.72, 25.79),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 				{
	-- 	objName = 'mrpd_door_03',
	-- 	objCoords  = vector3(467.43, -991.26, 25.79),
	-- 	textCoords = vector3(467.43, -991.26, 25.79),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- 		{
	-- 	objName = 'mrpd_door_04',
	-- 	objCoords  = vector3(486.87, -996.72, 25.79),
	-- 	textCoords = vector3(486.87, -996.72, 25.79),
	-- 	authorizedJobs = { 'police', 'rebel' },
	-- 	locked = true,
	-- 	distance = 2,
	-- 	size = 1
	-- },
	
	-- {
	-- 	objName = 'prop_gate_airport_01',
	-- 	objCoords = vector3(410.886475, -1025.43127, 28.4585419),
	-- 	textCoords = vector3(411.75, -1021.62, 29.37),
	-- 	authorizedJobs = { 'police', 'offpolice', 'kmar', 'offkmar', 'rebel' },
	-- 	locked = true,
	-- 	distance = 15,
	-- 	size = 2,
    --     pickable = false
	-- },

	-- --
	-- -- Sandy Shores中部警局
	-- --

	-- -- Entrance
	 {
	 	objName = 'v_ilev_shrfdoor',
	 	objYaw = 30.0,
	 	objCoords  = vector3(1855.1, 3683.5, 34.2),
	 	textCoords = vector3(1855.1, 3683.5, 35.0),
	 	authorizedJobs = { 'police' ,'rebel'},
	 	locked = true
	 },
	 -- Captain Office
	 {
	 	objName = 'v_ilev_shrfdoor',
	 	objYaw = -60.0,
	 	objCoords  = vector3(1859.17, 3688.44, 34.26),
	 	textCoords = vector3(1859.17, 3688.44, 34.56),
	 	authorizedJobs = { 'police','rebel' },
	 	locked = true
	 },
	-- -- Cell 1
	 {
	 	objName = 'v_ilev_ph_cellgate',
	 	objYaw = 120.0,
	 	objCoords  = vector3(1847.08, 3684.96, 34.26),
	 	textCoords = vector3(1847.08, 3684.96, 34.06),
	 	authorizedJobs = { 'police','rebel' },
	 	locked = true
	 },

	-- -- Cell 2
	 {
	 	objName = 'v_ilev_ph_cellgate',
	 	objYaw = 120.0,
	 	objCoords  = vector3(1845.24, 3688.04, 34.26),
	 	textCoords = vector3(1845.24, 3688.04, 34.06),
	 	authorizedJobs = { 'police' ,'rebel'},
	 	locked = true
	 },
	-- -- Cell Back
	 {
	 	textCoords = vector3(1846.34, 3690.5, 34.06),
	 	authorizedJobs = { 'police' ,'rebel'},
	 	locked = true,
	 	doors = {
	 		{
	 			objName = 'v_ilev_rc_door2',
	 			objYaw = -60.0,
	 			objCoords  = vector3(1846.34, 3690.5, 34.26)
	 		}
	 	}
	 },
	-- -- Cell Front
	 {
	 	textCoords = vector3(1850.82, 3682.83, 34.06),
	 	authorizedJobs = { 'police' ,'rebel'},
	 	locked = true,
	 	doors = {
	 		{
	 			objName = 'v_ilev_rc_door2',
	 			objYaw = -60.0,
	 			objCoords  = vector3(1850.82, 3682.83, 34.26)
	 		}
	 	}
	 },
	-- -- To Back
	 {
	 	objName = 'v_ilev_gc_door01',
	 	objYaw = 210.0,
	 	objCoords  = vector3(1854.59, 3700.5, 34.27),
	 	textCoords = vector3(1854.59, 3700.5, 34.37),
	 	authorizedJobs = { 'police','rebel' },
	 	locked = true
	 },
	-- --
	-- -- Paleto Bay
	-- --

	-- -- Entrance (double doors)
	-- {
	-- 	textCoords = vector3(-443.5, 6016.3, 32.0),
	-- 	authorizedJobs = { 'police','rebel' },
	-- 	locked = false,
	-- 	distance = 2.5,
	-- 	doors = {
	-- 		{
	-- 			objName = 'v_ilev_shrf2door',
	-- 			objYaw = -45.0,
	-- 			objCoords  = vector3(-443.1, 6015.6, 31.7),
	-- 		},

	-- 		{
	-- 			objName = 'v_ilev_shrf2door',
	-- 			objYaw = 135.0,
	-- 			objCoords  = vector3(-443.9, 6016.6, 31.7)
	-- 		}
	-- 	}
	-- },

	-- --
	-- -- Bolingbroke Penitentiary
	-- --

	-- -- Entrance (Two big gates)
	 {
	 	objName = 'prop_gate_prison_01',
	 	objCoords  = vector3(1844.9, 2604.8, 44.6),
	 	textCoords = vector3(1844.9, 2608.5, 48.0),
	 	authorizedJobs = { 'police' ,'rebel'},
	 	locked = true,
	 	distance = 12,
	 	size = 2
	 },

	 {
	 	objName = 'prop_gate_prison_01',
	 	objCoords  = vector3(1818.5, 2604.8, 44.6),
	 	textCoords = vector3(1818.5, 2608.4, 48.0),
	 	authorizedJobs = { 'police','rebel'},
	 	locked = true,
	 	distance = 12,
	 	size = 2
	 },
	
	-- {
	-- 	objName = 'prop_faceoffice_door_l',
	-- 	objCoords  = vector3(342.71, -586.24, 43.32),
	-- 	textCoords = vector3(342.71, -586.24, 43.32),
	-- 	authorizedJobs = { 'ambulance','rebel' },
	-- 	locked = true,
	-- 	distance = 12,
	-- 	size = 2
	-- },
	
	-- {
	-- 	objName = 'prop_id2_11_gdoor',
	-- 	objCoords  = vector3(1033.5, -2299.71, 30.51),
	-- 	textCoords = vector3(1033.5, -2299.71, 30.51),
	-- 	authorizedJobs = { 'mechanic' },
	-- 	locked = true,
	-- 	distance = 13,
	-- 	size = 2
	-- },	
	
	-- {
	-- 	objName = 'prop_id2_11_gdoor',
	-- 	objCoords  = vector3(999.54, -2327.24, 30.51),
	-- 	textCoords = vector3(999.54, -2327.24, 30.51),
	-- 	authorizedJobs = { 'mechanic' },
	-- 	locked = true,
	-- 	distance = 13,
	-- 	size = 2
	-- },		

	-- --
	-- -- Addons
	-- --

	-- --[[
	-- -- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
	-- {
	-- 	objName = 'prop_gate_airport_01',
	-- 	objCoords  = vector3(420.1, -1017.3, 28.0),
	-- 	textCoords = vector3(420.1, -1021.0, 32.0),
	-- 	authorizedJobs = { 'police' },
	-- 	locked = true,
	-- 	distance = 14,
	-- 	size = 2
	-- }
	-- --]]

	-- --bank
	{
        objName = 'hei_v_ilev_bk_gate2_pris',
        objCoords  = vector3(261.99899291992, 221.50576782227, 106.68346405029),
        textCoords = vector3(261.99899291992, 221.50576782227, 107.68346405029),
        authorizedJobs = { 'police' ,'rebel'},
        locked = true,
        distance = 1,
        size = 2
	},
	
	-- --mechanic
	-- {
    --     objName = 'prop_com_ls_door_01',
    --     objCoords  = vector3(-349.4955, -117.2882, 40.03106),
    --     textCoords = vector3(-349.4955, -117.2882, 39.03106),
    --     authorizedJobs = { 'mechanic' ,'rebel'},
    --     locked = true,
    --     distance = 10,
    --     size = 2
	-- },
	-- {
    --     objName = 'prop_com_ls_door_01',
    --     objCoords  = vector3(-356.0905, -134.7714, 40.01295),
    --     textCoords = vector3(-356.0905, -134.7714, 39.01295),
    --     authorizedJobs = { 'mechanic' ,'rebel'},
    --     locked = true,
    --     distance = 10,
    --     size = 2
	-- },
	-- {
    --     objName = 'portels_3',
    --     objCoords  = vector3(-321.6734, -141.1798, 39.62553),
    --     textCoords = vector3(-321.6734, -141.1798, 39.62553),
    --     authorizedJobs = { 'mechanic' ,'rebel'},
    --     locked = true,
    --     distance = 5,
    --     size = 1
	-- },
	-- {
    --     objName = 'apa_v_ilev_ss_door7',
    --     objCoords  = vector3(-320.8858, -138.8524, 39.12236),
    --     textCoords = vector3(-320.8858, -138.8524, 39.12236),
    --     authorizedJobs = { 'mechanic' ,'rebel'},
    --     locked = true,
    --     distance = 1,
    --     size = 1
	-- },
	-- {
    --     objName = 'apa_v_ilev_ss_door8',
    --     objCoords  = vector3(-312.1631, -115.2423, 39.1126),
    --     textCoords = vector3(-312.1631, -115.2423, 39.1126),
    --     authorizedJobs = { 'mechanic' ,'rebel'},
    --     locked = true,
    --     distance = 1,
    --     size = 1
	-- },
	-- {
    --     objName = 'apa_v_ilev_ss_door8',
    --     objCoords  = vector3(-353.8613, -127.7614, 39.53282),
    --     textCoords = vector3(-353.8613, -127.7614, 39.53282),
    --     authorizedJobs = { 'mechanic' ,'rebel'},
    --     locked = true,
    --     distance = 1,
    --     size = 1
	-- },
	-- --新世界
	-- {  
    --     objName = 'v_ilev_bl_doorsl_l',  --新世界自動門
    --     objCoords  = vector3(1233.662, -1115.296, 31.53867),
    --     textCoords = vector3(1233.662, -1115.296, 31.53867),
    --     authorizedJobs = {'rebel','mafia'},
    --     locked = true,
    --     distance = 3,
    --     size = 1
	-- },
	-- {
    --     objName = 'v_ilev_bl_doorsl_l',--新世界自動門
    --     objCoords  = vector3(1240.205, -1110.889, 31.53867),
    --     textCoords = vector3(1240.205, -1110.889, 31.53867),
    --     authorizedJobs = {'rebel' ,'mafia'},
    --     locked = true,
    --     distance = 3,
    --     size = 1
	-- },
	-- {
    --     objName = 'v_ilev_gc_door04',  --武器店門
    --     objCoords  = vector3(845.3694, -1024.539, 28.34478),
    --     textCoords = vector3(845.3694, -1024.539, 28.34478),
    --     authorizedJobs = {'rebel' ,'mafia'},
    --     locked = true,
    --     distance = 3,
    --     size = 1
	-- },
	-- {
    --     objName = 'v_ilev_gc_door03',  --武器店門
    --     objCoords  = vector3(842.7685, -1024.539, 28.34478),
    --     textCoords = vector3(842.7685, -1024.539, 28.34478),
    --     authorizedJobs = {'rebel' ,'mafia'},
    --     locked = true,
    --     distance = 3,
    --     size = 1
	-- },
    -- ----醫護局
	-- {
    --     objName = 'v_ilev_cd_door2',  --整形門
    --     objCoords  = vector3(-503.46, -302.4, 69.52),
    --     textCoords = vector3(-503.46, -302.4, 69.52),
    --     authorizedJobs = {'rebel' ,'ambulance'},
    --     locked = true,
    --     distance = 3,
    --     size = 1
	-- },
	--新監獄
    {
        objName = 'prop_damdoor_01',  --監獄門
        objCoords  = vector3(735.45, 133.11, 80.67),
        textCoords = vector3(735.45, 133.11, 80.67),
        authorizedJobs = {'rebel' },
        locked = true,
        distance = 1.2,
        size = 1
	},
	{
		objName = 'v_ilev_gc_door01',
		objYaw = 210.0,
		objCoords  = vector3(1854.59, 3700.5, 34.27),
		textCoords = vector3(1854.59, 3700.5, 34.37),
		authorizedJobs = { 'police','rebel' },
		locked = true
	},
	--kung
	{
		objName = 'prop_ch1_07_door_02l',
		objYaw = 230.0,
		objCoords  = vector3(-301.06, 6046.4, 31.57),
		textCoords = vector3(-301.06, 6046.4, 31.57),
		authorizedJobs = { 'rebel' },
		locked = true
	},
}
