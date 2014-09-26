/*
	File: fn_zipTie.sqf
	Author: Bad^^Eye
	
	Description:
	Main functionality for civ restrain
*/
private["_attacker","_victim","_chance"];
_attacker = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_victim = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if((isNull _attacker)||(isNull _victim)) exitWith {};


_chance = random(100);

if (_chance < 100) then 
{	
	_victim setVariable["zipTie",true,true];
	[[format["%1 Ha dado vuelta a una vida de secuestro!",name _attacker]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[getPlayerUID _attacker,name _attacker,"207"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	titleText["You were tied with cable ties!","PLAIN"];
}
else
{
	_victim setVariable ["zipTie",false,true];
	[[format["%1 fue visto tratando de secuestrar a alguien!",name _attacker]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[getPlayerUID _attacker,name _attacker,"207A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	titleText["Alguien trato de secuestrale!","PLAIN"];
};
	
while {_victim getVariable "zipTie"} do
{
	_victim playMove "AmovPercMstpSnonWnonDnon_Ease";
	waitUntil {animationState _victim != "AmovPercMstpSnonWnonDnon_Ease" || !(_victim getVariable "zipTie")};
	if(!alive _victim) then
	{
		_victim setVariable ["zipTie",false,true];
	};
};
	