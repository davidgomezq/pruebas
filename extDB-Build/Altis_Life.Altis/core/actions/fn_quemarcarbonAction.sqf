/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_madera;
if (life_inv_madera <= 0) exitWith { hint "No tienes madera"; };

if (([false, "madera", _amount] call life_fnc_handleInv)) then {
	titleText["quemar madera...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 5;
	if (([true, "carbon", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Hiciste %1 carbon", _amount], "PLAIN"];
	};
};