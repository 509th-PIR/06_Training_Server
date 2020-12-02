_crew22 = [];
_landframe22 = [];
_team7 = [];

if (isServer) then {

_crew22 = creategroup EAST;
_landframe22 = [getMarkerPos "avins_2", 7, "rhs_t80um", _crew22] call BIS_fnc_spawnVehicle;



_team7 = [getMarkerPos "avins_4", east, ["rhs_msv_emr_sergeant",
"rhs_msv_emr_efreitor",
"rhs_bmp3_msv",
"rhs_msv_emr_grenadier_rpg",
"rhs_msv_emr_strelok_rpg_assist",
"rhs_msv_emr_machinegunner",
"rhs_msv_emr_LAT"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

hint"Aviation Ground Training Scenario two loaded";

sleep 600;

deleteGroup _crew22;
deleteGroup _landframe22;
deleteGroup _team7;

hint"Aviation Training Scenario Two Reset";

arng_2 = false;

};


