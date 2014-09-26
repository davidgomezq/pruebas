/*
	File: fn_gatherCocaine.sqf
	
	Description:
	Gathers cocaine?
*/
private["_sum"];
_sum = ["cocaine",2,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Cogiendo Cocaina...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"cocaine",2] call life_fnc_handleInv)) then
	{
		titleText["Cogiste Cocaina.","PLAIN"];
	};
};

life_action_gather = false;