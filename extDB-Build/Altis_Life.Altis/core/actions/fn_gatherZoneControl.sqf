/*
	File: fn_gatherZoneControl.sqf
	Author: msc
	
	Description:
	Gathers Zone Control
*/
private["_vault","_unit","_marker","_arguments","_group"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_caller = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_arguments = [_this,3,,[[]]] call BIS_fnc_param:
_marker = _arguments select 0;
_group = _arguments select 1;
_index = [_group,life_gang_list] call fnc_index;
if(_index == -1) exitWith {hint "Nos ha sido visto por ninguna banda."};
_gang = life_gang_list select _index;
_groupgl = _gang select 1;
_groupname = _gang select 0;
if (_groupgl != _group) exitWith {hint "Error Estraño..."};

if(isNull _target OR isNull _caller OR isNull _marker) exitWith {}; //Bad data passed

[[_target,_caller,_marker,_groupname],"MSC_fnc_gatherZoneControl",false,false] spawn life_fnc_MP;