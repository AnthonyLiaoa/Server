Config = {}

Config.SharedObject = 'esx:getSharedObject'

Config.CoolDown = 1

Config.Webhook = 'https://discord.com/api/webhooks/883765394156974090/-yCSr8_XpHqi4AHXAn_bbg05AgnzFCxKLXvj5m4skSamO7yb1QlnAtAi4hv6ZRtQ9mLO'

Config.BlipSprite = 303

Config.BlipColor = 79

Config.RobbingMsg = '目前 %s 發生搶劫民眾請勿靠近，否則以共犯論一律擊斃。' -- EX. 目前 三號商店 發生搶劫民眾請勿靠近，否則以共犯論一律擊斃。

Config.RobMsg = '搶 %s %s' -- EX. 搶 3 [3 品修] [9 歪比] [1 Benson]

Config.PoliceMsg = '警 %s %s' -- EX. 警 2 [9 品修] [31 歪比] [1 Benson]

Config.PWin = '結束, 警方獲勝'

Config.RWin = '結束, 搶方獲勝'

Config.PoliceButton = 168 -- 警察打名單按鍵

Config.Stores = {
    [1] = {
        Label = '1號商店',
        Rewards = {
            
            [1] = {
                Type = 'Money',
                Min = 1800000,
                Max = 1800000,
            },

        },
        MaxR = 2,
        MinR = 2,
        Cops = 2,
        EMS = 0,
        Pos = vector3(1396.21,3611.28,33.98),
        Cdist = 20.0,
    },
    

    [2] = {
        Label = '2號商店',
        Rewards = {
            
            [1] = {
                Type = 'Money',
                Min = 800000,
                Max = 800000,
            },

        },
        MaxR = 1,
        MinR = 1,
        Cops = 1,
        EMS = 0,
        Pos = vector3(2550.15,385.37,107.62),
        Cdist = 20.0,
    },
    
    [3] = {
        Label = '3號商店',
        Rewards = {
            
            [1] = {
                Type = 'Money',
                Min = 1500000,
                Max = 1500000,
            },

        },
        MaxR = 3,
        MinR = 2,
        Cops = 2,
        EMS = 0,
        Pos = vector3(-708.29,-905.99,18.22),
        Cdist = 20.0,
    },

    [4] = {
        Label = '太平洋銀行',
        Rewards = {
            
            [1] = {
                Type = 'Money',
                Min = 15000000,
                Max = 15000000,
            },

        },
        MaxR = 6,
        MinR = 2,
        Cops = 1,
        EMS = 0,
        Pos = vector3(261.49,223.06,105.28),
        Cdist = 20.0,
    },

    [5] = {
        Label = '4號商店',
        Rewards = {
            
            [1] = {
                Type = 'Money',
                Min = 1500000,
                Max = 1500000,
            },

        },
        MaxR = 3,
        MinR = 2,
        Cops = 2,
        EMS = 0,
        Pos = vector3(1126.83,-982.6,44.42),
        Cdist = 20.0,
    },

    [6] = {
        Label = '珠寶店',
        Rewards = {

            [1] = {
                Type = 'Item',
                Label = '珠寶',
                Item = 'jewels',
                Min = 200,
                Max = 200,
            },

        },
        MaxR = 4,
        MinR = 1,
        Cops = 1,
        EMS = 0,
        Pos = vector3(-631.79, -229.95, 37.06),
        Cdist = 20.0,
    },
}
