table.insert(Jobs, {
  name = 'textil',
  grade = 0,
  label = '裁縫師',
  BlipSprite = 366,
  BlipColor = 4,
  zone = {
    {
      pos = vec(1978.9, 5171.7, 46.8),
      -- Size  = {x = 3.0, y = 3.0, z = 1.0},
      -- Color = {r = 204, g = 204, b = 0},
      -- Marker= 1,
      -- blip  = true,
      blip = '採集羊毛',
      final = false,
      time = 3000,
      item = {
       {
        name = 'whool',
        max = 500,
        req = false,
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 採集羊毛'
    },
    {
      pos = vec(715.6, -961.6, 29.45),
      blip = '服飾加工廠',
      final = false,
      time = 4000,
      item = {
        {
          name = 'fabric',
          max = 100,
          req = 'whool',
          drop = 100
        }
      },
      hint  = '按 ~INPUT_PICKUP~ 製作布料'
    },
    {
     pos = vec(712.9, -970.5, 29.45),
     blip = false,
     final = false,
     time = 4000,
     item = {
      {
       name = 'clothe',
       max = -1,
       req = 'fabric',
       drop = 100
      }
     },
     hint  = '按 ~INPUT_PICKUP~ 製作衣服'
    },
    {
     pos = vec(429.5, -807.3, 28.7),
     blip = '出售服裝',
     final = true,
     time = 3000,
     item = {
      { name = 'clothe', price = 2000 }
    },
    hint  = '按 ~INPUT_PICKUP~ 出售衣服'
   }
  }
})