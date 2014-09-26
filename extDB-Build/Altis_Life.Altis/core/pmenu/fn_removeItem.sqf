/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "No has seleccionado nada";};
if(!([_value] call fnc_isnumber)) exitWith {hint "No metiste de un numero de formato valido."};
if(parseNumber(_value) <= 0) exitWith {hint "Necesitas meter un numero valido que quieras para borrar."};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Esto es un objeto ilegal y la policia esta cerca tuya, no puedes tirarlo","PLAIN"]};
if(player != vehicle player) exitWith {titleText["No puedes borrar un objeto cuando estas en un vehiculo.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "No puedes borrar esa cantidad, quizas no tengas esta cantidad?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Has borrado satisfactoriamente %1 %2 de tu inventario.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;