#include <macro.h>
/*
	No Author Needed; it's a few default lines of code
*/
if(playerSide == civilian) exitWith {};
if(playerSide == west) then 
{
	if (uniform player == "U_Rangemaster") then {
		player setObjectTextureGlobal[0,"textures\guardia_civil_uniforme_ver.paa"];
	};

	if (uniform player == "U_B_CombatUniform_mcam_worn") then {
		player setObjectTextureGlobal[0,"textures\uei.jpg"];
	};
	
	if ((backpack player) == "B_Carryall_oucamo") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\uei_mochila.jpg"];
	};
	
};

if(playerSide == east) then 
{

	if (uniform player == "U_O_OfficerUniform_ocamo") then {
		player setObjectTextureGlobal[0,"textures\gendarmes.jpg"];
	};
	
	if (uniform player == "U_O_CombatUniform_oucamo") then {
		player setObjectTextureGlobal[0,"textures\geoeast.jpg"];
	};
	
	if ((backpack player) == "B_Carryall_oucamo") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\uei_mochila.jpg"];
	};
	
};


if(playerSide == independent) then
{
	if (uniform player == "U_I_HeliPilotCoveralls") then {
		player setObjectTextureGlobal[0,"textures\emer_unimetal1.jpg"];
	};
	
	if ((backpack player) == "B_Carryall_oucamo") then {
		(unitbackpack player) setObjectTextureGlobal[0,"textures\medic_mochila.jpg"];
	};
};


///backpack
////////////////
