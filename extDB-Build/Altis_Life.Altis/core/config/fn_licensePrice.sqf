/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "pilot": {25000}; //Pilot/air license cost	
	case "heroin": {45000}; //Heroin processing license cost
	case "gang": {10000}; //Gang license cost
	case "dive": {2000}; //Diving license cost
	case "boat": {1000}; //Boating license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "caireast": {15000}; //Cop Pilot License cost
	case "cg": {8000}; //Coast guard license cost
	case "rebel": {2000000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {35000};
	case "copper": {8000};
	case "iron": {9500};
	case "cocaine": {75000};
	case "kart" :{100000};
	case "marijuana": {29500}; //Marijuana processing license cost
	case "mair": {15000};
	case "home": {1000000};
	case "donador": {300000000};
	case "donador2": {300000000};
	case "donador3": {300000000};
	case "avion" :{1000000};
	case "turtle" :{10000};
	case "caparazon" :{25000};
	case "tabaco" : {5000};
	case "taxi" : {1500000};
	case "sidra": {150000};
	case "cerveza": {25000};
	case "aceroinoxidable": {150000};
	case "pmc": {6500000};
	case "pasaporteesp": {20000};
	case "pasaportemaroc": {20000};
	case "rubiu": {20000};
	case "geos": {20000};
	case "geoseast": {20000};
	case "bountyh":{5500000};
};