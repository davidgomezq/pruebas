/*
	File: fn_copDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default cop configuration.
*/
//Strip the player down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

//Load player with default cop gear.
player addUniform "U_Rangemaster";
player addHeadgear "B_Kitbag_cbr";
player addVest "V_Rangemaster_belt";
// WEAPONS
player addweapon "hgun_P07_snds_F";
//player addweapon "arifle_TRG20_Holo_F";

//WEAPON MAGAZINES
player addMagazine "30Rnd_556x45_Stanag";
player addMagazine "30Rnd_556x45_Stanag";
player addMagazine "30Rnd_556x45_Stanag";

//PISTOL MAGAZINES
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["FirstAidKit",1];
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["Medikit",1];
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["ToolKit",1];


[] call life_fnc_saveGear;