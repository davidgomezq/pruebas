/*
        File: fn_civPutInCar.sqf
       
        Description:
        GETTING SICK OF WRITING DESCRIPTIONS.
*/
private["_unit","_ nearest"];
_unit = cursorTarget;
_near = (position player) nearEntities [["Man"],2];
_nearest = _near select 0;
if(isNull _nearest) exitWith {}; //Not valid
if(isNull _nearest) exitWith {}; //Not valid
if(!(_nearest getVariable "zipTie")) exitWith {};

detach _nearest;

_nearest action ["getInCargo", vehicle _unit];
_nearest setVariable["Escorting",false,true];
_nearest setVariable["kidnapped",true,true];
