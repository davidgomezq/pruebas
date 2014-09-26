/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "civ_car_1": {_ret = license_civ_driver;};
	case "civ_car_2": {_ret = license_civ_driver;};
	case "civ_car_3": {_ret = license_civ_driver;};
	case "civ_car_4": {_ret = license_civ_driver;};
	case "civ_car_5": {_ret = license_civ_driver;};
	case "civ_car_6": {_ret = license_civ_driver;};
	case "civ_car_7": {_ret = license_civ_driver;};
	case "civ_car_8": {_ret = license_civ_driver;};
	case "civ_sol": {_ret = license_civ_driver;};
	case "civ_ship_1": {_ret = license_civ_boat;};
	case "civ_ship_2": {_ret = license_civ_boat;};
	case "civ_ship_3": {_ret = license_civ_boat;};
	case "civ_air_1": {_ret = license_civ_air;};
	case "civ_air_2": {_ret = license_civ_air;};
	case "cop_air_1": {_ret = license_cop_air;};
	case "cop_air_2": {_ret = license_cop_air;};
	case "cop_air_3": {_ret = license_cop_air;};
	case "copeast_air_1": {_ret = license_copeast_air;};
	case "copeast_air_2": {_ret = license_copeast_air;};
	case "copeast_ship_1": {_ret = true;};
	case "cop_ship_1": {_ret = true;};
	case "donator_1": {_ret = true;};
	case "donator_2": {_ret = true;};
	case "civ_truck_1":	{_ret = license_civ_truck;};
	case "civ_truck_2":	{_ret = license_civ_truck;};
	case "civ_truck_3":	{_ret = license_civ_truck;};
	case "civ_inc":	{_ret = license_civ_truck;};
	case "civ_servt_1": {_ret = license_civ_driver;};
	case "reb_v_1": {_ret = license_civ_rebel;};
	case "reb_v_2": {_ret = license_civ_rebel;};
	case "reb_v_3": {_ret = license_civ_rebel;};
	case "pmc_1": {_ret = license_civ_pmc;};
	case "kart_1": {_ret = license_civ_kart;};
	case "donador_1": {_ret = license_civ_donador;};
	case "donador_2": {_ret = license_civ_donador2;};
	case "donador_3": {_ret = license_civ_donador3;};
	case "donador_4": {_ret = license_civ_donador;};
	case "donador_5": {_ret = license_civ_donador2;};
	case "donador_6": {_ret = license_civ_donador3;};
	case "cop_car_1": {_ret = true;};
	case "cop_car_2": {_ret = true;};
	case "cop_car_3": {_ret = true;};
	case "cop_car_5": {_ret = true;};
	case "copeast_car_1": {_ret = true;};
	case "copeast_car_2": {_ret = true;};
	case "geos_car_1": {_ret = license_cop_geos;};
	case "fed_car_2": {_ret = true;};
	case "fed_car_3": {_ret = true;};
	case "medic_car_1": {_ret = true;};
	case "medic_air_1": {_ret = true;};
	case "fed_air": {_ret = true;};
	case "taxi_1": {_ret = license_civ_taxi;};
	case "taxi_2": {_ret = license_civ_taxi;};
	case "taxi_3": {_ret = license_civ_taxi;};
	case "taxi_4": {_ret = license_civ_taxi;};
	case "taxi_5": {_ret = license_civ_taxi;};
	case "civ_plane_1": {_ret = license_civ_avion;};
	case "cop_ship_1":  
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
	case "cop_ship_2":  
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
	
};

_ret;