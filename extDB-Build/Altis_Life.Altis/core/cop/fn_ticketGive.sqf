/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Persona dado multa es nula"};
if(isNull life_ticket_unit) exitWith {hint "Persona dado multa no existe."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "No metiste un numero de formato valido."};
if((parseNumber _val) > 100000) exitWith {hint "Tickets can not be more than $100,000!"};
[[0,format["%1 dio una multa de $%2 a %3",profileName,[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_ticketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;