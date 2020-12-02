_crew21 = [];
_team4 = [];
_landframe21 = [];

if (isServer) then {

_team4 = [getMarkerPos "avins_1", east, ["rhs_msv_emr_sergeant",
"rhs_msv_emr_efreitor",
"rhs_msv_emr_grenadier_rpg",
"rhs_msv_emr_strelok_rpg_assist",
"rhs_msv_emr_machinegunner",
"rhs_msv_emr_LAT",
"rhs_msv_emr_rifleman"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_crew21 = creategroup EAST;
_landframe21 = [getMarkerPos "avins_5", 7, "rhs_t72ba_tv", _crew21] call BIS_fnc_spawnVehicle;


hint"Aviation Ground Training Scenario one loaded";

sleep 600;

deleteGroup _crew21;
deleteGroup _team4;
deleteGroup _landframe21;

hint"Aviation Training Scenario One Reset";

arng_1 = false;

};

