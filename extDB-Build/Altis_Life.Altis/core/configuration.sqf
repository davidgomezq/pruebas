#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_barricade = ObjNull;
life_barrier = ObjNull;
life_cono = ObjNull;
life_barrera = ObjNull;
life_respawn_timer = 0.1; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_mauer = ObjNull;
life_action_gather = false; // controla las zonas recolectacion
life_is_alive = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_drink = 0;
life_fatigue = 0.5; //Set the max fatigue limit (50%)
life_drug_level = 0;
life_used_drug = [0,0,0,0];
life_smoking = false;
life_drug_withdrawl = false;
life_cocaine_effect = 0;
life_heroin_effect = 0;
life_meth_effect = 0;
life_addiction = [0,0,0,0];
life_my_group = ObjNull;


//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,25000);
//__CONST__(life_revive_feepac,5000);

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,1); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,1); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH
 

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 80;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_isDowned = false;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,25000);
__CONST__(life_impound_boat,25000);
__CONST__(life_impound_air,35000);
life_istazed = false;
life_my_gang = ObjNull;


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 800000; //Starting Bank Money
		life_paycheck = 850; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 6500;
		life_paycheck = 1550;
	};
	
	case east:
	{
		life_atmcash = 7000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
};



life_inv_items = 
[
	
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_coffee",
	"life_inv_turtlesoup",
	"life_inv_donuts",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_diamond",
	"life_inv_diamondr",
	"life_inv_tbacon",
	"life_inv_redgull",
	"life_inv_lockpick",
	"life_inv_peach",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_spikeStrip",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_frog",
	"life_inv_froglsd",
	"life_inv_froglegs",
	"life_inv_sidra",
	"life_inv_cerveza",
	"life_inv_lupulo",
	"life_inv_malta",
	"life_inv_tabaco",
	"life_inv_cigarrillos",
	"life_inv_acero",
	"life_inv_aceroinoxidable",
	"life_inv_cono",
	"life_inv_barrera",
	"life_inv_mauer",
	"life_inv_barrier",
	"life_inv_barricade",
	"life_inv_figuradehueso",	
	"life_inv_caparazon",
	"life_inv_shovel",
	"life_inv_pergamino",
	"life_inv_vasija",
	"life_inv_doblon",
	"life_inv_brazalete",
	"life_inv_catalejo",
	"life_inv_abrecartas",
	"life_inv_collar",
	"life_inv_cetro",
	"life_inv_kidney",
	"life_inv_zipties",
	"life_inv_madera",
	"life_inv_carbon",
	"life_inv_rubiu",
	"life_inv_rubip",
	"life_inv_speedbomb",
	"life_inv_nitro",
	"life_inv_fichas"
	
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_gang","civ"],
	["license_civ_dive","civ"],
	["license_civ_boat","civ"],
	["license_civ_gun","civ"],
	["license_cop_air","cop"],
	["license_copeast_air","copeast"],
	["license_cop_cg","cop"],
	["license_civ_rebel","civ"],
	["license_civ_truck","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_coke","civ"],
	["license_civ_kart","civ"],
	["license_civ_marijuana","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_donador","civ"],
	["license_civ_donador2","civ"],
	["license_civ_donador3","civ"],
	["license_civ_avion","civ"],
	["license_civ_turtle","civ"],
	["license_civ_caparazon","civ"],
	["license_civ_tabaco","civ"],
	["license_civ_taxi","civ"],
	["license_civ_sidra","civ"],
	["license_civ_cerveza","civ"],
	["license_civ_aceroinoxidable","civ"],
	["license_civ_pmc","civ"],
	["license_civ_pasaporteesp","civ"],
	["license_civ_pasaportemaroc","civ"],
	["license_civ_rubiu","civ"],
	["license_cop_geos","cop"],
	["license_copeast_geos","copeast"],
	["license_civ_bountyh", "civ"]
	
	
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["mrw_1","mrw_2","mrw_3","mrw_4","mrw_5","mrw_6","mrw_7","mrw_8","mrw_9","mrw_10"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtleturtle",3000],["blastingcharge",10000],["boltcutter",500],["caparazon",15000],["figuradehueso",25000],["kidney",5000],["ranalsd",4800],["goldbar",250000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",9000],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",7500],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",9800],
	["diamond",750],
	["diamondc",3800],
	["iron_r",3200],
	["copper_r",1500],
	["fuelF",500],
	["spikeStrip",1200],
	["barrier",250],
	["barricade",500],
	["sidra",1000],
	["tabaco",400],
	["cigarrillos",800],
	["caparazon",15000],
	["figuradehueso",35000],
	["goldbar",250000],
	["cono",500],
	["barrera",500],
	["pala",750],
	["pergamino",3500],
	["vasija",3000],
	["doblon",5000],
	["brazalete",25000],
	["catalejo",1500],
	["abrecartas",1500],
	["collar",1500],
	["cetro",1500],
	["acero",4250],	
	["kidney",5000],
	["patasderana",1000],
	["ranalsd",4800],
	["rana",600],
	["aceroinoxidable",10450],
	["zipties",500],
	["madera",500],
	["carbon",500],
	["cerveza",1500],
	["rubip",4800],
	["speedbomb",500000],
	["nitro",15000],
	["fichas",50000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["pala",5000],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["blastingchargecasino",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["cigarrillos",800],
	["carbon",2500],
	["cono",75],
	["mauer",5000],
	["sidra",1000],
	["barrier",500],
	["barricade",1000],
	["barrera",500],
	["zipties",1000],
	["speedbomb",700000],
	["nitro",15000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["LMG_Mk200_F",nil,0],
	["srifle_GM6_F",nil,0],
	["srifle_DMR_01_F",nil,0],
	["srifle_LRR_SOS_F",nil,0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],
	["launch_RPG32_F",0],
	["RPG32_F",nil,0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["I_Truck_02_box_F",1500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["B_Heli_Light_01_F",15000],
	["B_G_Offroad_01_armed_F",45000],	
	["B_Heli_Light_01_armed_F",45000],
	["B_Heli_Transport_01_F",45000],
	["O_Heli_Light_02_unarmed_F",45000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["I_Heli_light_03_unarmed_F",45000],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",30000],
	["B_MRAP_01_hmg_F",45000],
	["O_MRAP_02_hmg_F",45000],
	["I_Heli_Transport_02_F",45000],
	["O_Truck_03_transport_F",45000],
	["O_Truck_03_covered_F",45000],
	["O_Truck_03_device_F",45000],
	["C_Kart_01_Blu_F",15000],
	["C_Kart_01_Fuel_F",15000],
	["C_Kart_01_Red_F",15000],
    ["C_Kart_01_Vrana_F",15000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",2250],
	["C_Hatchback_01_F",9500],
	["C_Offroad_01_F",6500],
	["B_G_Offroad_01_F",15500],
	["C_SUV_01_F",30000],
	["C_Hatchback_01_sport_F",50000],
	["C_Van_01_fuel_F",7500],
	["C_Van_01_box_F",80000],
	["I_Truck_02_transport_F",90000],
	["I_Truck_02_covered_F",120000],
	["I_Truck_02_box_F",800000],
	["B_Truck_01_transport_F",300000],
	["O_MRAP_02_F",850000],
	["B_G_Offroad_01_armed_F",750000],	
	["B_Heli_Light_01_armed_F",1500000],
	["B_Heli_Transport_01_F",200000],
	["C_Rubberboat",5000],
	["C_Boat_Civil_01_F",22000],
	["B_Boat_Transport_01_F",3000],
	["C_Boat_Civil_01_police_F",20000],
	["B_Boat_Armed_01_minigun_F",75000],
	["I_Heli_light_03_unarmed_F",200000],
	["B_SDV_01_F",100000],
	["B_MRAP_01_F",80000],
	["B_MRAP_01_hmg_F",100000],
    ["O_MRAP_02_hmg_F",3500000],
	["O_Truck_03_transport_F",600000],
	["O_Truck_03_covered_F",750000],
	["O_Truck_03_device_F",950000],
	["B_Truck_01_box_F",375000],
	["I_Heli_Transport_02_F",3450000],
	["B_Heli_Light_01_F",300000],
	["O_Heli_Light_02_unarmed_F",900000],
	["I_MRAP_03_F",600000],
	["I_MRAP_03_hmg_F",2000000]
];
__CONST__(life_garage_sell,life_garage_sell);
