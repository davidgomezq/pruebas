/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Turns on and displays a security cam like feed via PiP to the laptop display.
*/
_laptop = _this select 0;
_mode = _this select 3;

if(!isPiPEnabled) exitWith {hint "Necesita habilitar Picture in Picture (PiP) a través de la configuración de vídeo para utilizar este!";};
if(isNil "life_fed_scam") then {
	life_fed_scam = "camera" camCreate [0,0,0];
	life_fed_scam camSetFov 0.5;
	life_fed_scam camCommit 0;
	"rendertarget0" setPiPEffect [0];
	life_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
	_laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};

switch (_mode) do {
	case "zona": {
		life_fed_scam camSetPos [15285.839,15669.004,35]; // 15285.839,0,15669.004 
		life_fed_scam camSetTarget [15453.804,15692.963,4.5]; // 15453.804,0,15692.963
		life_fed_scam camCommit 0;
	};
	
	case "cajafuerte": {
		life_fed_scam camSetPos [15477.504,15676.673,10]; // 15477.504,0,15676.673
		life_fed_scam camSetTarget [15475.203,15693.271,4.5]; // 15475.203,0,15693.271
		life_fed_scam camCommit 0;
	};
	
	case "adelante": {
		
		life_fed_scam camSetPos [15463.129,15745.527,15];
		life_fed_scam camSetTarget [15471.293,15725.02,5]; // 15471.293,0,15725.02
		life_fed_scam camCommit 0;
	};
	
	case "atras": {
		life_fed_scam camSetPos [15484.582,15634.507,15]; // 15484.582,0,15634.507
		life_fed_scam camSetTarget [15478.349,15634.507,4.5]; //15478.349,0,15672.285
		life_fed_scam camCommit 0;
	};
	
	case "apagar" :{
		life_fed_scam cameraEffect ["terminate", "back"];
		camDestroy life_fed_scam;
		_laptop setObjectTexture [0,""];
		life_fed_scam = nil;
	};
};
