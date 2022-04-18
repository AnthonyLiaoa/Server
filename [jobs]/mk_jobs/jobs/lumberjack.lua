table.insert(Jobs, {
  name = 'lumberjack',
  grade = 0,
  label = '伐木工',
  BlipSprite = 237,
  BlipColor = 4,
  zone = {
    {
      pos = vec(-534.3, 5373.7, 69.5),
      blip = '砍伐原木',
      final = false,
      time = 3000,
      item = {
       {
        name = 'wood',
        max = 60,
        req = false,
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 採集木頭'
    },
    {
      pos = vec(-552.2, 5326.9, 72.9),
      blip = '裁切木頭',
      final = false,
      time = 5000,
      item = {
        {
          name = 'cutted_wood',
          max = 60,
          req = 'wood',
          drop = 100
        }
      },
      hint  = '按 ~INPUT_PICKUP~ 切割木頭'
    },
    {
     pos = vec(-501.3, 5280.5, 79.7),
     blip = '包裝木板',
     final = false,
     time = 4000,
     item = {
      {
       name = 'packaged_plank',
       max = -1,
       req = 'cutted_wood',
       drop = 100
      }
     },
     hint  = '按 ~INPUT_PICKUP~ 包裝木板'
    },
    {
     pos = vec(1201.3, -1327.5, 34.6),
     blip = '出售木頭',
     final = true,
     time = 500,
     item = {
      { name = 'packaged_plank', price = 3000 }
    },
    hint  = '按 ~INPUT_PICKUP~ 出售木板'
   }
  }
})