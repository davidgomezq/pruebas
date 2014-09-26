/*
	File:
*/
private["_packet","_array","_flag","_civPosition"];
_civPosition = getPos player;
diag_log format ["%1",_civPosition];
_packet = [getPlayerUID player,(profileName),playerSide,life_cash,life_atmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"copeast"};};
{
	if(_x select 1 == _flag) then
	{
		_array set[count _array,[_x select 0,(missionNamespace getVariable (_x select 0))]];
	};
} foreach life_licenses;

_packet set[count _packet,_array];
switch (playerSide) do {
	case west: {_packet set[count _packet,cop_gear];};

	case east: {
		[] call life_fnc_saveGearcopeast;
		_packet set[count _packet,copeast_gear];
	};


	case civilian: {
		[] call life_fnc_civFetchGear;
		_packet set[count _packet,civ_gear];
		_packet set[count _packet,life_is_arrested];
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];

	};
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;