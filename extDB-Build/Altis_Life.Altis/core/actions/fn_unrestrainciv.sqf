/*
	File: fn_unrestrainciv.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];

while {true} do {
if(life_inv_lockpick < 1) exitWith { hint "No tienes ganzuas."; };
life_inv_lockpick = life_inv_lockpick - 1;


detach _unit;
};

hint "Los has liberado";

[[0,format["%1 fue des-arrestado por %2",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
