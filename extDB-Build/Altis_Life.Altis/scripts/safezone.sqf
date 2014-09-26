private ["_eh1","_inArea","_zone1","_zone2","_zone3","_dis"];

_zone1 = getMarkerPos "zonasegura_kavala";
_zone2 = getMarkerPos "zonasegura_athira";
_zone3 = getMarkerPos "zonasegura_neochori";
_zone4 = getMarkerPos "zonasegura_pirgos1";
_zone5 = getMarkerPos "zonasegura_sofia";
_dis = 60;                          

_inArea = false;



switch (playerSide) do
{
	case west:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis) || (_zone2 distance player < _dis) || (_zone3 distance player < _dis) || (_zone4 distance player < _dis) || (_zone5 distance player < _dis)) && (!_inArea)) then 
				{     
					//_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "Entraste en Zona Segura";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis) && (_zone2 distance player > _dis) && (_zone3 distance player > _dis) && (_zone4 distance player > _dis) &&(_zone5 distance player > _dis)) && (_inArea)) then 
				{    
					//player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "Abandonaste Zona Segura";
					player allowDamage true;
				};
     
			};
			sleep 0.1;
		};
	
	};
	
	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis) || (_zone2 distance player < _dis) || (_zone3 distance player < _dis) || (_zone4 distance player < _dis) || (_zone5 distance player < _dis)) && (!_inArea)) then 
				{     
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "Entraste en Zona Segura";
					player allowDamage false;
					player action ["SwitchWeapon", player, player, 100];  	// Arma a la espalda
					player action ["HandGunOffStand", player]; 		// Pipa enfundada
				};

				if (((_zone1 distance player > _dis) && (_zone2 distance player > _dis) && (_zone3 distance player > _dis) && (_zone4 distance player > _dis) &&(_zone5 distance player > _dis)) && (_inArea)) then 
				{    
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "Abandonaste Zona Segura";
					player allowDamage true;
					
				};
     
			};
			sleep 0.1;
		};
	
	};
	
	case independent:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis) || (_zone2 distance player < _dis) || (_zone3 distance player < _dis) || (_zone4 distance player < _dis) || (_zone5 distance player < _dis)) && (!_inArea)) then 
				{     
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "Entraste en Zona Segura";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis) && (_zone2 distance player > _dis) && (_zone3 distance player > _dis) && (_zone4 distance player > _dis) &&(_zone5 distance player > _dis)) && (_inArea)) then 
				{    
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "Abandonaste Zona Segura";
					player allowDamage true;
				};
     
			};
			sleep 0.1;
		};
	};
	
	case east:
	{
		while {true} do
		{
			if (alive player) then
			{	
				if (((_zone1 distance player < _dis) || (_zone2 distance player < _dis) || (_zone3 distance player < _dis) || (_zone4 distance player < _dis) || (_zone5 distance player < _dis)) && (!_inArea)) then 
				{     
					//_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint "Entraste en Zona Segura";
					player allowDamage false;
				};

				if (((_zone1 distance player > _dis) && (_zone2 distance player > _dis) && (_zone3 distance player > _dis) && (_zone4 distance player > _dis) &&(_zone5 distance player > _dis)) && (_inArea)) then 
				{    
					//player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint "Abandonaste Zona Segura";
					player allowDamage true;
				};
     
			};
			sleep 0.1;
		};
	
	};
	sleep 3;
};