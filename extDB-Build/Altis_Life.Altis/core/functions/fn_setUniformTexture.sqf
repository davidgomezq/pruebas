private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(playerSide) do
 {
	case independent: {player setObjectTextureGlobal [0,"textures\emer_unimetal1.jpg"];};
	
	case west: {player setObjectTextureGlobal [0,"textures\guardia_civil_uniforme_ver.paa"];};
	
	case east: {player setObjectTextureGlobal [0,"textures\gendarmes.jpg"];};
	
	//case civilian: {player setObjectTextureGlobal [0,"textures\U_C_Poloshirt_stripped.jpg"];};
};
