/*
	File: fn_escortAction.sqf
*/
private["_unit"];
_unit = cursorTarget;
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
_unit attachTo [player,[0.1,1.1,0]];
_unit setVariable["transporting",false,true];
_unit setVariable["kidnapped",false,true];
_unit setVariable["Escorting",true,true];
player reveal _unit;