if (!isServer) exitWith {};
ChangeRobeTime = false;
LastTimeRobe = -3600;
publicvariable "LastTimeRobe";
While {true} do {
    waitUntil { ChangeRobeTime };
    ChangeRobeTime = false;
    LastTimeRobe = time;
    publicvariable "LastTimeRobe";
};