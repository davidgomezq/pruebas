/*
	
*/
private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_inv_carbon;
_amount2 = life_inv_acero;
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
if (life_inv_carbon <= 0) exitWith { hint "No tienes carbon o acero"; };
if (life_inv_acero <= 0) exitWith { hint "No tienes carbon o acero"; };
if(vehicle player != player) exitWith {hint "No puedes hacerlo desde el coche, salte de el!"};

if(license_civ_aceroinoxidable) then
{
	if(([false,"acero",_amount2] call life_fnc_handleInv) && ([false,"carbon",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["Acero inoxidable se esta forgando, tomara algo de tiempo...", "PLAIN"];
	titleFadeOut 7.5;
	sleep 15;
	if (([true, "aceroinoxidable", _amount3] call life_fnc_handleInv)) then 
	{
	titleText [format ["Hiciste %1 Acero inoxidable", _amount3], "PLAIN"];
	};
	};
};