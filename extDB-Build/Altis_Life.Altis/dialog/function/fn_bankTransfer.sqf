/*
	File: fn_bankTransfer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out again.
*/
private["_val","_unit","_tax"];
_val = parseNumber(ctrlText 2702);
_unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])];
if(isNull _unit) exitWith {};
if((lbCurSel 2703) == -1) exitWith {hint "No has seleccionado a nadie para transferir"};
if(isNil "_unit") exitWith {hint "El jugador seleccionado no existe?"};
if(_val > 999999) exitWith {hint "No puedes transferir mas de 999.999€";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Eso no es un numero valido."};
if(_val > life_atmcash) exitWith {hint "No tienes tanto dinero en tu cuenta del banco!"};
_tax = [_val] call life_fnc_taxRate;
if((_val + _tax) > life_atmcash) exitWith {hint format["No tienes tant tanto dinero en cuenta del banco, para transferir $%1 necesitaras $%2 como impuesto.",_val,_tax]};

life_atmcash = life_atmcash - (_val + _tax);

[[_val,profileName],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
[] call life_fnc_atmMenu;
hint format["Has transferido $%1 a %2.\n\nUn impuesto de $%3 fue cobrado por la transaccion.",[_val] call life_fnc_numberText,_unit getVariable["realname",name _unit],[_tax] call life_fnc_numberText];
[] call SOCK_fnc_updateRequest; //Silent Sync