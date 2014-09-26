/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_frog;
if (life_inv_frog <= 0) exitWith { hint "No tienes ranas."; };

if (([false, "rana", _amount] call life_fnc_handleInv)) then {
	titleText["Cocinando Patas de rana...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "patasderana", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Cocinaste %1 patas de rana.", _amount], "PLAIN"];
	};
};