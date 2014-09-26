/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Pmc Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_O_CombatUniform_oucamo",nil,5000]
			
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Booniehat_mcamo",nil,850],
			["H_Booniehat_indp",nil,850],
			["H_Booniehat_khk",nil,800],
			["H_MilCap_ocamo",nil,2500],
			["H_MilCap_mcamo",nil,1200],
			["H_MilCap_blue",nil,2200],
			["H_MilCap_dgtl",nil,650],
			["H_MilCap_gry",nil,2500],
			["H_MilCap_rucamo",nil,1200],
			["H_MilCap_oucamo",nil,2200],
			["H_Watchcap_blk",nil,650],
			["H_Watchcap_khk",nil,2500],
			["H_Watchcap_camo",nil,1200],
			["H_Watchcap_sgg",nil,2200],
			["H_Booniehat_khk_hs",nil,650],
			["H_Cap_oli_hs",nil,1200],
			["H_Bandanna_khk_hs",nil,2200]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_PlateCarrierGL_rgr",nil,12500]			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Carryall_oucamo",nil,2500],
			["I_UAV_01_backpack_F","UAV Vigilancia",50000]
		];
	};
};