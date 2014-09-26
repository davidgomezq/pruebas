/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

player addUniform "U_I_HeliPilotCoveralls";
player addHeadgear "H_Cap_tan";
player addBackpack "B_Carryall_oucamo";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "NVGoggles";
player assignItem "NVGoggles";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["FirstAidKit",1];
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["Medikit",1];
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["ToolKit",1];
[] call SOCK_fnc_updateRequest;

