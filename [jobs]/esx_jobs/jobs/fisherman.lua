Config.Jobs.fisherman = {
  BlipInfos = {
    Sprite = 68,
    Color = 38
  },
  Vehicles = {
    Truck = {
      Spawner = 1,
      Hash = "benson",
      Trailer = "none",
      HasCaution = true
    },
    Boat = {
      Spawner = 2,
      Hash = "marquis",
      Trailer = "none",
      HasCaution = false
    }
  },
  Zones = {
    CloakRoom = {
      Pos   = {x = -1603.9803466797, y = -1174.4775390625, z = 0.6737610340118},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Color = {r = 204, g = 204, b = 0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_fish_locker'),
      Type  = "cloakroom",
      Hint  = _U('cloak_change'),
      GPS = {x = -1603.9803466797, y = -1174.4775390625, z = 1.2737610340118}
    },

    FishingSpot = {
      Pos   = {x = -1917.7598876953, y = -1330.1520996094, z =0.17638377845287},
      Color = {r = 204, g = 204, b = 0},
      Size  = {x = 110.0, y = 110.0, z = 10.0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_fish_area'),
      Type  = "work",
      Item  = {
        {
          name   = _U('fm_fish'),
          db_name= "fish",
          time   = 2000,
          max    = 200,
          add    = 1,
          remove = 1,
          requires = "fishbait",
          requires_name = "fm_fishbait",
          drop   = 100
        }
      },
      Hint  = _U('fm_fish_button'),
      GPS = {x = -2352.28, y = -750.87, z = 1.32}
    },

    TurtleSpot = {
      Pos   = {x = -2352.28, y = -750.87, z = 1.32},
      Color = {r = 204, g = 204, b = 0},
      Size  = {x = 110.0, y = 110.0, z = 10.0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_turtle_area'),
      Type  = "work",
      Item  = {
        {
          name   = _U('fm_turtle'),
          db_name= "turtle",
          time   = 1800,
          max    = 100,
          add    = 1,
          remove = 1,
          requires = "fish",
          requires_name = "fm_fish",
          drop   = 100
        }
      },
      Hint  = _U('fm_turtle_button'),
      GPS = {x = -2831.96, y = -991.4, z = 1.90}
    },

    SharkSpot = {
      Pos   = {x = -2831.96, y = -991.4, z = 1.90},
      Color = {r = 204, g = 204, b = 0},
      Size  = {x = 110.0, y = 110.0, z = 10.0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_shark_area'),
      Type  = "work",
      Item  = {
        {
          name   = _U('fm_shark'),
          db_name= "shark",
          time   = 1800,
          max    = 50,
          add    = 1,
          remove = 1,
          requires = "turtle",
          requires_name = "fm_turtle",
          drop   = 100
        }
      },
      Hint  = _U('fm_shark_button'),
      GPS = {x = -1611.3, y = -1175.95, z = 0.42}
    },

    BoatSpawner = {
      Pos   = {x = -1611.3, y = -1175.95, z = 0.42},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Color = {r = 0, g = 255, b = 0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_spawnboat_title'),
      Type  = "vehspawner",
      Spawner = 2,
      Hint  = _U('fm_spawnboat'),
      Caution = 0,
      GPS = {x = -1645.71, y = -1180.49, z = 0.43}
    },

    BoatSpawnPoint = {
      Pos   = {x = -1645.71, y = -1180.49, z = 0.43},
      Size  = {x = 3.0, y = 3.0, z = 1.0},
      Marker= -1,
      Blip  = false,
      Name  = _U('fm_boat_title'),
      Type  = "vehspawnpt",
      Spawner = 2,
      GPS = 0,
      Heading = 270.1
    },

    BoatDeletePoint = {
      Pos   = {x = -1633.9219970703, y = -1192.5036621094, z = -0.43},
      Size  = {x = 10.0, y = 10.0, z = 1.0},
      Color = {r = 255, g = 0, b = 0},
      Marker= 1,
      Blip  = false,
      Name  = _U('fm_boat_return_title'),
      Type  = "vehdelete",
      Hint  = _U('fm_boat_return_button'),
      Spawner = 2,
      Caution = 0,
      GPS = {x = -1633.9219970703, y = -1192.5036621094, z = -0.098638080060482},
      Teleport = {x = -1603.9803466797, y = -1174.4775390625, z = 1.2737610340118}
    },


    VehicleSpawner = {
          Pos   = {x = -1601.13, y = -1182.24, z = 0.62}, 
          Size  = {x = 3.0, y = 3.0, z = 1.0},
          Color = {r = 0, g = 0, b = 255},
      Marker= 1,
      Blip  = false,
      Name  = _U('spawn_veh'),
      Type  = "vehspawner",
      Spawner = 1,
      Hint  = _U('spawn_veh_button'),
      Caution = 2000,
      GPS = {x = -1604.3591308594, y = -1183.8707275391, z = 0.94467669725418}
    },

    VehicleSpawnPoint = {
          Pos   = {x = -1591.16, y = -1177.18, z = 2.08},
          Size  = {x = 3.0, y = 3.0, z = 1.0},
      Marker= -1,
      Blip  = false,
      Name  = _U('service_vh'),
      Type  = "vehspawnpt",
      Spawner = 1,
      GPS = 0,
      Heading = 70.1
    },

    VehicleDeletePoint = {
          Pos   = {x = -1035.9, y = -1339.07, z = 4.46},
          Size  = {x = 5.0, y = 5.0, z = 1.0},
          Color = {r = 255, g = 0, b = 0},
      Marker= 1,
      Blip  = false,
      Name  = _U('return_vh'),
      Type  = "vehdelete",
      Hint  = _U('return_vh_button'),
      Spawner = 1,
      Caution = 2000,
      GPS = 0,
      Teleport = 0
    },

    Delivery = {
      Pos   = {x = -1012.64758300781, y = -1354.62634277344, z = 4.54292726516724},
      Color = {r = 204, g = 204, b = 0},
      Size  = {x = 5.0, y = 5.0, z = 3.0},
      Color = {r = 204, g = 204, b = 0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_delivery_point'),
      Type  = "delivery",
      Spawner = 2,
      Item  = {
        {
          name   = _U('delivery'),
          time   = 600,
          remove = 1,
          max    = 200, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
          price  = 800,
          requires = "fish",
          requires_name = _U('fm_fish'),
          drop   = 100
        }
      },
      Hint  = _U('fm_deliver_fish'),
      GPS = {x = 3867.44, y = 4463.62, z = 1.72386}
    }

    --[[Delivery = {
      Pos   = {x = -1036.33, y = -763.03, z = 56.99},
      Color = {r = 204, g = 204, b = 0},
      Size  = {x = 5.0, y = 5.0, z = 3.0},
      Color = {r = 204, g = 204, b = 0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_delivery_point1'),
      Type  = "delivery",
      Spawner = 2,
      Item  = {
        {
          name   = _U('delivery'),
          time   = 500,
          remove = 1,
          max    = 200, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
          price  = 7000,
          requires = "turtle",
          requires_name = _U('fm_turtle'),
          drop   = 100
        }
      },
      Hint  = _U('fm_deliver_turtle'),
      GPS = {x = -61.29, y = -1218.18, z = 27.7}
    }

    Delivery = {
      Pos   = {x = -61.29, y = -1218.18, z = 27.7},
      Color = {r = 204, g = 204, b = 0},
      Size  = {x = 5.0, y = 5.0, z = 3.0},
      Color = {r = 204, g = 204, b = 0},
      Marker= 1,
      Blip  = true,
      Name  = _U('fm_delivery_point2'),
      Type  = "delivery",
      Spawner = 2,
      Item  = {
        {
          name   = _U('delivery'),
          time   = 500,
          remove = 1,
          max    = 200, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
          price  = 25000,
          requires = "shark",
          requires_name = _U('fm_shark'),
          drop   = 100
        }
      },
      Hint  = _U('fm_deliver_shark'),
      GPS = {x = 3867.44, y = 4463.62, z = 1.72386}
    }--]]
  }
}
