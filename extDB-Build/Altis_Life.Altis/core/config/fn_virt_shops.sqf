/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","storagesmall","storagebig","sidra","cerveza","madera","carbon","pala","patasderana"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","spikeStrip","speedbomb","zipties"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","spikeStrip","speedbomb","zipties"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","figuradehueso"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r","acero"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","barricade","barrier","mauer","cono","barrera","nitro"]]};
	case "copeast": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","barricade","barrier","mauer","cono","barrera","nitro"]]};
	case "lab": {["Laboratorio",["labkit"]]};
	case "tabaco": {["Estanco",["cigarrillos","tabaco"]]};
	case "hospital": {["Kavala Hospital",["water","peach"]]};
	case "tesoros": {["Comerciante de Tesoros",["pergamino","vasija","doblon","brazalete","catalejo","abrecartas","collar","cetro"]]};
	case "tanke": {["Cepsa",["water","rabbit","fuelF","nitro"]]};
	case "organ": {["Organ Dealer",["kidney"]]}; 
	case "rubi": {["Dealer Rubi",["rubip"]]}; 
	case "fichas": {["fichas",["fichas"]]}; 
	case "cromo": {["fichas",["aceroinoxidable"]]}; 
	case "caza": {["caza",["water","rabbit","redgull","lockpick","zipties"]]}; 
	case "donador": {["donador Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","spikeStrip","speedbomb","zipties"]]};
};

