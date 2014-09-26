/*
	@Author: synced-gaming.de david, sven ;)
*/
private ["_amount1", "_amount2", "_amount3","_amount4"];
_amount1 = life_inv_heroinp;
_amount2 = life_inv_cokep;
_amount3 = life_inv_methy;
_amount4 = "";

if ((_amount1 > _amount2) && (_amount1 > _amount3) && (_amount2 > _amount3)) then  //1>2>3
{
	_amount4 = _amount3;
	_amount2 = (_amount2 - (_amount2 - _amount3));
	_amount1 = (_amount1 - (_amount1 - _amount3));
};
if ((_amount1 > _amount2) && (_amount1 > _amount3) && (_amount2 < _amount3)) then  //1>3>2
{
	_amount4 = _amount2;
	_amount3 = (_amount3 - (_amount3 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if ((_amount1 < _amount2) && (_amount1 < _amount3) && (_amount2 > _amount3)) then  //2>3>1
{
	_amount4 = _amount1;
	_amount3 = (_amount3 - (_amount3 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if ((_amount1 < _amount2) && (_amount1 > _amount3) && (_amount2 > _amount3)) then  //2>1>3
{
	_amount4 = _amount3;
	_amount2 = (_amount2 - (_amount2 - _amount3));
	_amount1 = (_amount1 - (_amount1 - _amount3));
};
if ((_amount1 < _amount2) && (_amount1 < _amount3) && (_amount2 < _amount3)) then  //3>2>1
{
	_amount4 = _amount1;
	_amount3 = (_amount3 - (_amount3 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if ((_amount1 > _amount2) && (_amount1 < _amount3) && (_amount2 < _amount3)) then  //3>1>2
{
	_amount4 = _amount2;
	_amount3 = (_amount3 - (_amount3 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if ((_amount1 > _amount2) && (_amount1 > _amount3) && (_amount2 == _amount3)) then  //1>2=3
{
	_amount4 = _amount2;
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if ((_amount1 < _amount2) && (_amount1 == _amount3) && (_amount2 > _amount3)) then  //2>1=3
{
	_amount4 = _amount1;
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if ((_amount1 == _amount2) && (_amount1 < _amount3) && (_amount2 < _amount3)) then  //3>2=1
{
	_amount4 = _amount2;
	_amount3 = (_amount3 - (_amount3 - _amount2));
};
if ((_amount1 == _amount2) && (_amount1 == _amount3) && (_amount2 == _amount3)) then  //3=2=1
{
	_amount4 = _amount1;
};
if (life_inv_labkit <= 0) exitWith { hint "No tienes Laborkit"; };
if (life_inv_heroinp <= 0) exitWith { hint "No tienes Heroina"; };
if (life_inv_cokep <= 0) exitWith { hint "No tienes cokaina"; };
if (life_inv_froglsd <= 0) exitWith { hint "No tienes Lsd"; };
if(vehicle player != player) exitWith {hint "No puedes hacerlo desde el coche, salte de el!"};

if(([false,"cocainap",_amount2] call life_fnc_handleInv) && ([false,"heroinap",_amount1] call life_fnc_handleInv) && ([false,"ranalsd",_amount3] call life_fnc_handleInv)) then 
	{
	//titleText["Koche Blue Syn...", "PLAIN"];
	//titleFadeOut 2.5;
	//sleep 2.5;
	titleText["Coosas bastantes dificiles de hacer!, se tomara su tiempo...", "PLAIN"];
	titleFadeOut 6;
	sleep 7;
	if (([true, "tripis", _amount4] call life_fnc_handleInv)) then 
	{
	titleText [format ["Hiciste %1 tripis", _amount4], "PLAIN"];
	};
	};