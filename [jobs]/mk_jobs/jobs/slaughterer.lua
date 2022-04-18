table.insert(Jobs, {
  name = 'slaughterer',
  grade = 0,
  label = '屠夫',
  BlipSprite = 273,
  BlipColor = 35,
  zone = {
    {
      pos = vector3(-62.9, 6241.4, 30.1),
      -- Size  = {x = 3.0, y = 3.0, z = 1.0},
      -- Color = {r = 204, g = 204, b = 0},
      -- Marker= 1,
      -- blip  = true,
      blip = '屠宰場',
      final = false,
      time = 3000,
      item = {
       {
        label = '抓活雞',
        name = 'alive_chicken',
        max = 120,
        req = false,
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 抓雞'
    },
    {
      pos = vector3(-77.9, 6229.0, 30.1),
      blip = false,
      final = false,
      time = 5000,
      item = {
        {
          label = '加工屠宰雞',
          name = 'slaughtered_chicken',
          max = 120,
          req = 'alive_chicken',
          drop = 100
        }
      },
      hint  = '按 ~INPUT_PICKUP~ 屠宰雞'
    },
    {
     pos = vector3(-101.978, 6208.7, 30.1),
     blip = false,
     final = false,
     time = 5000,
     item = {
      {
       label = '製作包裝雞',
       name = 'packaged_chicken',
       max = 600,
       req = 'slaughtered_chicken',
       drop = 100
      }
     },
     hint  = '按 ~INPUT_PICKUP~ 包裝雞'
    },
    {
     pos = vector3(-596.1, -889.3, 24.65),
     blip = '出售包裝雞',
     final = true,
     time = 1000,
     item = {
      {
       label = '包裝雞',
       name = 'packaged_chicken',
       price = 2000
      }
    },
    hint  = '按 ~INPUT_PICKUP~ 運送包裝雞'
    }
  }
})