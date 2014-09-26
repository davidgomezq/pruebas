/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_frogZones","_woodZones","_hopfenZones","_malzZones","_tabacoZones","_fichasZones"];
_appleZones = ["apple_1","apple_2","apple_3","apple_4","apple_5","apple_6"];
_peachZones = ["peaches_1","peaches_2","peaches_3","peaches_4","peaches_5","peaches_6"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_frogZones = ["frog_swamp1"];
_woodZones = ["wood_1","wood_2","wood_3","wood_4","wood_5"];
_malzZones = ["malz_1","malz_2"];
_hopfenZones = ["hopfen_1","hopfen_2"];
_tabacoZones = ["tabaco_1","tabaco_2","tabaco_3","tabaco_4"];
_fichasZones = ["ficha_1"];

{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_madera = player addAction['Coger madera',life_fnc_recolectarmaderaAction,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_madera;"];
} foreach _woodZones;

{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_malta = player addAction['Coger malta',life_fnc_recolectarmaltaAction,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_malta;"];
} foreach _malzZones;

{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_lupulo = player addAction['Coger lupulo',life_fnc_recolectarlupuloAction,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_lupulo;"];
} foreach _hopfenZones;

//Create frog zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Frogs = player addAction['Coger rana',life_fnc_CatchFrogAction,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Frogs;"];
} foreach _frogZones;

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Coger manzanas',life_fnc_gatherApples,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Coger melocoton',life_fnc_gatherPeaches,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Coger Heroina',life_fnc_gatherHeroin,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Coger Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Coger Cocaina',life_fnc_gatherCocaine,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create tabaco zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_tabaco = player addAction['Coger hoja tabaco',life_fnc_gathertabaco,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_tabaco;"];
} foreach _tabacoZones;

/*
//Create fichas zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[1,1,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_fichas = player addAction['Robar fichas casino',life_fnc_gatherfichas,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_fichas;"];
} foreach _fichasZones;
*/