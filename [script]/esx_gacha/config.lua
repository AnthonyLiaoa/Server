--pNotify
--esx_vehiclshop

Config={}

Config.PlateLetters  = 2
Config.PlateNumbers  = 4
Config.PlateUseSpace = true
Config.BroadcastSW = false --中大獎全頻廣播true為開啟false為關閉

Config.GiftfixedPool={--聖誕節大禮包 randomgift1
    ['cola'] = {label='可樂',type='item',max=10,min=10},
    ['gacha_03'] = {label='紅色扭蛋',type='item',max=2,min=2}, --Don't forget add "," here
    ['porkrice'] = {label='滷肉飯',type='item',max=10,min=10},
    ['bitcoin02'] = {label='比特幣債券',type='item',max=20,min=20},           
    ['haaamid'] = {label='Cube Car',type='car',rate=20},--Don't forget add "," here
    ['19mazda3'] = {label='Mazda3 2019',type='car',rate=20},

    
    --If you want add new prize please added in here aas
}

Config.GiftfixedPool1={--船隻禮包 randomgift4
    ['squalo'] = {label='思快樂快艇',type='boat',max=1,min=1},
}

Config.GiftfixedPool2={--浩劫者直升機 randomgift5
    ['havok'] = {label='浩劫者直升機',type='aircraft',max=1,min=1},
}

Config.GiftfixedPool3={--兀鷹直升機 randomgift6
    ['buzzard2'] = {label='兀鷹直升機',type='aircraft',max=1,min=1},
}


Config.GiftRandomOnePool={--船隻/直升機禮包 randomgift2
   --[[ ['CashPool'] ={
        rate = 2500,
        poolitem={
            ['cash'] = {label='現金',type='cash',rate=20,max=100000,min=50000},
            ['cash1'] = {label='現金',type='cash',rate=20,max=80000,min=40000},
            ['cash2'] = {label='現金',type='cash',rate=20,max=60000,min=30000},
            ['cash3'] = {label='現金',type='cash',rate=20,max=40000,min=20000},
            ['cash4'] = {label='現金',type='cash',rate=20,max=20000,min=10000},
        }
    },
    ['ItemPool'] ={
        rate = 2499,
        poolitem={
            ['bottle'] = {label='寶特瓶',type='item',rate=10,max=10,min=1},
            ['fishbait'] = {label='魚餌',type='item',rate=200,max=5,min=1},
            ['turtlebait'] = {label='海龜餌',type='item',rate=100,max=5,min=1},
            ['fishingrod'] = {label='釣竿',type='item',rate=80,max=3,min=1},
            ['randomgift1'] = {label='吸毒必備禮包',type='item',rate=50,max=1,min=1},
            ['clip'] = {label='子彈',type='item',rate=60,max=5,min=1} --Don't forget add "," here
            --If you want add new prize please added in here  
        }
    },
    --[[['WeaponPool'] ={
        rate = 20,
        poolitem={
            ['WEAPON_PISTOL50'] = {label='.50重型手槍',type='weapon',rate=50,max=20,min=1}, --Don't forget add "," here
            ['WEAPON_COMBATPDW'] = {label='戰鬥自衛衝鋒槍',type='weapon',rate=20,max=30,min=1},
            ['WEAPON_ASSAULTRIFLE'] = {label='AK突襲步槍',type='weapon',rate=15,max=30,min=1},
            ['WEAPON_BULLPUPRIFLE'] = {label='AUG突襲步槍',type='weapon',rate=10,max=30,min=1},
            ['WEAPON_CARBINERIFLE'] = {label='卡賓步槍',type='weapon',rate=5,max=30,min=1},
            --If you want add new prize please added in here 
        }
    },]]
    ['CarPool'] ={
        rate = 100,
        poolitem={
            ['havok'] = {label='浩劫者直升機',type='aircraft',rate=100},
            
        }
    },

}

Config.GiftRandomMultPool={  --randomgift3
    --[[['FixedPool'] ={
        poolitem={
            ['cash'] = {label='現金',type='cash',rate=1,max=30000,min=1} ,
            ['bread'] = {label='麵包',type='item',rate=1,max=500,min=5},
            ['water'] = {label='水',type='item',rate=1,max=500,min=5}
        }
    },
    ['CashPool'] ={
        rate = 10,
        poolitem={
            ['cash'] = {label='現金',type='cash',rate=1,max=30000,min=1} 
        }
    },
    ['ItemPool'] ={
        rate = 20,
        poolitem={
            ['bread'] = {label='麵包',type='item',rate=1,max=500,min=5},
            ['water'] = {label='水',type='item',rate=1,max=500,min=5} --Don't forget add "," here
            --If you want add new prize please added in here  
        }
    },
    ['WeaponPool'] ={
        rate = 50,
        poolitem={
            ['WEAPON_ASSAULTRIFLE'] = {label='自動步槍',type='weapon',rate=1,max=500,min=5} --Don't forget add "," here
    --If you want add new prize please added in here 
        }
    },]]
    ['CarPool'] ={
        rate = 100,
        poolitem={
            ['buzzard2'] = {label='兀鷹直升機',type='aircraft',rate=100},
           --[[ ['F430SKom'] = {label='2007 Ferrari F430',type='car',rate=1},--Don't forget add "," here
            ['CX75'] = {label='Jaguar CX75 ',type='car',rate=1},
            ['570S2'] = {label='Mclaren 570S2',type='car',rate=1},
            ['BUGATTI'] = {label='bugatti  veyron',type='car',rate=1},
            ['F12M'] = {label='Ferrari F12M',type='car',rate=1},
            ['pista'] = {label='Ferrari 488 Pista ',type='car',rate=1},
            ['f812'] = {label='Ferrari F812 SuperFast',type='car',rate=1},
            ['SENNA'] = {label='McLaren Senna',type='car',rate=1},
            ['VULCAN'] = {label='Vulcan 火神',type='car',rate=1},
            ['aperta'] = {label='LaFerrari Aperta',type='car',rate=1},
            ['i8'] = {label='BMW I8',type='car',rate=1},]]--
            --If you want add new prize please added in here 
        }
    },

}

--and follew that rule
--[[
    'key' is the name in your 'item' database 
    ['key']={
        label='Enter the item name that you want to show for winner',
        type='The item type ex. item,car,cash...',
        rate='Enter how many chance can win this prize',
        max='If item type is 'cash' or 'item' ,then add this option and enter the maximum number of how many can win',
        min='If item type is 'cash' or 'item' ,then add this option and enter the minimum number of how many can win',
      
    }
]]--



