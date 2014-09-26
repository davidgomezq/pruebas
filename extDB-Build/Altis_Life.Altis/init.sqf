enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
[] execVM "scripts\safezone.sqf";
[] execVM "scripts\mensajes.sqf";
[] execVM "scripts\bancocentral.sqf";
[] execVM "scripts\casino.sqf";
[] execVM "scripts\arsenal.sqf";


StartProgress = true;
//_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
call compile preprocessFile "UI\HUD.sqf";
[] spawn ICE_HUD; 
sleep 0.5;dokeyCheck={    private ["_r"] ;    _r = false ;     if ((_this select 1) in (actionKeys "TacticalView")) then {        hint "Comando modo desactivado" ;        _r=true;    };  _r;} ;(FindDisplay 46) displaySetEventHandler [     "keydown",     "_this call dokeyCheck"     ];
onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };