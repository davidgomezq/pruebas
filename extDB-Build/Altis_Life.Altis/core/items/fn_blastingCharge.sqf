/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_vault","_handle"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vault) exitWith {}; //Bad object
if(typeOf _vault != "Land_CargoBox_V1_F") exitWith {hint "Esto solo se puede utilizar en una cajafuerte."};
if(_vault getVariable["chargeplaced",false]) exitWith {hint "Ya existe una carga colocada en esta cajafuerte."};
if(_vault getVariable["safe_open",false]) exitWith {hint "La cajafuerte ya está abierta."};
if(!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //Error?

/*
_cops = { (isPlayer _x) && (side (group _x) == west) } count playableUnits;
if (_cops < 3) exitWith {
hint format ["La caja fuerte del Banco no puede ser abierta por que solo hay %1 policia(s) online.", _cops];};
*/

_vault setVariable["chargeplaced",true,true];
[[1,"Un carga explosiva se ha colocado en la caja fuerte del banco central, tiene hasta que la cuenta atras termine para desactivarla!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
hint "El tiempo esta corriendo¡ Mantenga a los policias lejos de esta caja fuerte¡";
_handle = [] spawn life_fnc_demoChargeTimer;
[[],"life_fnc_demoChargeTimer",west,false] spawn life_fnc_MP;
[[],"life_fnc_demoChargeTimer",east,false] spawn life_fnc_MP;

waitUntil {scriptDone _handle};
sleep 0.9;
if(!(fed_bank getVariable["chargeplaced",false])) exitWith {hint "La carga ha sido desactivada!"};

_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL fed_bank select 0, getPosATL fed_bank select 1, (getPosATL fed_bank select 2)+0.5];
fed_bank setVariable["chargeplaced",false,true];
fed_bank setVariable["safe_open",true,true];

hint "La caja fuerte ha sido abierta";
