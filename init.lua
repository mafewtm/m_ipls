local michael = require 'data.gtav.michael'
local franklin = require 'data.gtav.franklin'
local trevor = require 'data.gtav.trevor'
local simeon = require 'data.gtav.simeon'
local franklinsAunt = require 'data.gtav.franklinsAunt'
local floyd = require 'data.gtav.floyd'
local bahamaMamas = require 'data.gtav.bahamaMamas'
local pillboxHospital = require 'data.gtav.pillboxHospital'
local zancudoGates = require 'data.gtav.zancudoGates'
local ammunations = require 'data.gtav.ammunations'
local lestersFactory = require 'data.gtav.lestersFactory'
local stripClub = require 'data.gtav.stripClub'
local cargoShip = require 'data.gtav.cargoShip'
local graffiti = require 'data.gtav.graffiti'
local ufos = require 'data.gtav.ufos'
local redCarpet = require 'data.gtav.redCarpet'
local northYankton = require 'data.gtav.northYankton'

local highEndApartments = require 'data.gtav.highEndApts'
local highEndHouses = require 'data.gtav.highEndHouses'
local midEndHouse = require 'data.gtav.midEndHouse'
local lowEndHouse = require 'data.gtav.lowEndHouse'

CreateThread(function()

    ---@Singleplayer
    michael:loadDefault() -- -802.311, 175.056, 72.8446
    franklin:loadDefault()
    trevor:loadDefault() -- 1985.48132, 3828.76757, 32.5
    simeon:loadDefault() -- -47.16170 -1115.3327 26.5
    franklinsAunt:loadDefault() -- -9.96562, -1438.54, 31.1015
    floyd:loadDefault() -- -1150.703, -1520.713, 10.633
    zancudoGates:loadDefault() -- -1600.30100000, 2806.73100000, 18.79683000
    pillboxHospital:loadDefault() -- 307.1680, -590.807, 43.280
    bahamaMamas:enable(true) -- -1388.0013, -618.41967, 30.819599

    -- Other
    ammunations:loadDefault()
    lestersFactory:loadDefault()
    stripClub:loadDefault()
    cargoShip:loadDefault()
    graffiti:enable(true)
    redCarpet:enable(false) -- 300.5927, 199.7589, 104.3776
    northYankton:enable(false) -- 3217.697, -4834.826, 111.8152

    -- UFO
    ufos.hippie:enable(false) -- 2490.47729, 3774.84351, 2414.035
    ufos.chiliad:enable(false) -- 501.52880000, 5593.86500000, 796.23250000
    ufos.zancudo:enable(false) -- -2051.99463, 3237.05835, 1456.97021

    ---@Online
    highEndApartments:loadDefault()
    highEndHouses:loadDefault()
    midEndHouse:loadDefault() -- 347.2686 -999.2955 -99.19622
    lowEndHouse:loadDefault() -- 261.4586 -998.8196 -99.00863

    -- ---@HighLife
    -- HLApartment1.LoadDefault() -- -1468.14 -541.815 73.4442 (Dell Perro Heights, Apt 4)
    -- HLApartment2.LoadDefault() -- -915.811 -379.432 113.6748 (Richard Majestic, Apt 2)
    -- HLApartment3.LoadDefault() -- -614.86 40.6783 97.60007 (Tinsel Towers, Apt 42)
    -- HLApartment4.LoadDefault() -- -773.407 341.766 211.397 (EclipseTowers, Apt 3)
    -- HLApartment5.LoadDefault() -- -18.07856 -583.6725 79.46569 (4 Integrity Way, Apt 28)
    -- HLApartment6.LoadDefault() -- -609.56690000 51.28212000 -183.98080

    -- ---@Heists
    -- HeistCarrier.Enable(true) -- 3082.3117, -4717.1191, 15.2622
    -- HeistYacht.LoadDefault() -- -2043.974,-1031.582, 11.981

    -- ---@ExecutivesAndOtherCriminals
    -- ExecApartment1.LoadDefault() -- -787.7805 334.9232 215.8384 (EclipseTowers, Penthouse Suite 1)
    -- ExecApartment2.LoadDefault() -- -773.2258 322.8252 194.8862 (EclipseTowers, Penthouse Suite 2)
    -- ExecApartment3.LoadDefault() -- -787.7805 334.9232 186.1134 (EclipseTowers, Penthouse Suite 3)

    -- ---@FinanceAndFelony
    -- FinanceOffice1.LoadDefault() -- -141.1987, -620.913, 168.8205 (Arcadius Business Centre)
    -- FinanceOffice2.LoadDefault() -- -75.8466, -826.9893, 243.3859 (Maze Bank Building)
    -- FinanceOffice3.LoadDefault() -- -1579.756, -565.0661, 108.523 (Lom Bank)
    -- FinanceOffice4.LoadDefault() -- -1392.667, -480.4736, 72.04217 (Maze Bank West)

    -- ---@Bikers
    -- BikerCocaine.LoadDefault() -- Cocaine lockup: 1093.6, -3196.6, -38.99841
    -- BikerCounterfeit.LoadDefault() -- Counterfeit cash factory: 1121.897, -3195.338, -40.4025
    -- BikerDocumentForgery.LoadDefault() -- Document forgery: 1165, -3196.6, -39.01306
    -- BikerMethLab.LoadDefault() -- Meth lab: 1009.5, -3196.6, -38.99682
    -- BikerWeedFarm.LoadDefault() -- Weed farm: 1051.491, -3196.536, -39.14842
    -- BikerClubhouse1.LoadDefault() -- 1107.04, -3157.399, -37.51859
    -- BikerClubhouse2.LoadDefault() -- 998.4809, -3164.711, -38.90733

    -- ---@Import/Export
    -- ImportCEOGarage1.LoadDefault() -- Arcadius Business Centre
    -- ImportCEOGarage2.LoadDefault() -- Maze Bank Building /!\ Do not load parts Garage1, Garage2 and Garage3 at the same time (overlaping issues)
    -- ImportCEOGarage3.LoadDefault() -- Lom Bank /!\ Do not load parts Garage1, Garage2 and Garage3 at the same time (overlaping issues)
    -- ImportCEOGarage4.LoadDefault() -- Maze Bank West /!\ Do not load parts Garage1, Garage2 and Garage3 at the same time (overlaping issues)
    -- ImportVehicleWarehouse.LoadDefault() -- Vehicle warehouse: 994.5925, -3002.594, -39.64699

    -- ---@Gunrunning
    -- GunrunningBunker.LoadDefault() -- 892.6384, -3245.8664, -98.2645
    -- GunrunningYacht.LoadDefault() -- -1363.724, 6734.108, 2.44598

    -- ---@SmuggersRun
    -- SmugglerHangar.LoadDefault() -- -1267.0 -3013.135 -49.5

    -- ---@TheDoomsdayHeist
    -- DoomsdayFacility.LoadDefault()

    -- ---@AfterHours
    -- AfterHoursNightclubs.LoadDefault() -- -1604.664, -3012.583, -78.000

    -- ---@TheDiamondCasinoHeist
    -- if GetGameBuildNumber() >= 2060 then
    --     DiamondCasino.LoadDefault() -- 1100.000, 220.000, -50.000
    --     DiamondPenthouse.LoadDefault() -- 976.636, 70.295, 115.164
    -- end

    -- ---@TheCayoPericoHeist
    -- if GetGameBuildNumber() >= 2189 then
    --     CayoPericoNightclub.LoadDefault() -- 1550.0, 250.0, -50.0
    --     CayoPericoSubmarine.LoadDefault() -- 1560.0, 400.0, -50.0
    -- end

    -- ---@LosSantosTuners
    -- if GetGameBuildNumber() >= 2372 then
    --     TunerGarage.LoadDefault() -- -1350.0, 160.0, -100.0
    --     TunerMethLab.LoadDefault() -- 981.9999, -143.0, -50.0
    --     TunerMeetup.LoadDefault() -- -2000.0, 1113.211, -25.36243
    -- end

    -- ---@TheContract
    -- if GetGameBuildNumber() >= 2545 then
    --     MpSecurityGarage.LoadDefault() -- -1071.4387, -77.033875, -93.525505
    --     MpSecurityMusicRoofTop.LoadDefault() -- -592.6896, 273.1052, 116.302444
    --     MpSecurityStudio.LoadDefault() -- -1000.7252, -70.559875, -98.10669
    --     MpSecurityBillboards.LoadDefault() -- -592.6896, 273.1052, 116.302444
    --     MpSecurityOffice1.LoadDefault() -- -1021.86084, -427.74564, 68.95764
    --     MpSecurityOffice2.LoadDefault() -- 383.4156, -59.878227, 108.4595
    --     MpSecurityOffice3.LoadDefault() -- -1004.23035, -761.2084, 66.99069
    --     MpSecurityOffice4.LoadDefault() -- -587.87213, -716.84937, 118.10156
    -- end

    -- ---@TheCriminalEnterprise
    -- if GetGameBuildNumber() >= 2699 then
    --     CriminalEnterpriseSmeonFix.LoadDefault() -- -50.2248, -1098.8325, 26.049742
    --     CriminalEnterpriseVehicleWarehouse.LoadDefault() -- 800.13696, -3001.4297, -65.14074
    --     CriminalEnterpriseWarehouse.LoadDefault() -- 849.1047, -3000.209, -45.974354
    -- end

    -- ---@LosSantosDrugWars
    -- if GetGameBuildNumber() >= 2802 then
    --     DrugWarsFreakshop.LoadDefault() -- 570.9713, -420.0727, -70.000
    --     DrugWarsGarage.LoadDefault() -- 519.2477, -2618.788, -50.000
    --     DrugWarsLab.LoadDefault() -- 483.4252, -2625.071, -50.000
    -- end

    -- ---@SanAndreasMercenaries
    -- if GetGameBuildNumber() >= 2944 then
    --     MercenariesClub.LoadDefault() -- 1202.407, -3251.251, -50.000
    --     MercenariesLab.LoadDefault() -- -1916.119, 3749.719, -100.000
    --     MercenariesFixes.LoadDefault()
    -- end

    -- ---@TheChopShop
    -- if GetGameBuildNumber() >= 3095 then
    --     ChopShopCargoShip.LoadDefault() -- -344.4349, -4062.832, 17.000
    --     ChopShopCartelGarage.LoadDefault() -- 1220.133, -2277.844, -50.000
    --     ChopShopLifeguard.LoadDefault() -- -1488.153, -1021.166, 5.000
    --     ChopShopSalvage.LoadDefault() -- 1077.276, -2274.876, -50.000
    -- end

    -- ---@BottomDollarBounties
    -- if GetGameBuildNumber() >= 3258 then
    --     SummerCarrier.LoadDefault() -- -3208.03, 3954.54, 14.0
    --     SummerOffice.LoadDefault() -- 565.886, -2688.761, -50.0
    -- end
end)

