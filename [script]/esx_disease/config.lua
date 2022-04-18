Config = {}

Config.Locale = 'en'

Config.secondiTosse = 2700    --seconds to cough
Config.secondiStomaco = 2700  --seconds to stomach disease
Config.secondiPelle = 2700    --seconds to skin disease

Config.MinSecTosse = 30
Config.MaxSecTosse = 60

Config.MinSecStomaco = 30
Config.MaxSecStomaco = 60

Config.secondiPelleMalata = 30

Config.milliSecondiTosse = Config.secondiTosse * 1000
Config.milliSecondiStomaco = Config.secondiStomaco * 1000
Config.milliSecondiPelle = Config.secondiPelle * 1000
Config.MinMillSecTosse = Config.MinSecTosse * 1000
Config.MaxMillSecTosse = Config.MaxSecTosse * 1000
Config.MinMillSecStomaco = Config.MinSecStomaco * 1000
Config.MaxMillSecStomaco = Config.MaxSecStomaco * 1000
Config.milliSecondiPelleMalata = Config.secondiPelleMalata * 1000