/////////   MP Ammo Box script
/////////   By: Riouken
/////////   For Arma 3

if (! isServer) exitWith {};


_crate = _this select 0;




//while {alive _crate} do
//{


clearMagazineCargo _crate;
clearWeaponCargo _crate;
clearItemCargoGlobal _crate;
///NATO Weapons///





////Launchers////

_crate addWeaponCargoGlobal ["launch_RPG32_F",1];
_crate addWeaponCargoGlobal ["srifle_LRR_SOS_F",1];
_crate addWeaponCargoGlobal ["arifle_MXM_Black_F",5];
_crate addWeaponCargoGlobal ["arifle_Katiba_F",5];
_crate addWeaponCargoGlobal ["srifle_EBR_F",3];
_crate addWeaponCargoGlobal ["LMG_Zafir_pointer_F",2];



