/*
	Author: synced-gaming.de
*/
private["_sum"];
_sum = ["methy",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (life_inv_labkit <= 0) exitWith { hint "Obtener una primero Laborkit!"; };
if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Planta de methylamine...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 5;
	sleep 8;
	if(([true,"methy",4] call life_fnc_handleInv)) then
	{
		titleText["Robaste methylamine!","PLAIN"];
	};
}
	else
{
	hint "Tu inventario esta lleno";
};

life_action_inUse = false;
