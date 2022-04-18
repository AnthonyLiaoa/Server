Jobs = {}
Config = {}

Config.DrawDistance = 1000
Config.JobCenter = { pos = vec(-551.63,-193.24,37.42), size = 2.0, label = '雙職業就業中心' }
Config.GradeUpChance = 50 -- 5% (50/1000)
Config.GradeUpMax = { -- set max grade
   ['miner'] = 0,
   ['textil'] = 0,
   ['fisherman'] = 0,
   ['lumberjack'] = 0,
   ['slaughterer'] = 0,
}

Config.UnemployedLabel = '待業中'
Config.Disable = {'country'}
Config.NewESX = true