/*
	File: fn_drunkenCheck.sqf
	Author: synced-gaming.de David
	
	Description:
	Checks if Civ is drunkend.
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
hint "Prueba de alcohol...";

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "No puede soplar esta persona."};
if(!(_unit getVariable "drunken")) exitWith {hint "Alcohol en sangre 0,0"};
if((_unit getVariable "drunken")) exitWith {hint "Alcohol en sangre 5,3"};