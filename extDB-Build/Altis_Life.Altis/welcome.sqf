/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: synced-gaming.de
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 8;

sleep 2; //Wait in seconds before the credits start after player is in-game


_role1 = "Bienvenido";
_role1names = ["Todo Por La Pasta"];
_role2 = "Admins";
_role2names = ["Metalcry1","Grobadicto","Nota","Frutinho","David","ElGranAlias","Telo"];
_role3 = " Altis Life RPG";
_role3names = ["Servidor Español"];
_role4 = "Pagina Web:";
_role4names = ["www.todoporlapasta.es"];
_role5 = "Teamspeak 3:";
_role5names = [" 85.25.214.170"];
_role6 = "Y por ultimo:";
_role6names = ["VIVA ESPAÑA¡¡"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#a6f20b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];