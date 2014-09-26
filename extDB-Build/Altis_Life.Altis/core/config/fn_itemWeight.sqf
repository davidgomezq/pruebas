/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {5};
	case "apple": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "water": {1};
	case "coffee": {1};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "iron_r": {3};
	case "copper_r": {3};
	case "diamond": {4};
	case "diamondc": {2};
	case "tbacon": {1};
	case "redgull": {3};
	case "lockpick": {3};
	case "peach": {1};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {15};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "rana": {5};//15 is the weight
	case "ranalsd": {5};
	case "patasderana": {5};//15 is the weight
	case "sidra": {1};
	case "cerveza": {2};
	case "lupulo": {3};
	case "malta": {3};
	case "tabaco": {4};
	case "cigarrillos": {2};
	case "acero": {1};
	case "aceroinoxidable": {1};
	case "cono": {1};
	case "barrera": {5};
	case "mauer": {3};
	case "barrier": {5};
	case "barricade": {5};
	case "figuradehueso": {4};
	case "caparazon": {6};
	case "pala": {10};
	case "pergamino": {4};
	case "vasija": {4};
	case "doblon": {4};
	case "brazalete": {4};
	case "catalejo": {4};
	case "abrecartas": {4};
	case "collar": {4};
	case "cetro": {4};
	case "kidney": {15};//15 is the weight
	case "zipties": {1};//15 is the weight
	case "madera": {2};
	case "carbon": {2};
	case "rubiu": {4};
	case "rubip": {4};
	case "speedbomb": {10};
	case "nitro": {10};
	case "fichas": {5};
	
	
	default {1};
};
