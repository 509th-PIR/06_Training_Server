_crew3 = [];
_crew5 = [];
_landframe1 = [];
_landframe3 = [];
_team14 = [];
_team15= [];
_landframe17 = [];
_crew17 = [];
_landframe12 = [];
_crew12 = [];
_team16 = [];
_team17 = [];

if (isServer) then {

_crew3 = creategroup EAST;
_landframe1 = [getMarkerPos "vins_1", 7, "rhs_btr70_vdv", _crew3] call BIS_fnc_spawnVehicle;

	_wp1 = _crew3 addWaypoint [getmarkerpos "vwp1_1", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

	_wp2 = _crew3 addWaypoint [getmarkerpos "vwp1_1a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

	_wp3 = _crew3 addWaypoint [getmarkerpos "vwp1_1b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 


_crew5 = creategroup EAST;
_landframe3 = [getMarkerPos "vins_3", 7, "rhs_t80ue1", _crew5] call BIS_fnc_spawnVehicle;

_wp1 = _crew5 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

_wp2 = _crew5 addWaypoint [getmarkerpos "vwp1_3a", 0];
	_wp2 setWaypointType "MOVE"; 
	_wp2 setWaypointSpeed "NORMAL"; 

_wp3 = _crew5 addWaypoint [getmarkerpos "vwp1_3b", 0];
	_wp3 setWaypointType "SAD"; 
	_wp3 setWaypointSpeed "NORMAL";
	_wp3 setWaypointBehaviour "COMBAT"; 

_team14 = [getmarkerpos "ins_2", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team14 addWaypoint [getmarkerpos "wp1_2", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";

_team15 = [getmarkerpos "ins_3", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team15 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";

hint"Hilltop Training Scenario two loaded";

sleep 300;

hint"Watch out! Reinforcements inbound!";

_crew17 = creategroup EAST;
_landframe17 = [getMarkerPos "vins_3", 7, "rhs_t80ue1", _crew17] call BIS_fnc_spawnVehicle;

_wp1 = _crew17 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

_crew12 = creategroup EAST;
_landframe12 = [getMarkerPos "vins_3", 7, "rhs_t80ue1", _crew12] call BIS_fnc_spawnVehicle;

_wp1 = _crew12 addWaypoint [getmarkerpos "vwp1_3", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

_team16 = [getmarkerpos "ins_1", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team16 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";

_team17 = [getmarkerpos "ins_3", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team17 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";

sleep 600;

deleteGroup _crew3;
deleteGroup _crew5;
deleteGroup _landframe1;
deleteGroup _landframe3;
deleteGroup _team14;
deleteGroup _team15;
deleteGroup _landframe17;
deleteGroup _crew17;
deleteGroup _landframe12;
deleteGroup _crew12;
deleteGroup _team16;
deleteGroup _team17;

hint"Hilltop Training Scenario Two Reset";

rng_2 = false;

};


