/*
	File: fn_gatherCannabis.sqf
	
	Description:
	Gathers cannabis?
*/
private["_sum"];
_sum = ["cannabis",3,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Cogiendo Cannabis...","PLAIN"];
	titleFadeOut 5;
	sleep 5;
	if(([true,"cannabis",3] call life_fnc_handleInv)) then
	{
		titleText["Cogiste.","PLAIN"];
	};
};

life_action_gather = false;