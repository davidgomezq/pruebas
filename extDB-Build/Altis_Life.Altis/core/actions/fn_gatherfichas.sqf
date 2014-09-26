/*
	File: fn_gatherfichas.sqf
	
	Description:
	Gathers cocaine?
*/
private["_sum"];
_sum = ["fichas",10,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_displayName = "casino";



if(_sum > 0) then
{	
		life_action_inUse = true;
		life_action_gather = true;
		_upp = format["Robando fichas %1",_displayName];
		[[[1,2],"!!!!! AVISO SE ESTAN ROBANDO LOS FONDOS DEL CASINO !!!!!!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		[[[1,2],"!!!!! AVISO SE ESTAN ROBANDO LOS FONDOS DEL CASINO !!!!!!"],"life_fnc_broadcast",east,false] spawn life_fnc_MP;
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			sleep 0.27;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		
		titleFadeOut 5;
		//sleep 60;
		if(([true,"fichas",10] call life_fnc_handleInv)) then
		{
			titleText["Robaste fichas.","PLAIN"];
		};
		[[getPlayerUID player,name player,"489"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		
		
	
};

life_action_inUse = false;
5 cutText ["","PLAIN"];
player playActionNow "stop";
life_action_gather = false;