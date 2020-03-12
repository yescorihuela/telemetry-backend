# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.connection.execute("TRUNCATE vehicle_devices RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE drivers RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE devices RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE vehicles RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE routes RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE route_coordinates RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE trips RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE trip_statuses RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE trip_directions RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE geo_fences RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE gps_measurements RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE events RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE event_routes RESTART IDENTITY CASCADE")


license_plates = 'ABCDEF'.chars.permutation.to_a.map(&:join).sort[0...6]

Driver.create!([
  {
    first_name: 'Benjamin',
    last_name: 'Silva',
    identification_code: '1111111111',
    phone: '1234567890'
  },
  {
    first_name: 'Macarena',
    last_name: 'Larrain',
    identification_code: '2222222222',
    phone: '2345678901'
  },
  {
    first_name: 'Jorge',
    last_name: 'Rodriguez',
    identification_code: '3333333333',
    phone: '3456789012'
  },
  {
    first_name: 'Yrvin',
    last_name: 'Escorihuela',
    identification_code: '4444444444',
    phone: '4567890123'
  },
  {
    first_name: 'Juan',
    last_name: 'Mena',
    identification_code: '5555555555',
    phone: '5678901234'
  }
])


Device.create!([
  {
    device_serial_number: 'd131dd02c5e6eec4',
    adquisition_date: (Time.now() - 3.month)
  },
  {
    device_serial_number: '4d131dd02c5e6eec',
    adquisition_date: (Time.now() - 3.month)
  },
  {
    device_serial_number: 'ec4d131dd02c5e6e',
    adquisition_date: (Time.now() - 3.month)
  },
  {
    device_serial_number: '6eec4d131dd02c5e',
    adquisition_date: (Time.now() - 3.month)
  },
  {
    device_serial_number: '5e6eec4d131dd02c',
    adquisition_date: (Time.now() - 3.month)
  }
])

GeoFence.create!([
  {:description => 'Terminal Estación Central', :location => 'POINT (-70.69075584411621 -33.45382270754665)'},
  {:description => 'Terminal Peor es Nada', :location => 'POINT (-71.04652404785156 -34.791074253715365)'}
])

Vehicle.create!([
  {
    license_plate: license_plates.pop(),
    driver_id: 1,
    total_seats: (rand() * 100).to_i
  },
  {
    license_plate: license_plates.pop(),
    driver_id: 2,
    total_seats: (rand() * 100).to_i
  },
  {
    license_plate: license_plates.pop(),
    driver_id: 3,
    total_seats: (rand() * 100).to_i
  },
  {
    license_plate: license_plates.pop(),
    driver_id: 4,
    total_seats: (rand() * 100).to_i
  },
  {
    license_plate: license_plates.pop(),
    driver_id: 5,
    total_seats: (rand() * 100).to_i
  }
])


VehicleDevice.create!([
  {
    vehicle_id: 1,
    device_id: 1
  },
  {
    vehicle_id: 2,
    device_id: 2
  },
  {
    vehicle_id: 3,
    device_id: 3
  },
  {
    vehicle_id: 4,
    device_id: 4
  },
  {
    vehicle_id: 5,
    device_id: 5
  }
])


route = Route.create!([
  {
    name: 'Santiago <-> Peor es nada',
    direction: 'Ida y Vuelta'
  }
])

TripDirection.create!([
  {
    departure: 'Terminal Estacion Central - Santiago',
    arrival: 'Terminal Peor Es Nada - Peor Es Nada',
    direction: 'GOING_TO'
  },
  {
    departure: 'Terminal Peor Es Nada - Peor Es Nada',
    arrival: 'Terminal Estacion Central - Santiago',
    direction: 'RETURN_FROM'
  }  
])

TripStatus.create!([
  {
    :description => 'En ruta'
  },
  {
    :description => 'Incompleto'
  },
  {
    :description => 'Finalizado'
  }
])

Event.create!([
  {
    :description => 'Vehículo sale de ruta'
  },
  {
    :description => 'Vehículo entra a la ruta de nuevo'
  },
  {
    :description => 'Vehículo detenido'
  }
])


