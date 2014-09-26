/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Breaks the lock on a single door (Closet door to the player).
*/
private["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];
_building = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _building) exitWith {};
if(!(_building isKindOf "House_F")) exitWith {hint "No estas mirando la puerta."};
_cops = { (isPlayer _x) && (side (group _x) == west) } count playableUnits;
if (_cops < 5) exitWith {
hint format ["No puedes forzar la puerta si no hay 5 policias y hay %1 policia(s) online.", _cops];};

if(isNil "life_boltcutter_uses") then {life_boltcutter_uses = 0;};
if((nearestObject [[15473.15,15705.463,-0.018241169],"Land_Dome_Big_F"]) == _building 
OR (nearestObject [[5477.9092,15002.27,29.29999],"Land_Dome_Big_F"]) == _building 
OR (nearestObject [[15473.15,15705.463,-0.018241169],"Land_Research_house_V1_F"]) == _building 
OR (nearestObject [[5477.9092,15002.27,29.29999],"Land_Research_house_V1_F"]) == _building 
OR (nearestObject [[16640.793,15695.068,5.5576954],"Land_Cargo_Tower_V1_No5_F"]) == _building 
OR (nearestObject [[16677.453,15715.972,5.1460938],"Land_Cargo_Tower_V1_No5_F"]) == _building
OR (nearestObject [[16158.405,16963.377,0],"Land_Research_house_V1_F"]) == _building
OR (nearestObject [[16013.316,17043.652,0],"Land_Research_house_V1_F"]) == _building
OR (nearestObject [[16079.912,17088.65,0],"Land_Research_house_V1_F"]) == _building
OR (nearestObject [[16155.282,17058.164,0],"Land_Research_house_V1_F"]) == _building


) 


then {
	[[[1,2],"!!!!! AVISO DE ALLANAMIENTO VER MAPA PARA CONFIRMAR POSICION !!!!!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
} else {
	[[0,format["%1 fue visto intentando entrar en una casa.",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[0,format["%1 fue visto intentando entrar en una casa.",profileName]],"life_fnc_broadcast",east,false] spawn life_fnc_MP;
};

_Pos = position player; // by ehno: get player pos
_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
"Marker200" setMarkerColor "ColorRed";
"Marker200" setMarkerText "!ATENCION! Allanamiento !ATENCION!";
"Marker200" setMarkerType "mil_warning";		


_doors = 1;
while {true} do {
	if(!isClass(configFile >> "CfgVehicles" >> (typeOf _building) >> "AnimationSources" >> format["Door_%1_source",_doors])) exitWith {};
	_doors = _doors + 1;
};

_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
	_selPos = _building selectionPosition format["Door_%1_trigger",_i];
	_worldSpace = _building modelToWorld _selPos;
		if(player distance _worldSpace < 5) exitWith {_door = _i;};
};
if(_door == 0) exitWith {hint "No estas cerca de una puerta!"}; //Not near a door to be broken into.
if((_building getVariable[format["bis_disabled_Door_%1",_door],0]) == 0) exitWith {hint "Esta puerta esta ya abierta!"};
life_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = "Manipulando cerradura de la puerta";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.001;

switch (typeOf _building) do {
	case "Land_Dome_Big_F": {_cpRate = 0.003;};
	case "Land_Research_house_V1_F": {_cpRate = 0.0015;};
	default {_cpRate = 0.08;}
};

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.26;
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + _cpRate;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Accion cancelada","PLAIN"]; life_action_inUse = false;};
life_boltcutter_uses = life_boltcutter_uses + 1;
life_action_inUse = false;
if(life_boltcutter_uses >= 5) then {
	[false,"boltcutter",1] call life_fnc_handleInv;
	life_boltcutter_uses = 0;
};

_building setVariable[format["bis_disabled_Door_%1",_door],0,true]; //Unlock the door.
if((_building getVariable["locked",false])) then {
	_building setVariable["locked",false,true];
};
[[getPlayerUID player,profileName,"459"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;