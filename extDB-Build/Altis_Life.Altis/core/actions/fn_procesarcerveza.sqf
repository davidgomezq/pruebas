/*
	@Author: edit metalcry1 ;)
*/
private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_lupulo;
_amount2 = life_inv_malta;
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
if (life_inv_lupulo <= 0) exitWith { hint "Te falta lupulo o malta"; };
if (life_inv_malta <= 0) exitWith { hint "Te falta lupulo o malta"; };
if(vehicle player != player) exitWith {hint "No puedes hacerlo desde el coche, salte de el!"};

if(license_civ_cerveza) then
{
	if(([false,"malta",_amount2] call life_fnc_handleInv) && ([false,"lupulo",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["Cerveza casera..", "PLAIN"];
	titleFadeOut 4.5;
	sleep 6;
	if (([true, "cerveza", _amount3] call life_fnc_handleInv)) then 
	{
	titleText [format ["Hiciste %1 cerveza.", _amount3], "PLAIN"];
	};
	};
};