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


_crate addWeaponCargoGlobal ["launch_NLAW_F", 50];
_crate addWeaponCargoGlobal ["launch_RPG32_F", 50];


////Launcher Ammo////


_crate addMagazineCargoGlobal ["RPG32_F", 50];
_crate addMagazineCargoGlobal ["NLAW_F", 50];





//sleep 500;
//};