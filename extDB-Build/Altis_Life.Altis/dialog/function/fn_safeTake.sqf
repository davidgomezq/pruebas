#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_safeTake.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gateway to fn_vehTakeItem.sqf but for safe(s).
*/
private["_ctrl","_num","_safeInfo"];
disableSerialization;

if((lbCurSel 3502) == -1) exitWith {hint "Seleccionaste un objeto!";};
_ctrl = ctrlSelData(3502);
_num = ctrlText 3505;
_safeInfo = life_safeObj getVariable["safe",0];

//Error checks
if(!([_num] call fnc_isnumber)) exitWith {hint "Numbero no validot";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "No se puede introducir nada por debajo de 1!";};
if(_ctrl != "goldbar") exitWith {hint "No se puede almacenar cualquier cosa, pero los lingotes de oro en la caja fuerte."};
if(_num > _safeInfo) exitWith {hint format["No hay %1 lingotes de oro en la cajafuerte¡",_num];};

//Secondary checks
_num = [_ctrl,_num,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_num == 0) exitWith {hint "Inventario lleno."};


//Take it
if(!([true,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "No se puedo añadir a tu inventario.";};
life_safeObj setVariable["safe",_safeInfo - _num,TRUE];
[life_safeObj] call life_fnc_safeInventory;