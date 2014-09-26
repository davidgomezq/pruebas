/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
switch (license_civ_donador) do 
{
	default {life_paycheck = life_paycheck + 1150;};
};
switch (license_civ_donador2) do 
{
	default {life_paycheck = life_paycheck + 1500;};
};
switch (license_civ_donador3) do 
{
	default {life_paycheck = life_paycheck + 1500;};
};


private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_5 = nearestObjects[getMarkerPos  "civ_spawn_5", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_6 = nearestObjects[getMarkerPos  "civ_spawn_6", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};


if (!life_is_alive) then
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	life_is_alive = true; // Just in-case the player disconnects before choosing a spawn position I guess? Otherwise debug island it is!
}	
else 
{
	if(life_is_arrested) then
				{
				life_is_arrested = false;
				[player,true] spawn life_fnc_jail;
				} 
					else 
						{
						player setPos civ_position;
						//hint format["Tu personaje estaba vivo. Has sido situado en tu ultima posicion."];
						};	
	life_is_alive = true;
}; 

player addRating 9999999;
[] call life_fnc_zoneCreator;
[] execVM "welcome.sqf";
 
 
 if ((uniform player) == "U_C_Poloshirt_stripped")  then {
player setObjectTextureGlobal [0, "textures\U_C_Poloshirt_stripped.jpg"];
};
