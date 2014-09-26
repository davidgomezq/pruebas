/*
    File: fn_saveGear.sqf
    Author: Bryan "Tonic" Boardwine
    Full Gear/Y-Menu Save by Vampire
    Edited: Itsyuka
    
    Description:
    Saves the players gear for syncing to the database for persistence..
*/
private["_return","_uItems","_bItems","_vItems","_pItems","_hItems","_yItems","_uMags","_vMags","_bMags","_pMag","_hMag","_uni","_ves","_bag","_handled"];
_return = [];

_return set[count _return,uniform player];
_return set[count _return,vest player];
_return set[count _return,backpack player];
_return set[count _return,goggles player];
_return set[count _return,headgear player];
_return set[count _return,assignedITems player];
if(playerSide == west || playerSide == east || playerSide == civilian && {(call life_save_civ)}) then {
    _return set[count _return,primaryWeapon player];
    _return set[count _return,handgunWeapon player];
} else {
    _return set[count _return,[]];
    _return set[count _return,[]];
};

_uItems = [];
_uMags  = [];
_bItems = [];
_bMags  = [];
_vItems = [];
_vMags  = [];
_pItems = [];
_hItems = [];
_yItems = [];
_uni = [];
_ves = [];
_bag = [];

if(uniform player != "") then
{
    {
        if (_x in (magazines player)) then {
            _uMags = _uMags + [_x];
        } else {
            _uItems = _uItems + [_x];
        };
    } forEach (uniformItems player);
};

if(backpack player != "") then
{
    {
        if (_x in (magazines player)) then {
            _bMags = _bMags + [_x];
        } else {
            _bItems = _bItems + [_x];
        };
    } forEach (backpackItems player);
};

if(vest player != "") then
{
    {
        if (_x in (magazines player)) then {
            _vMags = _vMags + [_x];
        } else {
            _vItems = _vItems + [_x];
        };
    } forEach (vestItems player);
};

if(count (primaryWeaponMagazine player) > 0 && alive player) then
{
    _pMag = ((primaryWeaponMagazine player) select 0);
    if(_pMag != "") then
    {
        _uni = player canAddItemToUniform _pMag;
        _ves = player canAddItemToVest _pMag;
        _bag = player canAddItemToBackpack _pMag;
        _handled = false;
        if(_ves) then
        {
            _vMags = _vMags + [_pMag];
            _handled = true;
        };
        if(_uni && !_handled) then
        {
            _uMags = _uMags + [_pMag];
            _handled = true;
        };
        if(_bag && !_handled) then
        {
            _bMags = _bMags + [_pMag];
            _handled = true;
        };
    };
};

if(count (handgunMagazine player) > 0 && alive player) then
{
    _hMag = ((handgunMagazine player) select 0);
    if(_hMag != "") then
    {
        _uni = player canAddItemToUniform _hMag;
        _ves = player canAddItemToVest _hMag;
        _bag = player canAddItemToBackpack _hMag;
        _handled = false;
        if(_ves) then
        {
            _vMags = _vMags + [_hMag];
            _handled = true;
        };
        if(_uni && !_handled) then
        {
            _uMags = _uMags + [_hMag];
            _handled = true;
        };
        if(_bag && !_handled) then
        {
            _bMags = _bMags + [_hMag];
            _handled = true;
        };
    };
};

if(count (primaryWeaponItems player) > 0) then
{
    {
        _pItems = _pItems + [_x];
    } forEach (primaryWeaponItems player);
};

if(count (handGunItems player) > 0) then
{
    {
        _hItems = _hItems + [_x];
    } forEach (handGunItems player);
};

