#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Pulls up the menu and creates the gang?
*/
private["_gangName","_length","_badChar","_chrByte","_allowed"];
disableSerialization;

_gangName = ctrlText (getControl(2520,2522));
_length = count (toArray(_gangName));
_chrByte = toArray (_gangName);
_allowed = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ ");
if(_length > 32) exitWith {hint "No puede tener mas de 32 caracteres."};
_badChar = false;
{if(!(_x in _allowed)) exitWith {_badChar = true;};} foreach _chrByte;
if(_badChar) exitWith {hint "Has introducido un carcter no valido en el nombre de tu pandilla. Este solo puede contener numeros y letras con un guión bajo";};
if(life_atmcash < (__GETC__(life_gangPrice))) exitWith {hint format["No tienes tanto dinero en tu cuenta bancaria.\n\nTe falta: $%1",[((__GETC__(life_gangPrice))-life_atmcash)] call life_fnc_numberText];};

[[player,getPlayerUID player,_gangName],"TON_fnc_insertGang",false,false] spawn life_fnc_MP;
hint "Enviando informacion al servidor por favor espere.....";
closeDialog 0;
life_action_gangInUse = true;