-- Base IPLs to fix holes
CreateThread(function()
    -- Heist Jewel: -637.20159 -239.16250 38.1
    RequestIpl('post_hiest_unload')

    -- Max Renda: -585.8247, -282.72, 35.45475
    RequestIpl('refit_unload')

    -- Heist Union Depository: 2.69689322, -667.0166, 16.1306286
    RequestIpl('FINBANK')

    -- Morgue: 239.75195, -1360.64965, 39.53437
    RequestIpl('Coroner_Int_on')
    RequestIpl('coronertrash')

    -- Cluckin Bell: -146.3837, 6161.5, 30.2062
    RequestIpl('CS1_02_cf_onmission1')
    RequestIpl('CS1_02_cf_onmission2')
    RequestIpl('CS1_02_cf_onmission3')
    RequestIpl('CS1_02_cf_onmission4')

    -- Grapeseed's farm: 2447.9, 4973.4, 47.7
    RequestIpl('farm')
    RequestIpl('farmint')
    RequestIpl('farm_lod')
    RequestIpl('farm_props')
    RequestIpl('des_farmhouse')

    -- FIB lobby: 105.4557, -745.4835, 44.7548
    RequestIpl('FIBlobby')

    -- FIB Roof: 134.33, -745.95, 266.98
    RequestIpl('atriumglmission')

    -- FIB Fountain 174.184, -667.902, 43.140
    RemoveIpl('dt1_05_hc_end')
    RemoveIpl('dt1_05_hc_req')
    RequestIpl('dt1_05_hc_remove')

    -- Billboard: iFruit
    RequestIpl('FruitBB')
    RequestIpl('sc1_01_newbill')
    RequestIpl('hw1_02_newbill')
    RequestIpl('hw1_emissive_newbill')
    RequestIpl('sc1_14_newbill')
    RequestIpl('dt1_17_newbill')

    -- Lester's factory: 716.84, -962.05, 31.59
    RequestIpl('id2_14_during_door')
    RequestIpl('id2_14_during1')

    -- Life Invader lobby: -1047.9, -233.0, 39.0
    RequestIpl('facelobby')

    -- Tunnels
    RequestIpl('v_tunnel_hole')

    -- Carwash: 55.7, -1391.3, 30.5
    RequestIpl('Carwash_with_spinners')

    -- Stadium 'Fame or Shame': -248.49159240722656, -2010.509033203125, 34.57429885864258
    RequestIpl('sp1_10_real_interior')
    RequestIpl('sp1_10_real_interior_lod')

    -- House in Banham Canyon: -3086.428, 339.2523, 6.3717
    RequestIpl('ch1_02_open')

    -- Garage in La Mesa (autoshop): 970.27453, -1826.56982, 31.11477
    RequestIpl('bkr_bi_id1_23_door')

    -- Hill Valley church - Grave: -282.46380000, 2835.84500000, 55.91446000
    RequestIpl('lr_cs6_08_grave_closed')

    -- Lost's trailer park: 49.49379000, 3744.47200000, 46.38629000
    RequestIpl('methtrailer_grp1')

    -- Lost safehouse: 984.1552, -95.3662, 74.50
    RequestIpl('bkr_bi_hw1_13_int')

    -- Raton Canyon river: -1652.83, 4445.28, 2.52
    RequestIpl('CanyonRvrShallow')

    -- Josh's house: -1117.1632080078, 303.090698, 66.52217
    RequestIpl('bh1_47_joshhse_unburnt')
    RequestIpl('bh1_47_joshhse_unburnt_lod')

    -- Bahama Mamas: -1388.0013, -618.41967, 30.819599
    RequestIpl('hei_sm_16_interior_v_bahama_milo_')

    -- Zancudo River (need streamed content): 86.815, 3191.649, 30.463
    RequestIpl('cs3_05_water_grp1')
    RequestIpl('cs3_05_water_grp1_lod')
    RequestIpl('trv1_trail_start')

    -- Cassidy Creek (need streamed content): -425.677, 4433.404, 27.3253
    RequestIpl('canyonriver01')
    RequestIpl('canyonriver01_lod')

    -- Ferris wheel
    RequestIpl('ferris_finale_anim')

    -- Train track: 2626.374, 2949.869, 39.1409
    RequestIpl('ld_rail_01_track')
    RequestIpl('ld_rail_02_track')

    -- Docks cranes: 887.7344, -2922.285, 34.000
    RequestIpl('dockcrane1')
    RequestIpl('pcranecont')

    -- Construction lift: -180.5771, -1016.9276, 28.2893
    RequestIpl('dt1_21_prop_lift_on')

    -- Davis Quartz train: 2773.6099, 2835.3274, 35.1903
    RequestIpl('cs5_4_trains')
end)
