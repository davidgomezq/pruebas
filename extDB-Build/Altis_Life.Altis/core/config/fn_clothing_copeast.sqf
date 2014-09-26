#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms  U_O_CombatUniform_oucamo
	case 0:
	{
		_ret set[count _ret,["U_O_OfficerUniform_ocamo","Gendarme Uniforme",0]];
		_ret set[count _ret,["U_O_Wetsuit","Traje de buzo",0]];
		
		if(license_copeast_geos) then
		{
			_ret set[count _ret,["U_O_CombatUniform_oucamo","Unidad Especial",0]];
			_ret set[count _ret,["U_O_GhillieSuit","Ghillie",0]];
			_ret set[count _ret,["U_B_survival_uniform","Traje de buzo GEO",0]];
			
		};
		[] call SOCK_fnc_updateRequest;
	};
	
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Beret_brn_SF","Boina",0]];		
		if(license_copeast_geos) then
		{	
		
			_ret set[count _ret,["H_Booniehat_mcamo",nil,0]];
			_ret set[count _ret,["H_HelmetB_light_black","Casco Geo",0]];
			_ret set[count _ret,["H_HelmetB",nil,0]];	
            _ret set[count _ret,["H_HelmetB_black","Casco para gays",0]];			
			_ret set[count _ret,["H_MilCap_mcamo",nil,0]];
			_ret set[count _ret,["H_MilCap_oucamo",nil,0]];
		
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,100]
		];
		if(license_copeast_geos) then
		{
			_ret set[count _ret,
			["G_Balaclava_lowprofile",nil,0]];
			_ret set[count _ret,
			["G_Balaclava_combat",nil,0]];
			_ret set[count _ret,
			["G_Balaclava_oli",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_aviator",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_beast",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_tan",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_sport",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_blk",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_oli",nil,0]];
			_ret set[count _ret,
			["G_Bandanna_shades",nil,0]];
		
		};
		
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,0]];
		//agente
		if(__GETC__(life_copeastlevel) > 0) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,0]];
			_ret set[count _ret,["V_RebreatherIR",nil,0]];
		};	
		
		//oficial hasta teniente
		if(__GETC__(life_copeastlevel) > 2) then
		{
			_ret set[count _ret,["V_PlateCarrier3_rgr",nil,0]];
			_ret set[count _ret,["V_Chestrig_blk",nil,0]];
			_ret set[count _ret,["V_TacVest_blk",nil,0]];	
			_ret set[count _ret,["V_TacVestIR_blk",nil,0]];	
			_ret set[count _ret,["V_Press_F",nil,0]];				
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
		
			["B_Kitbag_cbr",nil,0],
			["B_FieldPack_cbr",nil,0],
			["B_AssaultPack_cbr",nil,0],
			["B_Bergen_sgg",nil,0],
			["B_Parachute",nil,0]
			
					
		];
		
		if(license_copeast_geos) then
		{			
			_ret set[count _ret,
			["B_Carryall_oucamo",nil,0]];
			_ret set[count _ret,
			["B_UAV_01_backpack_F","UAV",50000]];
		};
		
	};
};

_ret;
