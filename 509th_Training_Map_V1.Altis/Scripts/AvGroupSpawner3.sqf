_team6 = [];
_crew25 = [];
_landframe25 = [];

if (isServer) then {

_team6 = [getMarkerPos "avins_3", east, ["rhs_msv_sergeant",
"rhs_msv_junior_sergeant",
"rhs_msv_grenadier",
"rhs_gaz66_msv",
"rhs_msv_machinegunner",
"rhs_msv_at",
"rhs_msv_strelok_rpg_assist",
"rhs_msv_rifleman"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;


_crew25 = creategroup EAST;
_landframe25 = [getMarkerPos "avins_6", 7, "rhs_zsu234_aa", _crew25] call BIS_fnc_spawnVehicle;

hint"Aviation Ground Training Scenario three loaded";

sleep 600;

deleteGroup _team6;
deleteGroup _crew25;
deleteGroup _landframe25;

hint"Aviation Training Scenario Three Reset";

arng_3 = false;

};


