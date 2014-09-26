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
_crate addWeaponCargoGlobal ["Rangefinder",20];
_crate addItemCargoGlobal ["NVGoggles",20];
_crate addItemCargoGlobal ["FirstAidKit",100];
_crate addItemCargoGlobal ["ToolKit",20];
_crate addItemCargoGlobal ["ItemCompass",20];
_crate addItemCargoGlobal ["ItemGPS",20];
_crate addItemCargoGlobal ["muzzle_snds_H",5];
_crate addItemCargoGlobal ["muzzle_snds_B",2];


