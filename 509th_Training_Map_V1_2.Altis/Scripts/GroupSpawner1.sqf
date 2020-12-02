//nul = execVM "GroupSpawner1.sqf";

//_crew1 = [];

//_airframe1 = [];

//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
_team1 = [];
_team2 = [];
_team3 = [];
_team10 = [];
_team11 = [];
_team12 = [];
_landframe18 = [];
_crew18 = [];

if (isServer) then {
_team1 = [getmarkerpos "ins_1", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team1 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";




_team2 = [getmarkerpos "ins_2", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team2 addWaypoint [getmarkerpos "wp1_2", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "COLOUMN";



_team3 = [getmarkerpos "ins_3", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team3 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "LINE";

hint"Hilltop Training Scenario one loaded";	

sleep 300;

hint"Watch out! Reinforcements inbound!";

_team10 = [getmarkerpos "ins_1", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team10 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";

_team11 = [getmarkerpos "ins_2", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team11 addWaypoint [getmarkerpos "wp1_2", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";    

_team12 = [getmarkerpos "ins_3", east, ["rhs_vdv_recon_sergeant","rhs_vdv_recon_efreitor","rhs_vdv_recon_arifleman","rhs_vdv_recon_machinegunner_assistant","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _team12 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "SAFE";
    _wp1 setWaypointFormation "DIAMOND";

_crew18 = creategroup EAST;
_landframe18 = [getMarkerPos "vins_1", 7, "rhs_bmp2_tv", _crew18] call BIS_fnc_spawnVehicle;

_wp1 = _crew18 addWaypoint [getmarkerpos "vwp1_1", 0];
	_wp1 setWaypointType "MOVE"; 
	_wp1 setWaypointSpeed "NORMAL";

sleep 600;

deleteGroup _team1;
deleteGroup _team2;
deleteGroup _team3 ;
deleteGroup _team10;
deleteGroup _team11;
deleteGroup _team12;
deleteGroup _landframe18;
deleteGroup _crew18;

hint"Hilltop Training Scenario One Reset";



};





//_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_1", 0];
//	_wp1 setWaypointType "TR UNLOAD"; 
//	_wp1 setWaypointSpeed "FULL";
//	_wp1 setwaypointstatements ["this land 'land'"];

//_mygroup = [getmarkerpos "EXAMPLE VARIABLE NAME", Side, ["Class_Name"],[],[],[],[],[],Spawn bearing] call BIS_fnc_spawnGroup;
//_wp1a = _mygroup addWaypoint [getmarkerpos "wp1_1", 0];

//sleep x;
//_mygroup = _mygroup;
//{_x assignAsCargo (_airframe1 select 0); _x moveInCargo (airframe1 select 0);} foreach units _mygroup;
// add }; at the end