/*
	File: fn_marijuana.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Marijuana is bad, mmkay?
*/

if (!([false,"marijuana",1] call life_fnc_handleInv)) exitWith {};

life_drug_level = life_drug_level + 0.05;
if (life_drug_level > 1) then { life_drug_level = 1; };
systemChat "Smoke Weed Everyday!";
[] call life_fnc_hudUpdate;
["marijuana"] call life_fnc_drugUsed;

if (!life_smoking) then
{
	_pe = "#particlesource" createVehicle (getpos player);
	_pe setParticleCircle [0, [0, 0, 0]];
	_pe setParticleRandom [2, [0.1, 0.1, 0], [0.05, 0.05, 0.3], 0.3, 0.25, [1, 1, 1, 1], 0, 0];
	_pe setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 1, 2, 8,0], "", "Billboard", 1, 3, [0, 0, 0], [0, 0, 0.5], 0, 10.1, 7.9, 0.01, [0.1, 0.1, 0.2], [[1,1,1,1], [1,1,1,1]], [0.3,0.2], 1, 0, "", "", nil];
	_pe setDropInterval 0.015;
	_pe attachTo [player,[0,0,0],"head"];
	waitUntil { life_drug_level == 0; };
	detach _pe;
	deleteVehicle _pe;
};