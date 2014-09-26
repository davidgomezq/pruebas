/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_frog;
if (life_inv_frog <= 0) exitWith { hint "no tienes ranas."; };

if (([false, "rana", _amount] call life_fnc_handleInv)) then {
	titleText["Cocinando LSD...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "ranalsd", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Cocinaste %1 LSD.", _amount], "PLAIN"];
	};
};