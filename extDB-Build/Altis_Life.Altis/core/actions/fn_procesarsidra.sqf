/*
	@Author: synced-gaming.de david, sven ;)
*/
private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_apple;
_amount2 = life_inv_peach;
_amount3 = "";

if (_amount1 < _amount2) then 
{
	_amount3 = (_amount2 - (_amount2 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if (_amount2 < _amount1) then 
{
	_amount3 = (_amount1 - (_amount1 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if (_amount1 == _amount2) then 
{
	_amount3 = _amount1;
};
if (life_inv_apple <= 0) exitWith { hint "No tienes manzanas o melocontes"; };
if (life_inv_peach <= 0) exitWith { hint "No tienes manzanas o melocontes"; };
if(vehicle player != player) exitWith {hint "No puedes hacerlo desde el coche, salte de el¡"};

if(license_civ_sidra) then
{
	if(([false,"peach",_amount2] call life_fnc_handleInv) && ([false,"apple",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["Sidra casera...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 6;
	if (([true, "sidra", _amount3] call life_fnc_handleInv)) then 
	{
	titleText [format ["hiciste %1 sidra casera destilada", _amount3], "PLAIN"];
	};
	};
};