_crew10 = [];
_crew11 = [];
_landframe10 = [];
_landframe11 = [];

if (isServer) then {

_crew10 = creategroup EAST;
_landframe10 = [getMarkerPos "arins_3", 7, "rhs_gaz66_ammo_vmf", _crew10] call BIS_fnc_spawnVehicle;


_crew11 = creategroup EAST;
_landframe11 = [getMarkerPos "arins_4", 7, "rhs_t72be_tv", _crew11] call BIS_fnc_spawnVehicle;

hint"Armor/Artillery Scenario three loaded";

sleep 600;

deleteGroup _crew10;
deleteGroup _crew11;
deleteGroup _landframe10;
deleteGroup _landframe11;

hint"Armor/Arty Training Scenario Three Reset";

rng_6 = false;

};

