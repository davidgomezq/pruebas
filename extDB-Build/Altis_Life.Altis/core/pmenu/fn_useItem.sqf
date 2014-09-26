/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "blastingchargecasino"): {
		player reveal casino_1;
		(group player) reveal casino_1;
		[cursorTarget] spawn life_fnc_blastingchargecasino;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["Ahora puedes correr durante 3 minutos","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "barricade"):
	{
		if(!isNull life_barricade) exitWith {hint "Has puesto una barricada!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barricade;
		};
	};
	
	case (_item == "barrier"):
	{
		if(!isNull life_barrier) exitWith {hint "Has puesto una barrera!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrier;
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Ya tiene un Roal de pinchos activo en la implementación"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "mauer"):
	{
		if(!isNull life_mauer) exitWith {hint "Usted ha puesto una pared!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_mauer;
		};
	};
	
	
	case (_item == "cono"):
	{
		if(!isNull life_cono) exitWith {hint "Has puesto un cono!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cono;
		};
	};
	
	case (_item == "barrera"):
	{
		if(!isNull life_barrera) exitWith {hint "Has puesto un barrera!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrera;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "pala"):
	{
		[] spawn life_fnc_shovelUse;
	};
	
	
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	
	case (_item =="cerveza"):
	{
		
		if(playerSide in [west,east]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkbeer;
		};
	};

	
	case (_item =="sidra"):
	{
		if(playerSide in [west,east]) exitWith {hint localize "STR_MISC_WestIndNoNo";};
		if((player getVariable ["inDrink",FALSE])) exitWith {hint localize "STR_MISC_AlreadyDrinking";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.08;
			if (life_drink < 0.09) exitWith {};
			[] spawn life_fnc_drinksidra;
		};
	};

		case (_item == "marijuana"):
	{
		[] spawn life_fnc_marijuana;
	};
	
	case (_item == "cocainep"):
	{
		[] spawn life_fnc_cocaine;
	};
	
	case (_item == "heroinp"):
	{
		[] spawn life_fnc_heroin;
	};
	
	case (_item == "meth"):
	{
		[] spawn life_fnc_meth;
	};
	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedBomb;
	};
	
	case (_item == "nitro"):
	{
		[] spawn life_fnc_nitro;
	};
	
	case (_item == "marijuana"):
	{
		[] spawn life_fnc_marijuana;
	};
	
	case (_item == "cocainep"):
	{
		[] spawn life_fnc_cocaine;
	};
	
	case (_item == "heroinp"):
	{
		[] spawn life_fnc_heroin;
	};
	
	case (_item == "meth"):
	{
		[] spawn life_fnc_meth;
	};
	
	default
	{
		hint "Este objeto no se puede usar.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;