{
    _name = (_x select 0);
    _val = (_x select 1);
    if (_val > 0) then {
        for "_i" from 1 to _val do {
            _yItems = _yItems + [_name];
        };
    };
} forEach [
    ["life_inv_heroinu",life_inv_heroinu],
	["life_inv_heroinp",life_inv_heroinp],
	["life_inv_cannabis",life_inv_cannabis],
	["life_inv_marijuana",life_inv_marijuana],
	["life_inv_apple",life_inv_apple],
	["life_inv_rabbit",life_inv_rabbit],
	["life_inv_salema",life_inv_salema],
	["life_inv_ornate",life_inv_ornate],
    ["life_inv_mackerel",life_inv_mackerel],
	["life_inv_tuna",life_inv_tuna],
	["life_inv_mullet",life_inv_mullet],
	["life_inv_catshark",life_inv_catshark],
	["life_inv_turtle",life_inv_turtle],
	["life_inv_frog",life_inv_frog],
	["life_inv_froglegs",life_inv_froglegs],
	["life_inv_froglsd",life_inv_froglsd],
	["life_inv_fishingpoles",life_inv_fishingpoles],
	["life_inv_water",life_inv_water],
	["life_inv_donuts",life_inv_donuts],
	["life_inv_turtlesoup",life_inv_turtlesoup],
	["life_inv_coffee",life_inv_coffee],
	["life_inv_fuelF",life_inv_fuelF],
	["life_inv_fuelE",life_inv_fuelE],
	["life_inv_pickaxe",life_inv_pickaxe],
	["life_inv_copperore",life_inv_copperore],
	["life_inv_ironore",life_inv_ironore],
	["life_inv_ironr",life_inv_ironr],
	["life_inv_copperr",life_inv_copperr],
	["life_inv_tbacon",life_inv_tbacon],
	["life_inv_lockpick",life_inv_lockpick],
	["life_inv_redgull",life_inv_redgull],
	["life_inv_peach",life_inv_peach],
	["life_inv_diamond",life_inv_diamond],
	["life_inv_coke",life_inv_coke],
	["life_inv_cokep",life_inv_cokep],
	["life_inv_diamondr",life_inv_diamondr],
	["life_inv_spikeStrip",life_inv_spikeStrip],
	["life_inv_blastingcharge",life_inv_blastingcharge],
	["life_inv_blastingchargecasino",life_inv_blastingcharge],
	["life_inv_boltcutter",life_inv_boltcutter],
	["life_inv_defusekit",life_inv_defusekit],
	["life_inv_storagesmall",life_inv_storagesmall],
	["life_inv_storagebig",life_inv_storagebig],
	["life_inv_cerveza",life_inv_cerveza],
	["life_inv_barricade",life_inv_barricade],
	["life_inv_barrier",life_inv_barrier],
	["life_inv_sidra",life_inv_sidra],
	["life_inv_shovel",life_inv_shovel],
	["life_inv_tabaco",life_inv_tabaco],
	["life_inv_cigarrillos",life_inv_cigarrillos],
	["life_inv_pergamino",life_inv_pergamino],
	["life_inv_vasija",life_inv_vasija],
	["life_inv_doblon",life_inv_doblon],
	["life_inv_brazalete",life_inv_brazalete],
	["life_inv_catalejo",life_inv_catalejo],
	["life_inv_abrecartas",life_inv_abrecartas],
	["life_inv_collar",life_inv_collar],
	["life_inv_cetro",life_inv_cetro],
	["life_inv_caparazon",life_inv_caparazon],
	["life_inv_figuradehueso",life_inv_figuradehueso],
    ["life_inv_mauer",life_inv_mauer],
	["life_inv_cono",life_inv_cono],
	["life_inv_barrera",life_inv_barrera],
	["life_inv_lupulo",life_inv_lupulo],
	["life_inv_malta",life_inv_malta],
	["life_inv_acero",life_inv_acero],
	["life_inv_aceroinoxidable",life_inv_aceroinoxidable],
	["life_inv_kidney",life_inv_kidney],
	["life_inv_zipties",life_inv_zipties],
	["life_inv_madera",life_inv_madera],
	["life_inv_carbon",life_inv_carbon],
	["life_inv_rubiu",life_inv_rubiu],
	["life_inv_rubip",life_inv_rubip],
	["life_inv_speedbomb",life_inv_speedbomb],
	["life_inv_nitro",life_inv_nitro]
];

_return set[count _return,_uItems];
_return set[count _return,_uMags];
_return set[count _return,_bItems];
_return set[count _return,_bMags];
_return set[count _return,_vItems];
_return set[count _return,_vMags];
_return set[count _return,_pItems];
_return set[count _return,_hItems];
if(call life_save_yinv) then {
    _return set[count _return,_yItems];
} else {
    _return set[count _return,[]];
};

life_gear = _return;