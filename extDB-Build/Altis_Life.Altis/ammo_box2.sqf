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
_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",50];
_crate addMagazineCargoGlobal ["RPG32_F",4];
_crate addMagazineCargoGlobal ["7Rnd_408_Mag",10];
_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_green",50];
_crate addMagazineCargoGlobal ["20Rnd_762x51_Mag",30];
_crate addMagazineCargoGlobal ["150Rnd_762x51_Box",10];



