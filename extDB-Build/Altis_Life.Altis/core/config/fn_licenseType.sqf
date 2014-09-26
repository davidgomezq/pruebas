/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license 
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "caireast": {_var = "license_copeast_air"}; //Cop Pilot License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "copper": {_var = "license_civ_copper"};
			case "iron": {_var = "license_civ_iron"};
			case "cocaine": {_var = "license_civ_coke"};
			case "kart": {_var = "license_civ_kart"};
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "donador": {_var = "license_civ_donador"};
			case "donador2": {_var = "license_civ_donador2"};
			case "donador3": {_var = "license_civ_donador3"};
			case "avion": {_var = "license_civ_avion"};
			case "turtle": {_var = "license_civ_turtle"};
			case "caparazon": {_var = "license_civ_caparazon"};
			case "tabaco": {_var = "license_civ_tabaco"};
			case "taxi": {_var = "license_civ_taxi"};
			case "sidra": {_var = "license_civ_sidra"};
			case "cerveza": {_var = "license_civ_cerveza"};
			case "aceroinoxidable": {_var = "license_civ_aceroinoxidable"};
			case "pmc": {_var = "license_civ_pmc"};
			case "pasaporteesp": {_var = "license_civ_pasaporteesp"}; 
			case "pasaportemaroc": {_var = "license_civ_pasaportemaroc"}; 
			case "rubiu": {_var = "license_civ_rubiu"}; 
			case "geos": {_var = "license_cop_geos"}; 
			case "geoseast": {_var = "license_copeast_geos"}; 
			case "bountyh": {_var = "license_civ_bountyh"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_copeast_air": {_var = "caireast"}; //Cop Pilot License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_kart": {_var = "kart"};
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_donador": {_var = "donador"};
			case "license_civ_donador2": {_var = "donador2"};
			case "license_civ_donador3": {_var = "donador3"};
			case "license_civ_avion": {_var = "avion"};
			case "license_civ_turtle": {_var = "turtle"};
			case "license_civ_caparazon": {_var = "caparazon"};
			case "license_civ_tabaco": {_var = "tabaco"};
			case "license_civ_taxi": {_var = "taxi"};
			case "license_civ_sidra": {_var = "sidra"}; //sidra License
			case "license_civ_cerveza": {_var = "cerveza"}; //sidra License
			case "license_civ_aceroinoxidable": {_var = "aceroinoxidable"}; //aceroinoxidable License
			case "license_civ_pmc": {_var = "pmc"}; //sidra License
			case "license_civ_pasaporteesp": {_var = "pasaporteesp"}; 
			case "license_civ_pasaportemaroc": {_var = "pasaportemaroc"};
			case "license_cop_rubiu": {_var = "rubiu"}; 
			case "license_cop_geos": {_var = "geos"}; 
			case "license_copeast_geos": {_var = "geoseast"};
			case "bountyh": {_var = "license_civ_bountyh"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;