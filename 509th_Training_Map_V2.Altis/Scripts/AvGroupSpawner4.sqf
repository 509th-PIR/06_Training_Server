_crew4 = [];
_airframe3 = [];
_team20 = [];

if (isServer) then {

_crew4 = creategroup EAST;
_airframe3 = [getMarkerPos "avins_11", 270, "RHS_Mi8MTV3_vdv", _crew4] call BIS_fnc_spawnVehicle;

_wp1 = _crew4 addWaypoint [getmarkerpos "wp1_20", 0];
	_wp1 setWaypointType "TR UNLOAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = _crew4 addWaypoint [getmarkerpos "wp1_20a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew4 addWaypoint [getmarkerpos "wp1_20b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 

_team20 = [getmarkerpos "ins_8", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1b = _team20 addWayPoint [getmarkerpos "wp1c", 0];


{_x assignAsCargo (_airframe3 select 0); _x moveInCargo (_airframe3 select 0);} foreach units _team20;

hint"Aviation Ground Training Scenario four loaded";

sleep 600;

deleteGroup _crew4;
deleteGroup _airframe3;
deleteGroup _team20;

hint"Aviation Training Scenario Four Reset";

arng_4 = false;

};


