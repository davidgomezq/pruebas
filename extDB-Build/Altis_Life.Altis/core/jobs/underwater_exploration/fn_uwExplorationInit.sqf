/*
	@Version: 2.0
	@Author: Austin, Blackwing Gaming
	@Edited: 07.10.2013
*/
private ["_wreck","_randomLocation","_wreckVeh","_txt","_pos"];

if (side player == west) exitWith { hint "Esto no es para policias!"; };

if (!isNull life_explorer_wreck) exitWith { hint format ["Esta preparado para buscar en% 1.", mapGridPosition life_explorer_wreck]; };

// Define wrecks.
life_explorer_wrecks = [
	["Land_UWreck_FishingBoat_F", "Fishing Boat"],
	["Land_UWreck_MV22_F", "MV-22"],
	["Land_Wreck_Traw2_F", "Ship"],
	["Land_Wreck_Traw_F", "Ship"]
];

// Define logics (wreck locations).
life_explorer_logics = [wreck_logic_1,wreck_logic_2,wreck_logic_3,wreck_logic_4,wreck_logic_5,wreck_logic_6];

// Create wreck.
_wreck = life_explorer_wrecks select (round(random((count life_explorer_wrecks) - 1)));
_randomLocation = getPos (life_explorer_logics select (round(random((count life_explorer_logics) - 1))));
_wreckVeh = (_wreck select 0) createVehicle [0,0,0];
life_explorer_wreck = _wreckVeh;
life_explorer_wreck setDir (random 360);

// Set position of wreck.
_pos = [((_randomLocation select 0) + (random 1000 - random 1000)), ((_randomLocation select 1) + (random 1000 - random 1000))];
life_explorer_wreck setPosASL [_pos select 0, _pos select 1, getTerrainHeightASL _pos];

hintC format ["Nos dijeros que un %1 naufragio en las cordenadads %2 fue encontrado. Tienes que encontrarlo y traernoslo!", _wreck select 1, mapGridPosition life_explorer_wreck];
_txt = format ["El naufragio %1 es %2. Yo tengo que encontrarlo y traerselo al jefe.", _wreck select 1, mapGridPosition life_explorer_wreck];

// Create task.
life_explorer_task = player createSimpleTask ["uw_exploration"];
life_explorer_task setSimpleTaskDescription [_txt, "Underwater Archaeology", ""];
life_explorer_task setTaskState "Assigned";
player setCurrentTask life_explorer_task;

sleep 1;

["TaskAssigned", ["Underwater Archaeology", format["Buscar el dañado %1.", _wreck select 1]]] call bis_fnc_showNotification;

[] spawn life_fnc_uwExplorationExplore;