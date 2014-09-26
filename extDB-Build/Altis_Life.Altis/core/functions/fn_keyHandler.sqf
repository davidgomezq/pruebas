/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_player = player;


_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	/*
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	*/
	
	// O, police gate opener
    case 7:
	{
		if (!_shift && !_alt && !_ctrlKey && (playerSide == west) OR (playerSide == east) OR (playerSide == independent) && (vehicle player != player)) then {
			[] call life_fnc_copOpener;
		};
	};
	
	
	case 4:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	
	//Shift+O Zipties ( Civilians can restrain )
	case 24:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent,west,east]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
	{
	if([false,"zipties",1] call life_fnc_handleInv) then
    {
		[] call life_fnc_restrainAction;
		hint "Le atastes, usa la tecla de windows para mas opciones";
	}
		else
	{
		hint "No tienes bridas!";
	};
	};
	};
	
	//9 Nitro
	case 8:
	{
		if(!_alt && !_ctrlKey) then {
			[] spawn life_fnc_activateNitro;
		};
	};
	
	case 6:
	{
		if(!_alt && !_ctrlKey) then {
			[] spawn life_fnc_pickaxeUse;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case east: {if(!visibleMap) then {[] spawn life_fnc_copeastMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case east: {if(!visibleMap) then {[] spawn life_fnc_copeastMarkers;}};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent,east]) && alive cursorTarget && cursorTarget distance player < 5.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
		if(_shift && playerSide == east && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent,west]) && alive cursorTarget && cursorTarget distance player < 5.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainActioncopeast;
		};
	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,east,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F", "B_MRAP_01_F", "C_SUV_01_F", "C_Hatchback_01_sport_F",	"C_Hatchback_01_F","B_Heli_Light_01_F", "B_Heli_Transport_01_F", "I_Heli_light_03_unarmed_F","I_MRAP_03_hmg_F", "I_MRAP_03_F","B_APC_Wheeled_01_cannon_F", "B_MRAP_01_hmg_F","C_Offroad_01_repair_f"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west OR playerSide == east) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//F Key
	case 33:
	{
		if(playerSide in [west,east,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText ["Sirena Off","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText ["Sirena On","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west OR playerSide == east)  then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};
	
	//1 Key
	case 2:
	{
		if(side player == west OR playerSide == east) then
		{
			[] call life_fnc_wantedMenu;
		};
	};	
	
			
	//shift+2
    case 3:
    {    
        if((!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "pickaxe" || _str == "pickaxe" ) then
                    {
                        [] spawn life_fnc_pickAxeUse;
                    };
                };
            } foreach life_inv_items;
        }
    };
	
	
	case 5:
    {    
        if((!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "pala" || _str == "pala" ) then
                    {
                        [] spawn life_fnc_shovelUse;
                    };
                };
            } foreach life_inv_items;
        }
    };
	
	
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint "No estas cerca de una puerta!"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat "Has cerrado el pestillo.";
						
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat "Has abierto el pestillo.";
						
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat "Vehiculo Abierto.";
						player say3D "car_lock";
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat "Vehiculo Cerrado.";
						player say3D "unlock";
					};
				};
			};
		};
	};
	
	case 62:
	{
		if(_alt && !_shift) then
		{
			[[0,format["%1 Alt+F4",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		
		};
	};
	case 211:
	{
		if(_ctrlKey && _alt)  then 
		{
			[[0,format["%1 CTRL + Alt + DEL",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		};
	};
	
	case 1:
	{
		if( _ctrlKey )  then 
		{
			[[0,format["%1 CTRL + ESC",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		};
	};
	
	
	if (_code in (actionKeys "PushToTalk") || _code in (actionKeys "PushToTalkSide")) then
{
	if (playerSide == civilian) then
	{
		_chan = "";
		disableSerialization;
		//waitUntil { !isNull (findDisplay 24) };
		_chan = ctrlText ((findDisplay 63) displayCtrl 101);
		if (_chan == "Side Channel") then { systemChat format["No se permite el chat de voz en el %1", _chan]; _handled = true; };
	};
};
	
	
};

_handled;