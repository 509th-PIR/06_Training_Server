// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

//////////////////////View Distance Settings///////////////////////////////////////////////////////////////////////////////////////////

CHVD_allowNoGrass = false;
//CHVD_maxView = 1500;
//CHVD_maxObj = 1500;


///////////////////////////Remove Shack Tac vis////////////////////////////////////////////////
STGI_Update = {}; 
STNT_Update ={};




0 = [] spawn { 
    while{true} do { 
        { 
            if(_x distance (getMarkerPos "mrk_safe_zone") < 200) then {_x allowDamage false} else {_x allowDamage true}; 
        } forEach allUnits + vehicles; 
        sleep 1; 
    }; 
};


_EndSplashScreen = {
    for "_x" from 1 to 4 do {
        endLoadingScreen;
        sleep 3;
    };
};

[] spawn _EndSplashScreen;