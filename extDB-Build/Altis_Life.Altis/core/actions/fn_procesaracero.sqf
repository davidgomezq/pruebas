/*
	@Author: [KNG]MOGGY , Killernetworkgaming.com
*/
private ["_amount"];
_amount = life_inv_ironr;
if (life_inv_ironr <= 0) exitWith { hint "No tienes Hierro procesado."; };
if(vehicle player != player) exitWith {hint "No puedes hacerlo desde el coche, salte de el!"};

if (([false, "iron_r", _amount] call life_fnc_handleInv)) then {
	titleText["forgando acero...", "PLAIN"];
	titleFadeOut 4.5;
	sleep 6;
	if (([true, "acero", _amount] call life_fnc_handleInv)) then 
	{
		titleText [format ["Hiciste %1 acero forjado.", _amount], "PLAIN"];
	};
};