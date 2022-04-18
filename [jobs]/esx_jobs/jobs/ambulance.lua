Config.Jobs.ambulance = {
  BlipInfos = {
    Sprite = 51,
    Color = 82
  },
  Vehicles = {},
  Zones = {

    First = {
      Pos   = {x = -445.76, y = -325.31, z = 34.55},
      Size  = {x = 2.0, y = 2.0, z = 1.0},
      Color = {r = 4, g = 189, b = 27},
      Marker= 1,
      Blip  = true,
      Name  = '【👨‍⚕️1】研發藥物配方',
      Type  = "work",
      Item  = {
        {
          name   = '藥物配方',
          db_name= 'ems_work1',
          time   = 30000,
          max    = 5,
          add    = 1,
          remove = 1,
          requires = "nothing",
          requires_name = "Nothing",
          drop   = 100
        }
      },
      Hint  = '按 ~INPUT_PICKUP~ 研發~s~藥物配方'
    },

    Second = {
      Pos   = {x = -501.41, y = -238.53, z = 35.22},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Color = {r = 4, g = 189, b = 27},
      Marker= 1,
      Blip  = true,
      Name  = '【👨‍⚕️2】採集藥材',
      Type  = "work",
      Item  = {
        {
          name   = '藥材',
          db_name= "ems_work2",
          time   = 30000,
          max    = 40,
          add    = 8,
          remove = 1,
          requires = "ems_work1",
          requires_name = '藥物配方',
          drop   = 100
        }
      },
      Hint  = '按 ~INPUT_PICKUP~ 採集~s~藥材'
    },

    Packaging = {
      Pos   = {x = -507.22, y = -318.43, z = 42.32},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Color = {r = 4, g = 189, b = 27},
      Marker= 1,
      Blip  = true,
      Name  = '【👨‍⚕️3】製作藥劑',
      Type  = "work",
      Item  = {
        {
          name   = '藥劑',
          db_name= "ems_work3",
          time   = 5000,
          max    = 5000,
          add    = 10,
          remove = 1,
          requires = "ems_work2",
          requires_name = '藥材',
          drop   = 100
        }
      },
      Hint  = '按 ~INPUT_PICKUP~ 製作~s~藥劑'
    },

    Delivery = {
      Pos   = {x = -488.13, y = -340.65, z = 41.32},
      Color = {r = 4, g = 189, b = 27},
      Size  = {x = 5.0, y = 5.0, z = 1.0},
      Marker= 1,
      Blip  = true,
      Name  = '【👨‍⚕️4】販售藥劑',
      Type  = "delivery",
      Spawner = 1,
      Item  = {
        {
          name   = _U('delivery'),
          time   = 1000,
          remove = 1,
          max    = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
          price  = 87,
          requires = "ems_work3",
          requires_name = '藥劑',
          drop   = 100
        }
      },
      Hint  = '按 ~INPUT_PICKUP~ 販售~s~藥劑'
    }
  }
}
