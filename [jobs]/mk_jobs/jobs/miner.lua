table.insert(Jobs, {
  name = 'miner',
  grade = 0,
  label = '礦工',
  BlipSprite = 318,
  BlipColor = 5,
  zone = {
    {
      pos = vec(2962.4, 2746.2, 42.5),
      blip = '採集石塊',
      final = false,
      time = 3000,
      item = {
       {
        name = 'stone',
        max = 100,
        req = false,
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 採集石塊'
    },
    {
      pos = vec(289.244, 2862.9, 42.6424),
      blip = '清洗石塊',
      final = false,
      time = 3000,
      item = {
        {
          name = 'washed_stone',
          max = 100,
          req = 'stone',
          drop = 100
        }
      },
      hint  = '按 ~INPUT_PICKUP~ 清洗石塊'
    },
    {
     pos = vec(1109.14, -2007.87, 30.0188),
     blip = '冶煉石塊',
     final = false,
     time = 4000,
     item = {
      {
       name = 'copper',
       max = 5000,
       req = 'washed_stone',
       drop = 50
      },
      {
       name = 'iron',
       max = 5000,
       req = 'washed_stone',
       drop = 25
      },
      {
       name = 'gold',
       max = 1000,
       req = 'washed_stone',
       drop = 15
      },
      {
       name = 'diamond',
       max = 100,
       req = 'washed_stone',
       drop = 10
      }
     },
     hint  = '按 ~INPUT_PICKUP~ 冶煉石塊'
    },
    {
      pos = vec(-167.481, -2659.16, 5.1),
      blip = '銅器工廠',
      final = true,
      time = 4000,
      item = {
       { name = 'copper', price = 500 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售銅'
    },
    {
      pos = vec(-148.7, -1040.3, 26.3),
      blip = '鐵器工廠',
      final = true,
      time = 2000,
      item = {
       { name = 'iron', price = 1500 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售鐵'
    },
    {
      pos = vec(261.4, 207.3, 109.3),
      blip = '黃金工廠',
      final = true,
      time = 2000,
      item = {
       { name = 'gold', price = 2000 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售黃金'
    },
    {
      pos = vec(-632.0, -229.8, 37.1),
      blip = '鑽石工廠',
      final = true,
      time = 2000,
      item = {
       { name = 'diamond', price = 3000 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售鑽石'
    }
  }
})

table.insert(Jobs, {
  name = 'miner',
  grade = 1,
  label = '資深礦工',
  zone = {}
})