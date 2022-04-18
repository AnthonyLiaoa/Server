Config 					= {}

Config.Locale 			= 'en'
Config.DrawDistance 	= 100
Config.Size 			= {x = 1.5, y = 1.5, z = 1.5}
Config.Color 			= {r = 255, g = 120, b = 0}
Config.Type 			= 8

Config.enableTimer = false -- Enable ONLY IF you want a timer on the money washing. Keep in mind the Player does not have to stay at the wash for it to actually wash the money.
local second = 60
local minute = 60 * second
local hour = 60 * minute

Config.timer = 10 * second -- Time it takes to wash money. The * amount will determine if its hours, second, or minutes.

--[[ 
	Below are the zones for laundering. You can set multiple zones just follow the format below. 
	Failure to do so will result in the script breaking.
	Set the job to 'any' if you want anybody to use the location. Otherwise set the required job you want to use for the location
	Any job not allowed to use the location WILL NOT see a marker or get a popup to use it.

	
	EXAMPLE LOCATION!!! JUST COPY THIS AND PASTE TO ADD MORE LOCATIONS!
		
	{
		Pos = {
			{x = 437.04 , y = -996.31 , z = 30.69}
		},
		
		Jobs = {
			'any', -- SET THE 'any' TAG TO ALLOW ALL JOBS INCLUDING POLICE TO USE THE LOCATION
		}
	},
	]]

Config.Zones = {
	
	{	
		Pos = { 
			{ x = -2706.52, y = -103.74, z = 16.2 },
		},
		
		Jobs = {'thelostmc','rebel'}, -- set to 'any' to allow the location for any player regardless of job
		Rate = 0.9
	},
	

	{	
		Pos = { 
			{ x = -947.2, y = 1354.27, z = 299.47 },
		},
		
		Jobs = {'mafia','rebel'}, -- set to 'any' to allow the location for any player regardless of job
		Rate = 0.9
	},
	{	
		Pos = { 
			{ x = 1392.57, y = 1159.9, z = 113.34 },
		},
		
		Jobs = {'grove','rebel'}, -- set to 'any' to allow the location for any player regardless of job
		Rate = 0.9
	},
	{	
		Pos = { 
			{ x = -388.67, y = 4362.18, z = 63.51 },
		},
		
		Jobs = {'thelostmc','rebel'}, -- set to 'any' to allow the location for any player regardless of job
		Rate = 0.9
	},

	-- {	
	-- 	Pos = { 
	-- 		{x = 424.97 , y = 0.89 , z = 90.94},
	-- 	},
   
	-- 	Jobs = {'thelostmc'}, -- set to 'any' to allow the location for any player regardless of job
	-- 	Rate = 1.08
	-- },
	   
	--[[{	
		Pos = { 
			{x = 1226.36,y = -1091.35,z = 30.64},
		},
   
		Jobs = {'mafia'}, -- set to 'any' to allow the location for any player regardless of job
		Rate = 0.9
   	},]]--


}
