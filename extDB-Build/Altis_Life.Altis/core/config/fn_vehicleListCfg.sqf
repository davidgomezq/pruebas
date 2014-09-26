#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "new_shop_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
		
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];		
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",3000000]];
	};
	
	case "kart_1":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	
	case "civ_car_1":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	}; 
	
	case "civ_car_2":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	
	case "civ_car_3":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	}; 
	
	case "civ_car_4":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	}; 
	
	case "civ_car_5":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	}; 
	
	case "civ_car_6":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	}; 
	
	case "civ_car_7":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	}; 
	
	case "donador_1":
	{
		if(license_civ_donador) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",1500]];
		_return set[count _return,
		["C_SUV_01_F",25000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",42000]];
		_return set[count _return,
		["C_Offroad_01_F",5500]];
		_return set[count _return,
		["I_Truck_02_covered_F",120000]];
		_return set[count _return,
		["I_Truck_02_transport_F",70000]];
		_return set[count _return,
		["B_Truck_01_transport_F",300000]];
		_return set[count _return,
		["B_Heli_Light_01_F",250000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1400000]];
		};
	};
	
	case "donador_4":
	{
		if(license_civ_donador) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",1500]];
		_return set[count _return,
		["C_SUV_01_F",25000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",42000]];
		_return set[count _return,
		["C_Offroad_01_F",5500]];
		_return set[count _return,
		["I_Truck_02_covered_F",120000]];
		_return set[count _return,
		["I_Truck_02_transport_F",70000]];
		_return set[count _return,
		["B_Truck_01_transport_F",300000]];
		_return set[count _return,
		["B_Heli_Light_01_F",250000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1400000]];
		};
	};
	
	
	case "donador_2":
	{
		if(license_civ_donador2) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",1500]];
		_return set[count _return,
		["C_SUV_01_F",22000]];
		_return set[count _return,
		["C_Offroad_01_F",5200]];
		_return set[count _return,
		["C_Van_01_Fuel_F",7500]];
		_return set[count _return,
		["B_Truck_01_box_F",290000]];
		_return set[count _return,
		["I_Truck_02_covered_F",110000]];
		_return set[count _return,
		["I_Truck_02_transport_F",69000]];
		_return set[count _return,
		["B_Truck_01_transport_F",250000]];
		_return set[count _return,
		["O_MRAP_02_F",800000]];
		_return set[count _return,
		["B_Heli_Light_01_F",225000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",700000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",40000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",2500000]];
		};
	};
	
	case "donador_5":
	{
		if(license_civ_donador2) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",1500]];
		_return set[count _return,
		["C_SUV_01_F",22000]];
		_return set[count _return,
		["C_Offroad_01_F",5200]];
		_return set[count _return,
		["C_Van_01_Fuel_F",7500]];
		_return set[count _return,
		["B_Truck_01_box_F",290000]];
		_return set[count _return,
		["I_Truck_02_covered_F",110000]];
		_return set[count _return,
		["I_Truck_02_transport_F",69000]];
		_return set[count _return,
		["B_Truck_01_transport_F",250000]];
		_return set[count _return,
		["O_MRAP_02_F",800000]];
		_return set[count _return,
		["B_Heli_Light_01_F",225000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",700000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",40000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",2500000]];
		};
	};
	
	case "donador_3":
	{
		if(license_civ_donador3) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",1500]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_Van_01_Fuel_F",5000]];
		_return set[count _return,
		["B_Truck_01_box_F",250000]];
		_return set[count _return,
		["I_Truck_02_covered_F",95000]];
		_return set[count _return,
		["I_Truck_02_transport_F",60000]];
		_return set[count _return,
		["B_Truck_01_transport_F",200000]];
		_return set[count _return,
		["O_MRAP_02_F",600000]];
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",640000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",35000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",2300000]];
		_return set[count _return,
		["O_MRAP_02_hmg_F",3000000]];
		};
	};
	
	case "donador_6":
	{
		if(license_civ_donador3) then
		{
		_return set[count _return,
		["B_Quadbike_01_F",1500]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_Van_01_Fuel_F",5000]];
		_return set[count _return,
		["B_Truck_01_box_F",250000]];
		_return set[count _return,
		["I_Truck_02_covered_F",95000]];
		_return set[count _return,
		["I_Truck_02_transport_F",60000]];
		_return set[count _return,
		["B_Truck_01_transport_F",200000]];
		_return set[count _return,
		["O_MRAP_02_F",600000]];
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",640000]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",35000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",2300000]];
		_return set[count _return,
		["O_MRAP_02_hmg_F",3000000]];
		};
	};
	
	
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};
	
	case "civ_truck_1":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",90000],
			["I_Truck_02_covered_F",160000],
			["B_Truck_01_transport_F",420000],
			["B_Truck_01_box_F",620000]
		];
	};
	
	case "civ_truck_2":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",90000],
			["I_Truck_02_covered_F",160000],
			["B_Truck_01_transport_F",420000],
			["B_Truck_01_box_F",620000]
		];	
	};
	
	case "civ_truck_3":
	{
		_return =
		[
			["C_Van_01_box_F",75000],
			["I_Truck_02_transport_F",90000],
			["I_Truck_02_covered_F",160000],
			["B_Truck_01_transport_F",420000],
			["B_Truck_01_box_F",620000]
		];	
	};
	
	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_sport_F",50000],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1700000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",3500000]];
			_return set[count _return,
			["O_MRAP_02_F",1500000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",3500000]];
			_return set[count _return,
			["O_Truck_03_transport_F",600000]];
			_return set[count _return,
			["O_Truck_03_covered_F",750000]];
			_return set[count _return,
			["O_Truck_03_device_F",1100000]];
		};
	};
	
	case "reb_v_2":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_sport_F",50000],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]		
			
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1700000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",3500000]];
			_return set[count _return,
			["O_MRAP_02_F",1500000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",3500000]];
			_return set[count _return,
			["O_Truck_03_transport_F",600000]];
			_return set[count _return,
			["O_Truck_03_covered_F",750000]];
			_return set[count _return,
			["O_Truck_03_device_F",1100000]];
		};
	};
	
	case "reb_v_3":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_sport_F",50000],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]		
			
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1700000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",3500000]];
			_return set[count _return,
			["O_MRAP_02_F",1500000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",3500000]];
			_return set[count _return,
			["O_Truck_03_transport_F",600000]];
			_return set[count _return,
			["O_Truck_03_covered_F",750000]];
			_return set[count _return,
			["O_Truck_03_device_F",1100000]];
		};
	};
	
	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
		//_return set[count _return,
		//["O_MRAP_02_F",400000]];
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",375000]];
		_return set[count _return,
		["I_Heli_Transport_02_F",3500000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",1700000]];
	};
	
	
	case "geos_car_1":
	{
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
		};
	};
	
	case "cop_car_1":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{	
			_return set[count _return,
			["B_MRAP_01_F",80000]];
			
		};
		
		if(license_cop_geos) then
		{
		
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
			
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];	
			_return set[count _return,
			["B_Plane_CAS_01_F",0]];	
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",0]];
		};
	};
	
	case "copeast_car_1":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_copeastlevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_copeastlevel) > 3) then
		{	
			_return set[count _return,
			["B_MRAP_01_F",80000]];
			
		};
		
		if(license_copeast_geos) then
		{
		
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
			
		};
		
		if(__GETC__(life_copeastlevel) > 6) then
		{
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];	
			_return set[count _return,
			["B_Plane_CAS_01_F",0]];	
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",0]];
		};
	};
	
	
	
	case "cop_car_2":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{	
			_return set[count _return,
			["B_MRAP_01_F",80000]];
			
		};
		
		if(license_cop_geos) then
		{
		
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
			
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];	
			_return set[count _return,
			["B_Plane_CAS_01_F",0]];	
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",0]];
		};
	};
	
	
	case "copeast_car_2":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_copeastlevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_copeastlevel) > 3) then
		{	
			_return set[count _return,
			["B_MRAP_01_F",80000]];
			
		};
		
		if(license_copeast_geos) then
		{
		
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
			
		};
		
		if(__GETC__(life_copeastlevel) > 6) then
		{
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];	
			_return set[count _return,
			["B_Plane_CAS_01_F",0]];	
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",0]];
		};
	};
	
	case "cop_car_3":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{	
			_return set[count _return,
			["B_MRAP_01_F",80000]];
			
		};
		
		if(license_cop_geos) then
		{
		
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
			
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];	
			_return set[count _return,
			["B_Plane_CAS_01_F",0]];	
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",0]];
		};
	};
	
	case "copeast_car_3":
	{
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_copeastlevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_copeastlevel) > 3) then
		{	
			_return set[count _return,
			["B_MRAP_01_F",80000]];
			
		};
		
		if(license_copeast_geos) then
		{
		
			_return set[count _return,
			["B_MRAP_01_hmg_F",100000]];
			
		};
		
		if(__GETC__(life_copeastlevel) > 6) then
		{
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];	
			_return set[count _return,
			["B_Plane_CAS_01_F",0]];	
			_return set[count _return,
			["I_APC_tracked_03_cannon_F",0]];
		};
	};
	
	case "civ_plane_1":
	{
		_return =
		[
			["B_Plane_CAS_01_F",1600000]				 
		];
	};
	
	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",500000],
			["O_Heli_Light_02_unarmed_F",1900000],
			["I_Heli_Transport_02_F",4000000]			 
		];
	};
	
	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",500000],
			["O_Heli_Light_02_unarmed_F",1900000],
			["I_Heli_Transport_02_F",4000000]	
		];
	};
	
	case "cop_air_1":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	};
	
	
	case "copeast_air_1":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		if(__GETC__(life_copeastlevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	};
	
	case "cop_air_3":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	};
	
	
	case "cop_air_2":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	}; 
	
	case "copeast_air_2":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
		if(__GETC__(life_copeastlevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
	};
	
	case "medic_car_1":
	{
		_return set[count _return,
		["C_SUV_01_F",35000]];
		_return set[count _return,
		["B_Truck_01_mover_F",10000]];
		_return set[count _return,
		["C_Offroad_01_repair_f",5000]];
	};
	
	case "medic_air_1":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
	};

	case "medic_air_2":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
	};
	
	case "medic_car_2":
	{
		_return set[count _return,
		["C_SUV_01_F",35000]];
		_return set[count _return,
		["B_Truck_01_mover_F",10000]];
		_return set[count _return,
		["C_Offroad_01_repair_f",5000]];
		_return set[count _return,
		["B_Heli_Light_01_F",200000]];
	};
	
	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",50000]
		];
	};
	
	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",50000]
		];
	};
	
	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",50000]
		];
	};
	
	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000],
			["O_SDV_01_F",20000]
		
		];
		
		if(license_cop_geos) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",75000]];
			
		};	
		
		
	};
	
	case "copeast_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000],
			["O_SDV_01_F",20000]
			
		];
		
		if(license_copeast_geos) then
		{
			_return set[count _return,
			["B_Boat_Armed_01_minigun_F",75000]];
		
		};	
	};
	
	
	
	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000]
		];
	};
	
	case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
	
	
	case "taxi_1":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
		};
	};
	
	case "taxi_2":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
		};
	};
	
	case "taxi_3":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
		};
	};
	
	case "taxi_4":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
		};
	};
	
	case "taxi_5":
	{
		if(license_civ_taxi) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
		};
	};
	
	case "pmc_1":
	{
		if(license_civ_pmc) then
		{
			_return set[count _return,
			["C_SUV_01_F",35000]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",50000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",1700000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",3500000]];
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",3500000]];
			_return set[count _return,
			["I_MRAP_03_F",600000]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",2400000]];
			_return set[count _return,
			["B_UAV_02_F",5000000]];
			_return set[count _return,
			["B_UAV_01_F",200000]];
		};
	};
};

_return;
