/*
	File: fn_zipTie.sqf
	Author: Bad^^Eye
	
	Description:
	Main functionality for civ restrain
*/
private["_unit"];
_unit = cursorTarget;
_amount = live_inv_ziptie;

if((_unit getVariable "restrained")||(_unit getVariable "Escorting")||(_unit getVariable "zipTie")) exitWith {};
if(isNull _unit) exitWith {}; //Not valid
if(player == _unit) exitWith {};
if (life_inv_ziptie <= 0) exitWith { hint "no tiene ataduras de cables!"; };
/*
if (([false, "ziptie", _amount] call life_fnc_handleInv)) then {

	[[player,_unit],"life_fnc_zipTieAction",_unit,false] spawn life_fnc_MP;

};
*/	

if (life_inv_ziptie > 0) then 

{
	life_inv_ziptie = life_inv_ziptie - 1;
	[[player,_unit],"life_fnc_zipTieAction",_unit,false] spawn life_fnc_MP;
};