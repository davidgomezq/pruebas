/*
	@Version: 2.0
	@Author: Austin, Blackwing Gaming
	@Edited: 07.10.2013
*/
private ["_distance","_pay","_txt"];

if (side player == west) exitWith {hint "This is not for cops!"; };

_distance = player distance life_explorer_wreck;
_pay = round(_distance * (6 + random 2));

waitUntil {player distance life_explorer_wreck <= 15 || !alive player};

// Check if player is still alive.
if (!alive player) exitWith {
	["TaskFailed", ["Underwater Archaeology", "Mission fallada, moriste!"]] call BIS_fnc_showNotification;
	life_explorer_task setTaskState "Failed";
	player removeSimpleTask life_explorer_task;
	deleteVehicle life_explorer_wreck;
};

// Remove task.
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
["TaskDone", ["Underwater Archaeology", "Encontraste un naufragio!"]] call bis_fnc_showNotification;

// Create new task.
[] spawn  {
	sleep 2;
	life_explorer_task = player createSimpleTask ["uw_exploration"];
	life_explorer_task setSimpleTaskDescription ["Vaya al jefe y firmar su fondo.", "Underwater Archaeology",""];
	life_explorer_task setTaskState "Assigned";
	player setCurrentTask life_explorer_task;
	["TaskAssigned", ["Underwater Archaeology", "Vaya al jefe y reportar su hallazgo"]] call bis_fnc_showNotification;
};

// Wait until player reaches ai.
waitUntil { player distance life_explorer_ai <= 4 };
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;
deleteVehicle life_explorer_wreck;

_txt = parseText format ["Genial, lo encontró! Esto nos ayuda muchísimo! Aquí está su pago: <t color='#99C101'>$%1</t>", _pay];
"Underwater Archaeology" hintC [_txt];

life_cash = life_cash + _pay;

sleep 1;
["TaskDone", ["Underwater Archaeology", "Se ha conectado a ti mismo en el jefe."]] call bis_fnc_showNotification;