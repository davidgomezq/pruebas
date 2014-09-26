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

_crate addWeaponCargoGlobal ["U_B_survival_uniform",5];
_crate addItemCargoGlobal ["U_I_GhillieSuit",5];
_crate addWeaponCargoGlobal ["U_B_CombatUniform_mcam_worn",5];
_crate addItemCargoGlobal ["H_HelmetB_light_black",5];
_crate addItemCargoGlobal ["H_HelmetB",5];
_crate addItemCargoGlobal ["H_HelmetB_black",5];
_crate addItemCargoGlobal ["V_PlateCarrier1_blk",5];
_crate addItemCargoGlobal ["V_RebreatherIR",5];
_crate addItemCargoGlobal ["V_TacVestIR_blk",5];
_crate addbackpackcargoGlobal ["B_Carryall_oucamo",10];
_crate addItemCargoGlobal ["V_PlateCarrier3_rgr",20];
//_this addItemCargoGlobal ["blastingcharge",20];

// Wait the duration of _refreshTime

