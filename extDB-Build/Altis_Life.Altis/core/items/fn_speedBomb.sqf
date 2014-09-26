/*
	File: fn_speedBomb.sqf
	Author: Fuzz
	
	Description:
	Attaches a speed bomb to a vehicle.
*/
private["_unit"];
_unit = cursorTarget;
 
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "No puedes añadir una Bomba de velocidad a esta unidad"};
if(player distance _unit > 7) exitWith {hint "You need to be within 7 feet!"};
if(!([false,"speedbomb",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
 
life_action_inUse = true;
 
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
 
life_action_inUse = false;
if(player distance _unit > 7) exitWith {titleText["No estas en el rango!","PLAIN"];};
 
titleText["Has pegado una bomba lapa que se activa con la velocidad en este vehiulo.","PLAIN"];
life_experience = life_experience + 25; 
 
[_unit] spawn
{
	_veh = _this select 0;
	waitUntil {(speed _veh) > 70};
	[[_veh, "caralarm",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
	hint "Una bomba de velocidad que plantaste en un vehículo acaba de convertirse en activo!";
	{ [[2,"Una bomba de velocidad se ha activado en este vehículo y detonará cuando la velocidad cae por debajo 50km/h!"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
	waitUntil {(speed _veh) < 50};
	serv_killed = [player,"1090"];
	publicVariableServer "serv_killed";
	_test = "Bo_Mk82" createVehicle [0,0,9999];
	_test setPos (getPos _veh);
	_test setVelocity [100,0,0];
	hint "Una bomba de velocidad que plantaste en un vehículo ha detonado!";
};