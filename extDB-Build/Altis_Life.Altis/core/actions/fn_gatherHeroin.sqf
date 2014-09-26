/*
	File: fn_gatherHeroin.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers heroin?
*/
private["_sum"];
_sum = ["heroinu",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Cogiendo Heroina...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"heroinu",2] call life_fnc_handleInv)) then
	{
		titleText["Cogiste heroina.","PLAIN"];
	};
};

life_action_gather = false;