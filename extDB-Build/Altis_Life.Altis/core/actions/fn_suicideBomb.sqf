/*
	ALAH SNACKBAR!
*/
private["_test"];
if(vest player != "V_HarnessOGL_gry") exitWith {};
[[2,"Alguien va a explotar en 10 segundos!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
sleep 5;
[[2,"Alguien va a explotar en 5 segundos!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
sleep 4;
[[2,"INFIELES¡¡!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
sleep 1;
_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;

[[2,format["%1 se ha ido a la puta.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;