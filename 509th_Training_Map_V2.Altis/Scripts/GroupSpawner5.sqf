_crew8 = [];
_crew9 = [];
_landframe8 = [];
_landframe9 = [];

if (isServer) then {

_crew8 = creategroup EAST;
_landframe8 = [getMarkerPos "arins_2", 7, "rhs_bmp1_vmf", _crew8] call BIS_fnc_spawnVehicle;


_crew9 = creategroup EAST;
_landframe9 = [getMarkerPos "arins_6", 7, "rhs_zsu234_aa", _crew9] call BIS_fnc_spawnVehicle;

hint"Armor/Artillery Scenario two loaded";

sleep 600;

deleteGroup _crew8;
deleteGroup _crew9;
deleteGroup _landframe8;
deleteGroup _landframe9;

hint"Armor/Arty Training Scenario Two Reset";

rng_5 = false;

};
