_crew6 = [];
_crew7 = [];
_landframe6 = [];
_landframe7 = [];

if (isServer) then {

_crew6 = creategroup EAST;
_landframe6 = [getMarkerPos "arins_1", 7, "rhs_btr60_vmf", _crew6] call BIS_fnc_spawnVehicle;


_crew7 = creategroup EAST;
_landframe7 = [getMarkerPos "arins_5", 7, "rhsgref_BRDM2_vmf", _crew7] call BIS_fnc_spawnVehicle;

hint"Armor/Artillery Scenario one loaded";

sleep 600;

deleteGroup _crew6;
deleteGroup _crew7;
deleteGroup _landframe6;
deleteGroup _landframe7;

hint"Armor/Arty Training Scenario One Reset";

rng_4 = false;

};
