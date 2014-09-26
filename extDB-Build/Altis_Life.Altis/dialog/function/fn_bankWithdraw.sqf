/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint "No puedes sacar mas de 999.999€";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "No es un numero valido."};
if(_val > life_atmcash) exitWith {hint "No tienes tanto dinero en tu cuenta bancaria!"};
if(_val < 100 && life_atmcash > 20000000) exitWith {hint "No puedes sacar menos de 100€"}; //Temp fix for something.

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format ["Has sacado $%1 de tu cuenta bancaria",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call SOCK_fnc_updateRequest; //Silent Sync