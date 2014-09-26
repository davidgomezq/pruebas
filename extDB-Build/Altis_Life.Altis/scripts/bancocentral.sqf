private ["_eh1","_inArea","_zone1","_dis","_Started"];

_zone1 = getMarkerPos "zona_bancocentral";

_dis = 40;                          

_inArea = false;
_Started = false;

while {true} do
	{
			if (alive player) then
			{	
				waitUntil {getPos player distance _zone1 < _dis};		
				     
					if (animationState player == "AovrPercMstpSrasWrflDf") then {
					If (Not _Started) Then {
						_Started = true;
					};
					_damage = damage player;
					_damage = _damage + 0.30;
					player setDamage (_damage);
					sleep 3;
					};
				//};

					if (animationState player == "AovrPercMstpSnonWnonDf") then {
					If (Not _Started) Then {
						_Started = true;
					};
					_damage = damage player;
					_damage = _damage + 0.30;
					player setDamage (_damage);
					sleep 3;
					};
					
				
					if (animationState player == "AovrPercMstpSrasWpstDf") then {
					If (Not _Started) Then {
						_Started = true;
					};
					_damage = damage player;
					_damage = _damage + 0.30;
					player setDamage (_damage);
					sleep 3;
					};	
     
			};
			sleep 0.2;
	};
		