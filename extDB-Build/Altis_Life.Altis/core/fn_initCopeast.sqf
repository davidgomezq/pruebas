#include <macro.h>
/*
	File: fn_initcopeast.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	copeast Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((str(player) in ["copeast_1","copeast_2","copeast_3","copeast_4"])) then {
	if((__GETC__(life_copeastlevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
player setVariable["rank",(__GETC__(life_copeastlevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.




[] execVM "welcome.sqf";
[] call life_fnc_updateClothing;