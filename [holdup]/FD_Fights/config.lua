Config = {}

Config.SharedObject = 'esx:getSharedObject'

Config.MenuName = '野戰選單'

Config.MenuCommand = 'yz'

Config.MenuButton = 'F4'

Config.AcceptName = '接受野戰'

Config.AcceptCommand = 'rf'

Config.AcceptButton = 'Y'

Config.FightList = {
    --[[[1] = {
        Name = '血狼社',
        Job = 'grove',
    },]]--
    [1] = {
        Name = '稻川集團',
        Job = 'mafia',
    },
    [2] = {
        Name = '健合會',
        Job = 'thelostmc',
    },
    [3] = {
        Name = '警政署',
        Job = 'police',
    },
    --[[[5] = {
        Name = '醫護局',
        Job = 'ambulance',
    },]]--
    [4] = {
        Name = '車業',
        Job = 'mechanic',
    },
    --[[[6] = {
        Name = '涼山特勤部隊',
        Job = 'country'
    },]]--
}

Config.Grade ={
    ['mafia'] = 1,
    ['thelostmc'] = 1,
    ['grove'] = 1,
    ['police'] = 1,
    --['offpolice'] = 3,
    --['ambulance'] = 2,
    --['offambulance'] = 2,
    ['mechanic'] = 1,
    ['country'] = 1,
    --['offmechanic'] = 3,
}
