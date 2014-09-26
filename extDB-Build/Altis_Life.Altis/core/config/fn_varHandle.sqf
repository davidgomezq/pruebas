/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "water": {"life_inv_water"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "tbacon": {"life_inv_tbacon"};
			case "redgull": {"life_inv_redgull"};
			case "lockpick": {"life_inv_lockpick"};
			case "peach": {"life_inv_peach"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "rana": {"life_inv_frog"};
			case "ranalsd": {"life_inv_froglsd"};
			case "patasderana": {"life_inv_froglegs"};
			case "sidra": {"life_inv_sidra"};
			case "cerveza": {"life_inv_cerveza"};
			case "lupulo": {"life_inv_lupulo"};
			case "malta": {"life_inv_malta"};
			case "tabaco": {"life_inv_tabaco"};
			case "cigarrillos": {"life_inv_cigarrillos"};
			case "acero": {"life_inv_acero"};
			case "aceroinoxidable": {"life_inv_aceroinoxidable"};
			case "cono": {"life_inv_cono"};
			case "barrera": {"life_inv_barrera"};
			case "mauer": {"life_inv_mauer"};
			case "barrier": {"life_inv_barrier"};
			case "barricade": {"life_inv_barricade"};
			case "figuradehueso": {"life_inv_figuradehueso"};
			case "caparazon": {"life_inv_caparazon"};
			case "pala": {"life_inv_shovel"};
			case "pergamino": {"life_inv_pergamino"};
			case "vasija": {"life_inv_vasija"};
			case "doblon": {"life_inv_doblon"};
			case "brazalete": {"life_inv_brazalete"};
			case "catalejo": {"life_inv_catalejo"};
			case "abrecartas": {"life_inv_abrecartas"};
			case "collar": {"life_inv_collar"};
			case "cetro": {"life_inv_cetro"};
			case "kidney": {"life_inv_kidney"};
			case "zipties": {"life_inv_zipties"};
			case "madera": {"life_inv_madera"};
			case "carbon": {"life_inv_carbon"};
			case "rubiu": {"life_inv_rubiu"};
			case "rubip": {"life_inv_rubip"};
			case "speedbomb": {"life_inv_speedbomb"};
			case "nitro": {"life_inv_nitro"};
			case "fichas": {"life_inv_fichas"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_water": {"water"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_peach": {"peach"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_frog": {"rana"};
			case "life_inv_froglsd": {"ranalsd"};
			case "life_inv_froglegs": {"patasderana"};
			case "life_inv_sidra": {"sidra"};
			case "life_inv_cerveza": {"cerveza"};			
			case "life_inv_lupulo": {"lupulo"};
			case "life_inv_malta": {"malta"};
			case "life_inv_tabaco": {"tabaco"};
			case "life_inv_cigarrillos": {"cigarrillos"};
			case "life_inv_acero": {"acero"};
			case "life_inv_aceroinoxidable": {"aceroinoxidable"};
			case "life_inv_cono": {"cono"};
			case "life_inv_barrera": {"barrera"};
			case "life_inv_mauer": {"mauer"};
			case "life_inv_barrier": {"barrier"};	
			case "life_inv_barricade": {"barricade"};	
			case "life_inv_figuradehueso": {"figuradehueso"};
			case "life_inv_caparazon": {"caparazon"};
			case "life_inv_shovel": {"pala"};
			case "life_inv_pergamino": {"pergamino"};
			case "life_inv_vasija": {"vasija"};
			case "life_inv_doblon": {"doblon"};
			case "life_inv_brazalete": {"brazalete"};
			case "life_inv_catalejo": {"catalejo"};
			case "life_inv_abrecartas": {"abrecartas"};
			case "life_inv_collar": {"collar"};
			case "life_inv_cetro": {"cetro"};
			case "life_inv_kidney": {"kidney"}; 
			case "life_inv_zipties": {"zipties"};
			case "life_inv_madera": {"madera"};
			case "life_inv_carbon": {"carbon"};
			case "life_inv_rubiu": {"rubiu"};
			case "life_inv_rubip": {"rubip"};
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_nitro": {"nitro"};
			case "life_inv_fichas": {"fichas"};
		};
	};
};
