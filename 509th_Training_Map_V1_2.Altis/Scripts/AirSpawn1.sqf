
_plane1 = [];
_plane2 = [];
_plane3 = [];
_plane4 = [];
_pilot1 = [];


if (isServer) then {

_pilot1 = creategroup EAST;
_plane1 = [getMarkerPos "avins_7", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;
_plane2 = [getMarkerPos "avins_8", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;
_plane3 = [getMarkerPos "avins_9", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;
_plane4 = [getMarkerPos "avins_10", 270, "rhs_mig29sm_vvs", _pilot1] call BIS_fnc_spawnVehicle;



_wp1 = _pilot1 addWaypoint [getmarkerpos "awp_1", 0];
	_wp1 setWaypointType "SAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setWaypointBehaviour "COMBAT";



hint"Aviation Air Training Scenario one loaded";

sleep 600;

deleteGroup _plane1;
deleteGroup _plane2;
deleteGroup _plane3;
deleteGroup _plane4;
deleteGroup _pilot1;

hint"Aviation Training Scenario Five Reset";

arng_5 = false;

};

