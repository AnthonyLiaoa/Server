table.insert(Jobs, {
  name = 'fisherman',
  grade = 0,
  label = '漁夫',
  BlipSprite = 68,
  BlipColor = 38,
  zone = {
    {
      pos = vec(-1917.7598876953, -1330.1520996094, 0.17638377845287),
      blip = '捕魚點',
      final = false,
      time = 1200,
      item = {
       {
        name = 'fish',
        max = 200,
        req = 'fishbait',
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 捕魚'
    },
    {
      pos = vec(-2352.28, -750.87, 1.32),
      blip = '捕海龜',
      final = false,
      time = 2000,
      item = {
       {
        name = 'turtle',
        max = 100,
        req = 'fish',
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 捕海龜'
    },
    {
      pos = vec(-2831.96, -991.4, 1.90),
      blip = '捕鯊',
      final = false,
      time = 2500,
      item = {
       {
        name = 'shark',
        max = 50,
        req = 'turtle',
        drop = 100
       }
      },
       hint  = '按 ~INPUT_PICKUP~ 捕鯊魚'
    },
    {
      pos = vec(-1012.64758300781, -1354.62634277344, 4.54292726516724),
      blip = '販售魚',
      final = true,
      time = 600,
      item = {
       { name = 'fish', price = 700 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售魚'
    },
    {
      pos = vec(221.44, -1523.57, 28.15),
      blip = '販售海龜',
      final = true,
      time = 800,
      item = {
       { name = 'turtle', price = 2500 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售海龜'
    },
    {
      pos = vec(-61.29, -1218.18, 27.7),
      blip = '販售鯊魚',
      final = true,
      time = 800,
      item = {
       { name = 'shark', price = 7000 }
     },
     hint  = '按 ~INPUT_PICKUP~ 出售鯊魚'
    },
  }
})
