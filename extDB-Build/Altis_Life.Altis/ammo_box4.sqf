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

_crate addItemCargoGlobal ["optic_NVS",10];
_crate addItemCargoGlobal ["optic_Holosight",10];
_crate addItemCargoGlobal ["optic_Arco",10];
_crate addItemCargoGlobal ["optic_MRCO",10];
_crate addItemCargoGlobal ["optic_Hamr",10];
_crate addItemCargoGlobal ["optic_Aco",20];
_crate addItemCargoGlobal ["optic_ACO_grn",20];
_crate addItemCargoGlobal ["optic_SOS",10];
_crate addItemCargoGlobal ["optic_DMS",20];
_crate addItemCargoGlobal ["optic_LRPS",2];
//_this addItemCargoGlobal ["blastingcharge",1];

// Wait the duration of _refreshTime

