/*
	File: fn_stealMeth.sqf
	Author: synced-gaming.de

*/
private["_sum"];
_sum = ["labkit",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Estas robando a los chicos del laboratorio su kit...","PLAIN"];
	titleFadeOut 5;
	sleep 8;
	if(([true,"labkit",1] call life_fnc_handleInv)) then
	{
		titleText["You stole the laboratory kit!","PLAIN"];
		titleFadeOut 2;
		sleep 3;
	};
};

life_action_inUse = false;

_timer = time + (3 * 60);	
_toFar = false;
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

while {true} do
{
	//Timer display
	_countDown = if(round(_timer - time) > 60) then {format["%1 Minuto(n)",round(round(_timer - time) / 60)]} else {format["%1 Segundos(n)",round(_timer - time)]};
	hintSilent format["Correr al menos 500! De lo contrario, te atrapa y hace sonar el silbato en ti por la policía!!\n\nTiempo de espera:\n %1\n\ndistancia: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 500) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
};

switch(true) do
{
	case (_toFar):
	{
		hint "Escapaste ...eres bueno!";
	};
	
	case (!alive player):
	{
		hint "Has muerto.";
	};
		
	case ((round(_timer - time)) < 1):
	{
		hint format["El muchacho laboratorio delató en usted en la policía. Se le ha buscado!!"];
		[[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};	
};