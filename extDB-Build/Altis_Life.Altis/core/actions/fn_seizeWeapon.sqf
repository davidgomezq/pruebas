/*
	File: fn_seizeWeapon.sqf
	Author: synced-gaming.de David
	
	Description:
	Seize Weapon Script
*/
[[],"life_fnc_seizeWeaponAction",cursorTarget,false] spawn life_fnc_MP;
[[52, player, format["Tienes el arma de %1 incautada.", name cursorTarget]],"STS_fnc_logIt",false,false] spawn life_fnc_MP;