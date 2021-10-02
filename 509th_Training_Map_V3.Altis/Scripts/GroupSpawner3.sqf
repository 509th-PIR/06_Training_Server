_crew2 = [];
_airframe2 = [];
_team8 = [];
_crew13 =[];
_landframe13 = [];
_crew14 = [];
_landframe14 = [];
_crew15 = [];
_landframe15 = [];
_crew16 = [];
_landframe16 = [];
_crew17 = [];
_airframe10 = [];

if (isServer) then {

_crew2 = creategroup EAST;
_airframe2 = [getMarkerPos "ins_8", 270, "RHS_Mi8MTV3_vdv", _crew2] call BIS_fnc_spawnVehicle;

_wp1 = _crew2 addWaypoint [getmarkerpos "wp1_8", 0];
	_wp1 setWaypointType "TR UNLOAD"; 
	_wp1 setWaypointSpeed "FULL";
	_wp1 setwaypointstatements ["this land 'land'"];

_wp2 = _crew2 addWaypoint [getmarkerpos "wp1_8a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew2 addWaypoint [getmarkerpos "wp1_8b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "FULL";
	_wp3 setWaypointBehaviour "COMBAT"; 

_team8 = [getmarkerpos "ins_8", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1b = _team8 addWayPoint [getmarkerpos "wp1b", 0];


{_x assignAsCargo (_airframe2 select 0); _x moveInCargo (_airframe2 select 0);} foreach units _team8;

_crew13 = creategroup EAST;
_landframe13 = [getMarkerPos "vins_1", 7, "rhs_btr70_vdv", _crew13] call BIS_fnc_spawnVehicle;

_wp1 = _crew13 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "FULL";

_crew14 = creategroup EAST;
_landframe14 = [getMarkerPos "vins_3", 7, "rhs_2b14_82mm_vdv", _crew14] call BIS_fnc_spawnVehicle;

hint"Hilltop Training Scenario three loaded";

sleep 300;

hint"Watch out! Reinforcements inbound!";

_crew17 = creategroup EAST;
_airframe10 = [getMarkerPos "ins_8", 270, "RHS_Mi24V_vdv", _crew17] call BIS_fnc_spawnVehicle;

_wp1 = _crew17 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "FULL";

_crew15 = creategroup EAST;
_landframe15 = [getMarkerPos "vins_1", 7, "rhs_t90_tv", _crew15] call BIS_fnc_spawnVehicle;

_wp1 = _crew15 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "FULL";

_crew16 = creategroup EAST;
_landframe16 = [getMarkerPos "vins_3", 7, "rhs_t90_tv", _crew16] call BIS_fnc_spawnVehicle;

_wp1 = _crew16 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "FULL";

sleep 600;

deleteGroup _crew2;
deleteGroup _airframe2;
deleteGroup _team8;
deleteGroup _crew13;
deleteGroup _landframe13;
deleteGroup _crew14;
deleteGroup _landframe14;
deleteGroup _crew15 ;
deleteGroup _landframe15;
deleteGroup _crew16;
deleteGroup _landframe16;
deleteGroup _crew17;
deleteGroup _airframe10;

hint"Hilltop Training Scenario Three Reset";

rng_3 = false;

};