ActiveRecord::Base.connection.execute("INSERT INTO route_coordinates(route_id, route_polygon, created_at, updated_at)
  VALUES(
    #{route.first.id},
    ST_GeomFromGeoJSON
    (
      '{
          \"type\": \"Polygon\",
          \"coordinates\": [
            [
              [
                -70.69127082824706,
                -33.45403754073398
              ],
              [
                -70.6915283203125,
                -33.456364866148014
              ],
              [
                -70.69032669067383,
                -33.45965881995727
              ],
              [
                -70.68998336791992,
                -33.465243933879066
              ],
              [
                -70.68998336791992,
                -33.47383571415577
              ],
              [
                -70.68758010864258,
                -33.477988102605764
              ],
              [
                -70.68895339965819,
                -33.4821402920467
              ],
              [
                -70.69341659545898,
                -33.492018839206224
              ],
              [
                -70.69839477539062,
                -33.501896259517494
              ],
              [
                -70.70783615112305,
                -33.521504608636306
              ],
              [
                -70.70852279663086,
                -33.52651332821698
              ],
              [
                -70.71950912475586,
                -33.60604149572663
              ],
              [
                -70.71796417236328,
                -33.61376155108331
              ],
              [
                -70.71487426757812,
                -33.637203406257235
              ],
              [
                -70.71367263793945,
                -33.64463485765219
              ],
              [
                -70.718994140625,
                -33.657638354109665
              ],
              [
                -70.72225570678711,
                -33.66506804140365
              ],
              [
                -70.72603225708008,
                -33.67463996177376
              ],
              [
                -70.72860717773438,
                -33.68363945239179
              ],
              [
                -70.7274055480957,
                -33.68735325327766
              ],
              [
                -70.72380065917969,
                -33.69449472706071
              ],
              [
                -70.72431564331055,
                -33.701064358790276
              ],
              [
                -70.7280921936035,
                -33.71548722249545
              ],
              [
                -70.73272705078125,
                -33.72505352836076
              ],
              [
                -70.73993682861327,
                -33.73918686460779
              ],
              [
                -70.75538635253905,
                -33.8300698997189
              ],
              [
                -70.74972152709961,
                -33.859297450398245
              ],
              [
                -70.74216842651367,
                -33.86713728719762
              ],
              [
                -70.73598861694335,
                -33.89948681391328
              ],
              [
                -70.73616027832031,
                -33.90333373867912
              ],
              [
                -70.72637557983398,
                -33.91387627229514
              ],
              [
                -70.72843551635741,
                -33.920429081889196
              ],
              [
                -70.72586059570312,
                -33.92313553009509
              ],
              [
                -70.71882247924805,
                -33.9278359989436
              ],
              [
                -70.71418762207031,
                -33.93823308422682
              ],
              [
                -70.71418762207031,
                -33.94364476321219
              ],
              [
                -70.71624755859374,
                -33.9484865001747
              ],
              [
                -70.71676254272461,
                -33.953755136273514
              ],
              [
                -70.70320129394531,
                -33.986214127142
              ],
              [
                -70.7080078125,
                -34.03445260967644
              ],
              [
                -70.71161270141602,
                -34.036159664315605
              ],
              [
                -70.72036743164062,
                -34.039289175269076
              ],
              [
                -70.73341369628906,
                -34.045263375550654
              ],
              [
                -70.75109481811523,
                -34.05265942137597
              ],
              [
                -70.75504302978516,
                -34.05678385900245
              ],
              [
                -70.77718734741211,
                -34.08664448743108
              ],
              [
                -70.78079223632812,
                -34.094605543881926
              ],
              [
                -70.78182220458984,
                -34.10910411569082
              ],
              [
                -70.78817367553711,
                -34.139088373438476
              ],
              [
                -70.79280853271484,
                -34.15230080698923
              ],
              [
                -70.79778671264648,
                -34.16110794795231
              ],
              [
                -70.79452514648436,
                -34.172612667476244
              ],
              [
                -70.78834533691406,
                -34.19291964055571
              ],
              [
                -70.7874870300293,
                -34.20896295162417
              ],
              [
                -70.79246520996094,
                -34.218190021599234
              ],
              [
                -70.79504013061523,
                -34.2234419024609
              ],
              [
                -70.79538345336914,
                -34.22798380564679
              ],
              [
                -70.79504013061523,
                -34.23493812022693
              ],
              [
                -70.79847335815428,
                -34.24132422972855
              ],
              [
                -70.80997467041014,
                -34.26204027139666
              ],
              [
                -70.82405090332031,
                -34.28587159652361
              ],
              [
                -70.83314895629883,
                -34.32429955337337
              ],
              [
                -70.84156036376952,
                -34.342585649404036
              ],
              [
                -70.87778091430664,
                -34.40648477017429
              ],
              [
                -70.88396072387694,
                -34.41838077212271
              ],
              [
                -70.88567733764648,
                -34.422204127692474
              ],
              [
                -70.88739395141602,
                -34.42602730843172
              ],
              [
                -70.89031219482422,
                -34.435796864855725
              ],
              [
                -70.89305877685547,
                -34.44528215290128
              ],
              [
                -70.90112686157227,
                -34.47061816265395
              ],
              [
                -70.90215682983398,
                -34.475995767558636
              ],
              [
                -70.90490341186523,
                -34.4793919710481
              ],
              [
                -70.91005325317383,
                -34.48420302267625
              ],
              [
                -70.91348648071289,
                -34.488589327926576
              ],
              [
                -70.92584609985352,
                -34.50669808103445
              ],
              [
                -70.93846321105957,
                -34.52819711604961
              ],
              [
                -70.94301223754883,
                -34.53427807308364
              ],
              [
                -70.95580101013184,
                -34.54502472496434
              ],
              [
                -70.96283912658691,
                -34.55117514478884
              ],
              [
                -70.96524238586426,
                -34.5532251837122
              ],
              [
                -70.97331047058105,
                -34.56955300035297
              ],
              [
                -70.97356796264648,
                -34.57195595815898
              ],
              [
                -70.96661567687988,
                -34.58552429876527
              ],
              [
                -70.98464012145996,
                -34.60516619968573
              ],
              [
                -70.9892749786377,
                -34.60996998643594
              ],
              [
                -70.99167823791504,
                -34.62565100237967
              ],
              [
                -70.99382400512695,
                -34.65269732107384
              ],
              [
                -70.99511146545409,
                -34.66173433297161
              ],
              [
                -71.00197792053223,
                -34.66914677104502
              ],
              [
                -71.01356506347656,
                -34.68538122266006
              ],
              [
                -71.02729797363281,
                -34.70422331140433
              ],
              [
                -71.03785514831542,
                -34.725177448317595
              ],
              [
                -71.04137420654297,
                -34.73498244258411
              ],
              [
                -71.0430908203125,
                -34.73702794221469
              ],
              [
                -71.04249000549316,
                -34.749652491484056
              ],
              [
                -71.04695320129395,
                -34.78060620575734
              ],
              [
                -71.04806900024413,
                -34.792025828558856
              ],
              [
                -71.04334831237793,
                -34.792025828558856
              ],
              [
                -71.0364818572998,
                -34.770242587263915
              ],
              [
                -71.03828430175781,
                -34.76826841711741
              ],
              [
                -71.04043006896973,
                -34.764178914455115
              ],
              [
                -71.04111671447754,
                -34.76051229153916
              ],
              [
                -71.04060173034668,
                -34.755223606281206
              ],
              [
                -71.03957176208496,
                -34.739355518133564
              ],
              [
                -71.03373527526855,
                -34.72538907917974
              ],
              [
                -71.03038787841797,
                -34.716852871337736
              ],
              [
                -71.02455139160156,
                -34.704928924267776
              ],
              [
                -70.99227905273438,
                -34.66314627706533
              ],
              [
                -70.98978996276855,
                -34.64457729038275
              ],
              [
                -70.98695755004883,
                -34.61110024880987
              ],
              [
                -70.97657203674316,
                -34.60000888400419
              ],
              [
                -70.96429824829102,
                -34.58686687870011
              ],
              [
                -70.96481323242188,
                -34.5844643519156
              ],
              [
                -70.97116470336914,
                -34.57124921307213
              ],
              [
                -70.96232414245605,
                -34.55407346090554
              ],
              [
                -70.94696044921875,
                -34.54141909511229
              ],
              [
                -70.93923568725586,
                -34.53328818010773
              ],
              [
                -70.90816497802734,
                -34.48653769773275
              ],
              [
                -70.90335845947264,
                -34.482575786265826
              ],
              [
                -70.90078353881836,
                -34.47769388658349
              ],
              [
                -70.89503288269043,
                -34.46000345187639
              ],
              [
                -70.89091300964355,
                -34.447688696497444
              ],
              [
                -70.88507652282715,
                -34.426947677683195
              ],
              [
                -70.8779525756836,
                -34.414203202296996
              ],
              [
                -70.8511734008789,
                -34.365969031253414
              ],
              [
                -70.83889961242676,
                -34.344782547719745
              ],
              [
                -70.83237648010254,
                -34.33025360365624
              ],
              [
                -70.82842826843262,
                -34.318557747621995
              ],
              [
                -70.82611083984375,
                -34.30948347597914
              ],
              [
                -70.82173347473145,
                -34.29083560560794
              ],
              [
                -70.82001686096191,
                -34.28565884672402
              ],
              [
                -70.80928802490234,
                -34.26679289029248
              ],
              [
                -70.79212188720703,
                -34.23735070741752
              ],
              [
                -70.79109191894531,
                -34.2345833221622
              ],
              [
                -70.79160690307617,
                -34.232170655673485
              ],
              [
                -70.79280853271484,
                -34.229048278776865
              ],
              [
                -70.79195022583008,
                -34.224861273516204
              ],
              [
                -70.78765869140625,
                -34.21669956333592
              ],
              [
                -70.78439712524414,
                -34.209743742827605
              ],
              [
                -70.78474044799805,
                -34.19937992500726
              ],
              [
                -70.7860279083252,
                -34.19220968900378
              ],
              [
                -70.7915210723877,
                -34.173890872853235
              ],
              [
                -70.79340934753418,
                -34.16281244978297
              ],
              [
                -70.79246520996094,
                -34.158764201748305
              ],
              [
                -70.79126358032227,
                -34.155070893887775
              ],
              [
                -70.78705787658691,
                -34.1473996614469
              ],
              [
                -70.78293800354004,
                -34.129710554196194
              ],
              [
                -70.7805347442627,
                -34.122818614696
              ],
              [
                -70.77959060668945,
                -34.110099024622805
              ],
              [
                -70.77890396118164,
                -34.10064691736161
              ],
              [
                -70.77409744262695,
                -34.086786655718434
              ],
              [
                -70.77280998229979,
                -34.08444084845121
              ],
              [
                -70.76242446899414,
                -34.073848364072994
              ],
              [
                -70.751953125,
                -34.0580638160832
              ],
              [
                -70.74869155883789,
                -34.05493499798558
              ],
              [
                -70.73813438415527,
                -34.051521610164926
              ],
              [
                -70.72792053222656,
                -34.04533449444773
              ],
              [
                -70.70817947387695,
                -34.03815118464512
              ],
              [
                -70.70500373840332,
                -34.035235013983424
              ],
              [
                -70.70019721984863,
                -33.98735281410265
              ],
              [
                -70.70483207702637,
                -33.97468406245863
              ],
              [
                -70.71281433105469,
                -33.95446708910659
              ],
              [
                -70.71307182312012,
                -33.95318556971814
              ],
              [
                -70.71126937866211,
                -33.94620807002933
              ],
              [
                -70.71118354797363,
                -33.93915879054708
              ],
              [
                -70.71702003479004,
                -33.92577067336483
              ],
              [
                -70.71830749511719,
                -33.925129700071984
              ],
              [
                -70.72311401367188,
                -33.92185353903076
              ],
              [
                -70.72440147399902,
                -33.919645620309716
              ],
              [
                -70.72371482849121,
                -33.91530083898639
              ],
              [
                -70.72474479675293,
                -33.91359135609922
              ],
              [
                -70.73427200317383,
                -33.90333373867912
              ],
              [
                -70.73427200317383,
                -33.90183773300638
              ],
              [
                -70.73332786560059,
                -33.900769141454255
              ],
              [
                -70.73461532592773,
                -33.89136495832256
              ],
              [
                -70.73461532592773,
                -33.88723248931143
              ],
              [
                -70.74122428894043,
                -33.86528429982857
              ],
              [
                -70.74482917785645,
                -33.862362199571514
              ],
              [
                -70.74671745300293,
                -33.85915490124807
              ],
              [
                -70.74774742126465,
                -33.85352401948898
              ],
              [
                -70.75255393981934,
                -33.83377736215669
              ],
              [
                -70.75263977050781,
                -33.83206624562714
              ],
              [
                -70.7453441619873,
                -33.78688751711602
              ],
              [
                -70.74113845825195,
                -33.75934782128588
              ],
              [
                -70.73740482330322,
                -33.74114964385425
              ],
              [
                -70.73238372802733,
                -33.730746402111755
              ],
              [
                -70.72819948196411,
                -33.72255496923923
              ],
              [
                -70.72656869888306,
                -33.71916395124449
              ],
              [
                -70.72517395019531,
                -33.71421996396508
              ],
              [
                -70.72262048721313,
                -33.703688500617446
              ],
              [
                -70.72150468826294,
                -33.698333023999545
              ],
              [
                -70.72150468826294,
                -33.69679772579948
              ],
              [
                -70.7220196723938,
                -33.69463755048318
              ],
              [
                -70.7250452041626,
                -33.6870140185096
              ],
              [
                -70.72596788406372,
                -33.684442932531184
              ],
              [
                -70.72611808776854,
                -33.683103794793354
              ],
              [
                -70.72601079940796,
                -33.6811575440916
              ],
              [
                -70.72571039199829,
                -33.67997905894747
              ],
              [
                -70.72062492370605,
                -33.66842547804783
              ],
              [
                -70.7164192199707,
                -33.65849565846378
              ],
              [
                -70.71219205856323,
                -33.649100565554654
              ],
              [
                -70.71116209030151,
                -33.64524220753749
              ],
              [
                -70.71171998977661,
                -33.64175881913097
              ],
              [
                -70.71244955062866,
                -33.63622083463069
              ],
              [
                -70.71442365646362,
                -33.62305329328578
              ],
              [
                -70.71646213531494,
                -33.60983012780232
              ],
              [
                -70.7164192199707,
                -33.60362883664746
              ],
              [
                -70.71292161941528,
                -33.576530933592295
              ],
              [
                -70.70972442626953,
                -33.557560914092136
              ],
              [
                -70.70918798446655,
                -33.553859397107225
              ],
              [
                -70.7084584236145,
                -33.54887014500084
              ],
              [
                -70.7080292701721,
                -33.541752361991165
              ],
              [
                -70.7076644897461,
                -33.53747783368835
              ],
              [
                -70.70607662200926,
                -33.531468097505616
              ],
              [
                -70.70534706115723,
                -33.52411633432463
              ],
              [
                -70.70313692092896,
                -33.51876757859614
              ],
              [
                -70.6953477859497,
                -33.50277300504959
              ],
              [
                -70.69073438644409,
                -33.49311042111114
              ],
              [
                -70.68923234939575,
                -33.48926298104321
              ],
              [
                -70.68854570388794,
                -33.487670269778405
              ],
              [
                -70.68528413772583,
                -33.48015370899832
              ],
              [
                -70.68509101867676,
                -33.479384119538814
              ],
              [
                -70.68517684936523,
                -33.47856083022268
              ],
              [
                -70.68534851074217,
                -33.478023898192745
              ],
              [
                -70.68556308746338,
                -33.477039514161845
              ],
              [
                -70.68588495254517,
                -33.47632359147803
              ],
              [
                -70.68633556365965,
                -33.475715052545574
              ],
              [
                -70.68706512451172,
                -33.47485593148233
              ],
              [
                -70.68783760070801,
                -33.472725990442406
              ],
              [
                -70.68788051605225,
                -33.47086448649368
              ],
              [
                -70.68783760070801,
                -33.46642535417392
              ],
              [
                -70.68822383880615,
                -33.46094772433871
              ],
              [
                -70.68903923034668,
                -33.45858471833499
              ],
              [
                -70.6895112991333,
                -33.45700934521848
              ],
              [
                -70.69045543670654,
                -33.45378690196369
              ],
              [
                -70.69127082824706,
                -33.45403754073398
              ]
            ]
          ]
        }'
    ),
    '#{Time.now().to_s}',
    '#{Time.now().to_s}'
  )
")
