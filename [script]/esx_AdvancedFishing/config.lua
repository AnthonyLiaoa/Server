Config = {}
	---------------------------------------------------------------
	--=====How long should it take for player to catch a fish=======--
	---------------------------------------------------------------
	--Time in miliseconds
	Config.FishTime = {a = 20000, b = 44000}
	
	--------------------------------------------------------
	--=====Prices of the items players can sell==========--
	--------------------------------------------------------
	--First amount minimum price second maximum amount (the amount player will get is random between those two numbers)
	Config.FishPrice = {a = 800, b = 800} --Will get clean money THIS PRICE IS FOR EVERY 5 FISH ITEMS (5 kg)
	Config.TurtlePrice = {a = 2000, b = 2200} --Will get dirty money
	Config.SharkPrice = {a = 6000, b = 7000} --Will get dirty money

	--------------------------------------------------------
	--=====Locations where players can sell stuff========--
	--------------------------------------------------------

	Config.SellFish = {x = -3251.2, y = 991.5, z = 11.49}--,--Place where players can sell their fish
	Config.SellFish1 = {x = 3689.26, y = 4562.77, z = 24.18}
	Config.SellTurtle = {x = 40.17, y = 6654.56, z = 31.7} --Place where players can sell their turtles 
	Config.SellShark = {x = 2517.6 , y = 4218.0, z = 38.8} --Place where players can sell their sharks

	--------------------------------------------------------
	--=====Locations where players can rent boats========--
	--------------------------------------------------------
Config.MarkerZones = { 
	
    --{x = -1580.28 ,y = 5304.51  ,z = 3.37   ,xs = -1569.5  , ys = 5351.42   , zs = 1.10 },
 	{x = -1005.02  ,y = -1398.55 ,z = 0.6    ,xs = -996.63   , ys = -1382.37 , zs = 0.8 },  
 	{x = -1607.6 ,y =  5252.8 ,z = 3.0    ,xs = -1590.2  , ys = 5278.8  , zs = 1.0 },
 	-- {x = 3855.0  ,y =  4463.7 ,z = 1.6    ,xs = 3885.2   , ys =  4507.2 , zs = 1.0 },
 	-- {x = 1330.8  ,y =  4226.6 ,z = 32.9   ,xs = 1334.2   , ys =  4192.4 , zs = 30.0 },
	
}
