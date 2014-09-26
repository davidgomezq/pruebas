if (alive player) then
{	
	closeDialog 0;
	
	hint"Podras Abandonar en 30";
	
	
	//Setup our camera view
	life_salir  = "CAMERA" camCreate (getPosATL player);
	showCinemaBorder false;
	//"rendertarget0" setPiPEffect [0];
	life_salir cameraEffect ["INTERNAL", "BACK"];
	life_salir camSetTarget player;
	life_salir camSetRelPos [0,3.5,4.5];
	life_salir camSetFOV .5;
	life_salir camSetFocus [50,0];
	life_salir camCommit 0;
	player switchMove "AmovPercMstpSsurWnonDnon";//Making a player owner surrender
	player allowdamage false;
	sleep 30;
	
	
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadGear player;
	removeAllWeapons player;
	
	
	"end1" call BIS_fnc_endMission;
	
};
