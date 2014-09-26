/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_heroinu": {"Heroina"};
	case "life_inv_heroinp": {"Heroina Procesada"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Manzana"};
	case "life_inv_rabbit": {"Carne de Conejo"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Atun en Lata"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Tiburon Gato en lata"};
	case "life_inv_turtle": {"Tortuga"};
	case "life_inv_fishingpoles": {"Caña de Pescar"};
	case "life_inv_water": {"Botella de Agua"};
	case "life_inv_coffee": {"Cafe"};
	case "life_inv_turtlesoup": {"Sopa de Tortuga"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Garrafa de Fuel Vacia"};
	case "life_inv_fuelF": {"Garrafa de Fuel Llena"};
	case "life_inv_pickaxe": {"Pico"};
	case "life_inv_copperore": {"Mineral Cobre" };
	case "life_inv_ironore": {"Mineral Hierro"};
	case "life_inv_ironr": {"Hierro Lingote"};
	case "life_inv_copperr": {"Cobre Lingote"};
	case "life_inv_diamond": {"Diamante en Bruto"};
	case "life_inv_diamondr": {"Diamante Pulido"};
	case "life_inv_tbacon": {"Lonchas de Bacon"};
	case "life_inv_redgull": {"Monster Energy"};
	case "life_inv_lockpick": {"Ganzua"};
	case "life_inv_peach": {"Melocoton"};
	case "life_inv_coke": {"Cocaina sin Procesar"};
	case "life_inv_cokep": {"Cocaina Procesada"};
	case "life_inv_spikeStrip": {"Pinchos"};
	case "life_inv_goldbar": {"Barras de Oro"};
	case "life_inv_blastingcharge": {"Carga para Banco"};
	case "life_inv_boltcutter": {"Cizalla"};
	case "life_inv_defusekit": {"Kit desactivacion de Bombas"};
	case "life_inv_storagesmall": {"Caja Almacenamiento Pequeña"};
	case "life_inv_storagebig": {"Caja Almacenamiento Grande"};
	case "life_inv_frog": {"Rana"};
	case "life_inv_froglsd": {"Rana LSD"};
	case "life_inv_froglegs": {"Patas de rana"};
	case "life_inv_sidra": {"Sidra"};
	case "life_inv_cerveza": {"Cerveza"};
	case "life_inv_lupulo": {"Lupulo"};
	case "life_inv_malta": {"Malta"};
	case "life_inv_tabaco": {"Tabaco"};
	case "life_inv_cigarrillos": {"Cigarrillos"};
	case "life_inv_acero": {"Acero"};
	case "life_inv_aceroinoxidable": {"Acero-inoxidable"};
	case "life_inv_cono": {"Cono"};
	case "life_inv_barrera": {"Barrera"};
	case "life_inv_mauer": {"Muro"};
	case "life_inv_barrier": {"Barrerilla"};
	case "life_inv_barricade": {"Barricada"};
	case "life_inv_figuradehueso": {"Figuras de hueso"};
	case "life_inv_caparazon": {"Caparazon"};
	case "life_inv_shovel": {"Pala"};
	case "life_inv_pergamino": {"Pergamino"};
	case "life_inv_vasija": {"Vasija"};
	case "life_inv_doblon": {"Doblon"};
	case "life_inv_brazalete": {"Brazalete"};
	case "life_inv_catalejo": {"Catalejo"};
	case "life_inv_abrecartas": {"Abrecartas"};
	case "life_inv_collar": {"Collar"};
	case "life_inv_cetro": {"Cetro"};
	case "life_inv_kidney": {"Riñon"}; 
	case "life_inv_zipties": {"Bridas"};
	case "life_inv_madera": {"Madera"};
	case "life_inv_carbon": {"Carbon"};
	case "life_inv_rubiu": {"Rubi en Bruto"};
	case "life_inv_rubip": {"Rubi Pulido"};
	case "life_inv_speedbomb": {"Bomba Lapa"};
	case "life_inv_nitro": {"Nitro"};
	case "life_inv_fichas": {"fichas"};
	
	
	//License Block
	case "license_civ_driver": {"Licencia de conducir"};
	case "license_civ_air": {"Licencia de Piloto"};
	case "license_civ_heroin": {"Clases de Cocina Heroina"};
	case "license_civ_gang": {"Licencia Pandillas"};
	case "license_civ_dive": {"Licencia Buceos"};
	case "license_civ_boat": {"Licencia Barco"};
	case "license_civ_gun": {"Licencia de Armas"};
	case "license_cop_air": {"Licencia de Piloto"};
	case "license_copeast_air": {"Licencia de Piloto"};
	case "license_cop_cg": {"Guarda Costa"};
	case "license_civ_rebel": {"Entrenamiento Rebelde"};
	case "license_civ_truck": {"Licencia Camionero"};
	case "license_civ_diamond": {"Licencia Diamantes"};
	case "license_civ_copper": {"Licencia de Cobre"};
	case "license_civ_iron": {"Licencia Hierro"};
	case "license_civ_coke": {"Clases de Cocina de Cocaina"};
	case "license_civ_kart": {"Entrenamiento Karts"};
	case "license_civ_marijuana": {"Clases del Moro Juan"};
	case "license_med_air": {"Licencia de Piloto"};
	case "license_civ_home": {"Licencia de Casas"};
	case "license_civ_donador": {"Licencia donador LVL1"};
	case "license_civ_donador2": {"Licencia donador LVL2"};
	case "license_civ_donador3": {"Licencia donador LVL3"};
	case "license_civ_avion": {"Licencia de Aviacion"};
	case "license_civ_turtle": {"Licencia Caparazon"};
	case "license_civ_caparazon": {"Licencia Figura de hueso"};
	case "license_civ_tabaco": {"Licencia tabaco"};
	case "license_civ_taxi": {"Licencia taxi"};
	case "license_civ_sidra": {"Licencia destilar sidra"};
	case "license_civ_cerveza": {"Licencia Cerveza license"};
	case "license_civ_aceroinoxidable": {"Licencia Acero Inoxidable"};
	case "license_civ_pmc": {"Entrenamiento PMC"};
	case "license_civ_pasaporteesp": {"Pasaporte España"};
	case "license_civ_pasaportemaroc": {"Pasaporte Marruecos"};
	case "license_civ_rubiu": {"Licencia Rubies"};
	case "license_cop_geos": {"Licencia Fuerzas Especiales Esp"};
	case "license_copeast_geos": {"Licencia Fuerzas Especiales Mar"};
	case "license_civ_bountyh": {"Cazarrecompensas"};
};
