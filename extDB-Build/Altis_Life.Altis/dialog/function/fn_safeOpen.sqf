/*	
	File: fn_safeOpen.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the safe inventory menu.
*/
if(dialog) exitWith {}; //A dialog is already open.
life_safeObj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull life_safeObj) exitWith {};
if(playerSide != civilian) exitWith {};
if((life_safeObj getVariable["safe",-1]) < 1) exitWith {hint "La caja fuerte está vacia!";};
if((life_safeObj getVariable["inUse",false])) exitWith {hint "Alguien esta accediendo a la caja fuerte.."};
if({side _x == west} count playableUnits < 5) exitWith {hint "Necesitas ser mas de 5 o mas policicias online."};
if(!createDialog "Federal_Safe") exitWith {"No se pudo crear el dialogo, reportelo."};
disableSerialization;
ctrlSetText[3501,"Safe Inventory"];
[life_safeObj] call life_fnc_safeInventory;
life_safeObj setVariable["inUse",true,true];
[life_safeObj] spawn
{
	waitUntil {isNull (findDisplay 3500)};
	(_this select 0) setVariable["inUse",false,true];
};