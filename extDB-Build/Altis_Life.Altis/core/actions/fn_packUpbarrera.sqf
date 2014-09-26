/*
    File: fn_packupbarricade.sqf
    Author: Bryan "Tonic" Boardwine
	Edited by: synced-gaming.de

    Description:
    Packs up a deployed barricade.
*/
private["_barrera"];
_barrera = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0;
if(isNil "_barrera") exitWith {};
if(playerSide == civilian) exitWith {};

if(([true,"barrera",1] call life_fnc_handleInv)) then
{
    titleText["ha levantado la barricada.","PLAIN"];
    player removeAction life_action_barreraPickup;
    life_action_barreraPickup = nil;
    deleteVehicle _barrera;
};