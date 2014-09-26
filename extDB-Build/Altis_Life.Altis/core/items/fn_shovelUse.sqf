/*
	File: fn_shovelUse.sqf
	Author: Termi / Termifire
	
	Description:
	Main functionality for shovel in archaeology.
*/
closeDialog 0;
private["_excavation","_item","_itemWeight","_rNumber","_itemName"];
switch (true) do
{
	case (player distance (getMarkerPos "archaelogy_1") < 30): {_excavation = true;};
	default {_excavation = false;};
};
//Excavation check
if(!(_excavation)) exitWith {hint "No estas cerca de una excavacion arqueologica!"};
if(vehicle player != player) exitWith {hint "No puedes excavar dentro de un coche!";};

_itemWeight = 4;
_rNumber = floor random 100;

if (life_carryWeight + _itemWeight > life_maxWeight) exitWith {hint "No tienes suficiente espacio!"};

switch (true) do
{
	case (_rNumber < 50) : {_item = "";};
	case (_rNumber < 80) : {_item = "pergamino";};
	case (_rNumber < 92) : {_item = "vasija";};
	case (_rNumber < 99) : {_item = "doblon";};
	default {_item = "brazalete";};
};

life_action_inUse = true;
for "_i" from 0 to 2 do
{
	//player say3D "pala";
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if (_item == "") exitWith {life_action_inUse = false; titleText["No encontraste nada","PLAIN"];};

if(([true,_item,1] call life_fnc_handleInv)) then
{
	_itemName = [([_item,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Has encontrado un %1",_itemName],"PLAIN",0.7];
};

life_action_inUse = false;