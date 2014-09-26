[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint "Has muerto de hambre.";}
		else
		{
		life_hunger = life_hunger - 10;
		if (life_smoking) then { systemChat "Necesito comidaaa!"; _change = _change * 2; };
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint "Has muerto de hambre.";};
		switch(life_hunger) do {
			case 30: {hint "No ha comido nada en un rato, usted debe encontrar algo que comer pronto!";};
			case 20: {hint "Están comenzando a morir de hambre, tiene que encontrar algo para comer de lo contrario morirá.";};
			case 10: {hint "Ahora está muriendo de hambre, que va a morir muy pronto si no comes algo";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint "You have died from dehydration.";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint "You have died from dehydration.";};
			switch(life_thirst) do 
			{
				case 30: {hint"No ha bebido nada en un rato, usted debe encontrar algo para beber pronto.";};
				case 20: {hint "No ha bebido nada en lo largo tiempo, usted debe encontrar algo de beber antes de tiempo o usted comenzará a morir de deshidratación "; player setFatigue 1;};
				case 10: {hint "Ahora está sufriendo de deshidratación severa encontrar algo para beber rápidamente!"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

//part of alcohol system written by [midgetgrimm]
[] spawn
{
	while {true} do
	{
		waitUntil {(life_drink > 0)};
		while{(life_drink > 0)} do {
		
			if(life_drink > 0.08) then {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.08, 0,0.35,0.37];
			"radialBlur" ppEffectCommit 3;
			sleep 240;
			life_drink = life_drink - 0.02;
			} else {
			"radialBlur" ppEffectEnable true;
			"radialBlur" ppEffectAdjust[0.05, 0,0.36,0.38];
			"radialBlur" ppEffectCommit 1;
			sleep 180;
			life_drink = life_drink - 0.02;
			};
		};
		
		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		"radialBlur" ppEffectEnable false;
		life_drink = 0;
		
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Está llevando más de su peso máximo!. No serás capaz de ejecutar o actuar con rapidez hasta el cansancio algunos artículos!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
	
[] spawn
{
	waitUntil { life_session_completed };
	for "_i" from 0 to (count life_addiction)-1 do
	{
		_new = life_addiction select _i;
		if (_new > 0) then
		{
			_new = _new - 0.02;
			if (_new < 0) then { _new = 0; };
			life_addiction set [_i, _new];
			if (_new > 0 && (time - (life_used_drug select _i)) > 600) then
			{
				switch (true) do
				{
					case (_new > 0.4): { systemChat "Te estas cojiendo un ciego."; life_drug_withdrawl = false; };
					case (_new > 0.6): { systemChat "Estas echo todo un yonki."; life_drug_withdrawl = false; };
					case (_new > 0.9):
					{
						systemChat "Estas con el mono necesitas una dosis!";
						if (!life_drug_withdrawl) then { [] spawn { while {life_drug_withdrawl} do { resetCamShake; addCamShake [1, 4, 10]; sleep 3.5; }; resetCamShake; } };
						life_drug_withdrawl = true;
					};
				};
			};
		};
	};
	sleep 240;
	life_drug_level = life_drug_level - 0.05;
	if (life_drug_level < 0) then { life_drug_level = 0; };
};
	
	[] spawn  {
	while{true} do
	{
		waitUntil {(player getVariable "missingOrgan")};
		life_max_health = 50;
		while{(player getVariable "missingOrgan")} do {
			life_thirst = life_thirst - 50;
			life_hunger = life_hunger - 50;
			if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [2];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		life_max_health = 1;
	};
};
};