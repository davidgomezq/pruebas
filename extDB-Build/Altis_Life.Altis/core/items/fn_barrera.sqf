/*
	File: fn_barrera.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: synced-gaming.de
	
	Description:
	Creates a barricade.
*/
private["_position","_barrera"];
_barrera = "Land_BarGate_F" createVehicle [0,0,0];
_barrera attachTo[player,[0,5.5,0.2]];
_barrera setDir 90;
_barrera setVariable["item","barreraDeployed",true];

life_action_barreraDeploy = player addAction["Poner Barrera",{if(!isNull life_barrera) then {detach life_barrera; life_barrera = ObjNull;}; player removeAction life_action_barreraDeploy; life_action_barreraDeploy = nil;},"",999,false,false,"",'!isNull life_barrera'];
life_barrera = _barrera;
waitUntil {isNull life_barrera};
if(!isNil "life_action_barreraDeploy") then {player removeAction life_action_barreraDeploy;};
if(isNull _barrera) exitWith {life_barrera = ObjNull;};
_barrera setPos [(getPos _barrera select 0),(getPos _barrera select 1),0];
_barrera allowDamage false;
life_action_barreraPickup = player addAction["Cancelar Barrera",life_fnc_packUpBarrera,"",0,false,false,"",
' _barrera = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_barrera" && !isNil {(_barrera getVariable "item")}'];
[[_barrera],"TON_fnc_barrera",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.