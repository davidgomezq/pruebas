/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donador's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",250],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
		["U_C_Poloshirt_stripped","Poloshirt stripped",125],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
		["U_C_Poor_2","Rag tagged clothes",250],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
		["U_IG_Guerilla2_3","The Outback Rangler",1200],
		["U_C_HunterBody_grn","The Hunters Look",1500],
		["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
		["U_Competitor","Competitor Suit",2500],
		["U_NikosBody","Kimono",5000],
		["U_NikosAgedBody","Corbata",5000],
		["U_OrestesBody","Surfing On Land",1100],
		["U_IG_Guerilla1_1",nil,2500],
		["U_I_G_Story_Protagonist_F",nil,3000],
		["U_I_G_resistanceLeader_F",nil,5250],
		["U_O_SpecopsUniform_ocamo",nil,8500],
		["U_O_PilotCoveralls",nil,7610],
		["U_IG_leader","Guerilla Leader",7340],
		["U_O_GhillieSuit",nil,25000],
		["U_I_CombatUniform",nil,6000],
		["U_I_OfficerUniform",nil,6000],
		["U_BG_Guerrilla_6_1",nil,6000],
		["U_C_Scientist",nil,6000],
		["U_I_Wetsuit",nil,1500],
		["U_B_Wetsuit",nil,2000],
		["U_BG_Guerilla2_1",nil,6000],
		["U_I_Protagonist_VR",nil,12000],
		["U_O_Protagonist_VR",nil,12000],
		["U_B_Protagonist_VR",nil,12000],
		["U_B_CTRG_1",nil,6000]
		
		];
		//[] call life_fnc_setUniformTexture;
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150],
			["H_ShemagOpen_tan",nil,300],
			["H_Shemag_olive",nil,300],
			["H_Shemag_olive_hs",nil,300],
			["H_ShemagOpen_tan",nil,300],
			["H_ShemagOpen_khk",nil,300],
			["H_MilCap_oucamo",nil,600],
			["H_Bandanna_camo",nil,300],
			["H_HelmetCrew_I",nil,1200],
			["H_HelmetO_ocamo",nil,1000],
			["H_HelmetIA",nil,1200],
			["H_Cap_headphones",nil,300],
			["H_Hat_camo",nil,300],
			["H_Beret_Colonel",nil,300]
			
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
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_I_Diving",nil,55]
			
		];
	};
	
	//Vest
	case 3:
	{
		[
		    ["V_TacVest_khk",nil,6000],
			["V_BandollierB_cbr",nil,2000],
			["V_BandollierB_blk",nil,2000],
			["V_HarnessO_brn",nil,3000],
			["V_TacVest_camo",nil,5000],
			["V_HarnessOGL_gry",nil,5000],
			["V_PlateCarrierIA2_dgtl",nil,5000],
			["V_RebreatherIR",nil,5000]
		
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,1200],
			["B_Kitbag_mcamo",nil,2000],
			["B_TacticalPack_oli",nil,1750],
			["B_FieldPack_ocamo",nil,1500],
			["B_Bergen_sgg",nil,2000],
			["B_Kitbag_cbr",nil,2000],
			["B_Carryall_oli",nil,2500],
			["B_Parachute",nil,2500],
			["B_Carryall_khk",nil,2500],
			["B_AssaultPack_dgtl",nil,2500],
			["B_FieldPack_blk",nil,2500],
			["B_Kitbag_rgr",nil,2500],
			["B_FieldPack_oucamo",nil,2500],
			["B_AssaultPack_blk",nil,2500],
			["B_Carryall_mcamo",nil,2500]
			
		];
	};
};
