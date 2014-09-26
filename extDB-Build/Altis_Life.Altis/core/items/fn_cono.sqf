/*
	File: fn_cono.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: OLLI aka Hauklotz
	
	Description:
	Creates a wall and preps it.
*/
private["_position","_cono"];
_cono = "RoadCone_L_F" createVehicle [0,0,0];
_cono attachTo[player,[0,5.5,0.2]];
_cono setDir 90;
_cono setVariable["item","conoDeployed",true];

life_action_conoDeploy = player addAction["Montar cono",{if(!isNull life_cono) then {detach life_cono; life_cono = ObjNull;}; player removeAction life_action_conoDeploy; life_action_conoDeploy = nil;},"",999,false,false,"",'!isNull life_cono'];
life_cono = _cono;
waitUntil {isNull life_cono};
if(!isNil "life_action_conoDeploy") then {player removeAction life_action_conoDeploy;};
if(isNull _cono) exitWith {life_cono = ObjNull;};
_cono setPos [(getPos _cono select 0),(getPos _cono select 1),0];
_cono allowDamage false;
life_fnc_packupcono = player addAction["Cancelar Cono",life_fnc_packupcono,"",0,false,false,"",' _cono = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_cono" && !isNil {(_cono getVariable "item")}'];