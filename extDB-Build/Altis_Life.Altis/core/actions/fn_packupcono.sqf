/*
    File: fn_packupcono.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: metalcry1

    Description:
    Packs up a deployed conos.
*/
private["_cono"];
_cono = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0;
if(isNil "_cono") exitWith {};

if(([true,"cono",1] call life_fnc_handleInv)) then
{
    titleText["Has colocado un cono.","PLAIN"];
    player removeAction life_action_conoPickup;
    life_action_conoPickup = nil;
    deleteVehicle _cono;
};