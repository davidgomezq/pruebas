#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Determinds the upgrade price and blah
*/
private["_maxMembers","_slotUpgrade","_upgradePrice"];
_maxMembers = grpPlayer getVariable ["gang_maxMembers",8];
_slotUpgrade = _maxMembers + 4;
_upgradePrice = round(_slotUpgrade * (__GETC__(life_gangUpgradeBase)) / (__GETC__(life_gangUpgradeMultipler)));

_action = [
	format["Has mejorado el numero maximo de miembros permitidos para tu Pandilla.<br/><br/>Altual NªMax: %1<br/>Mejora Max a: %2<br/>Precio: <t color='#8cff9b'>$%3</t>",_maxMembers,_slotUpgrade,[_upgradePrice] call life_fnc_numberText],
	"Mejorar Limite usuarios de la Pandilla",
	"Comprar",
	"Cancelar"
] call BIS_fnc_guiMessage;

if(_action) then {
	if(life_atmcash < _upgradePrice) exitWith {
		hint parseText format[
			"No tienes demasiado dinero en la cuenta bancaria para mejorar el limite maximo de miembros permitidos.<br/><br/>Current: <t color='#8cff9b'>$%1</t><br/>Restante: <t color='#FF0000'>$%2</t>",
			[life_atmcash] call life_fnc_numberText,
			[_upgradePrice - life_atmcash] call life_fnc_numberText
		];
	};
	__SUB__(life_atmcash,_upgradePrice);
	grpPlayer setVariable["gang_maxMembers",_slotUpgrade,true];
	hint parseText format["Has mejorado de %1 a %2 maximmos miembros por <t color='#8cff9b'>$%3</t>",_maxMembers,_slotUpgrade,[_upgradePrice] call life_fnc_numberText];
	[[2,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
} else {
	hint "Mejora Cancelada.";
};