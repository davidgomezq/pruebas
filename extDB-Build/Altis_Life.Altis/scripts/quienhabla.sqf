//transmitting end
if (!isDedicated) then {
    VoN_ChannelId_fnc = {
        switch _this do {
            case localize "str_channel_global" : {["str_channel_global",0]};
            case localize "str_channel_side" : {["str_channel_side",1]};
            case localize "str_channel_command" : {["str_channel_command",2]};
            case localize "str_channel_group" : {["str_channel_group",3]};
            case localize "str_channel_vehicle" : {["str_channel_vehicle",4]};
            case localize "str_channel_direct" : {["str_channel_direct",5]};
            default {["",-1]};
        }
    };
    VoN_Event_fnc = {
        VoN_currentTxt = _this;
        VoN_channelId = VoN_currentTxt call VoN_ChannelId_fnc;
        PLAYER_SPEAKS_PV = [netId player] + VoN_channelId;
        publicVariable "PLAYER_SPEAKS_PV";
    };
    0 = [] spawn {
        VoN_isOn = false;
        VoN_currentTxt = "";
        VoN_channelId = -1;
        _fncDown = {
            if (!VoN_isOn) then {
                if (!isNull findDisplay 55 && !isNull findDisplay 63) then {
                    VoN_isOn = true;
                    ctrlText (findDisplay 63 displayCtrl 101)
                    call VoN_Event_fnc;
                    findDisplay 55 displayAddEventHandler ["Unload", {
                        VoN_isOn = false;
                        "" call VoN_Event_fnc;
                    }]; 
                };
            };
            false
        };
        _fncUp = {
            if (VoN_isOn) then {
                _ctrlText = ctrlText (findDisplay 63 displayCtrl 101);
                if (VoN_currentTxt != _ctrlText) then {
                    _ctrlText call VoN_Event_fnc;
                };
            };
            false
        };
        waitUntil {!isNull findDisplay 46};
        findDisplay 46 displayAddEventHandler ["KeyDown", _fncDown];
        findDisplay 46 displayAddEventHandler ["KeyUp", _fncUp];
        findDisplay 46 displayAddEventHandler ["MouseButtonDown", _fncDown];
        findDisplay 46 displayAddEventHandler ["MouseButtonUp", _fncUp];
        findDisplay 46 displayAddEventHandler ["JoystickButton", _fncDown];
    };
};
//recieving end
"PLAYER_SPEAKS_PV" addPublicVariableEventHandler {
    _spkr = objectFromNetId (_this select 1 select 0);
    _chTxt = localize (_this select 1 select 1);
    _chID = _this select 1 select 2;
    if (isServer) then {
        //log VoN event to .rpt on the server
        if (_chID < 0) then {
            diag_log format [
                "%1 stopped speaking",
                name _spkr
            ];
        } else {
            diag_log format [
                "%1 speaks on channel %2 (%3)",
                name _spkr,
                _chID,
                _chTxt
            ];
        };
    };
};