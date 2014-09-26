


if (alive player) then
{	
	[] call SOCK_fnc_updateRequest; //call our silent sync.
	closeDialog 0;
	player switchMove "AmovPercMstpSsurWnonDnon";//Making a player owner surrender
	player allowdamage false;
	sleep 30;
	hint "Tienes que esperar 30 segundos";
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadGear player;
	removeAllWeapons player;
	call BIS_fnc_endMission;
	player setdamage 0;
};
