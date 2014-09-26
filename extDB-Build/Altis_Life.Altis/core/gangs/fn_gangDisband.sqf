#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Prompts the user about disbanding the gang and if the user accepts the gang will be
	disbanded and removed from the database.
*/
private["_action"];

_action = [
	"está a punto de disolver la pandilla, por la disolución de la pandilla se eliminará de la base de datos y el grupo será dado de baja.<br/><br/>Estas seguro que quieres disolver la pandillaAre you sure you want to disband the group? You will not be refunded the price for creating it.",
	"Disolver Pandilla",
	"Si",
	"No"
] call BIS_fnc_guiMessage;

if(_action) then {
	hint "Disolviendo la pandilla....";
	[[grpPlayer],"TON_fnc_removeGang",false,false] spawn life_fnc_MP;
} else {
	hint "Disolucion cancelada";
};