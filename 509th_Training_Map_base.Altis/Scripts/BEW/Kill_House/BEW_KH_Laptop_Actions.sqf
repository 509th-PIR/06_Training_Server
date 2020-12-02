/////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////// B U L L S E Y E | W O R K S ////////////////////////////////////////////////////////
////////////////////     Created by: BullsEyE    ////////////////////////////////////////////////////////
////////////////////      Modified: 03-02-18     ////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

//- Perform Maintenance to the Kill House
if {isServer} then
[
  player,
  "Maintenance Kill House",
  "images\take_ca.paa",
  "images\take_ca.paa",
  "_target distance Kill_House_Laptop < 2",
  "_target distance Kill_House_Laptop < 2",
  {},
  {},
  {
    sleep 0.5;
    _target playaction "Putdown";
    sleep 1;
    [Kill_House_Laptop, "keyboard_sound"] call CBA_fnc_globalSay3d;
    sleep 2;
    [tffork001, "reset_shoot_house"] call CBA_fnc_globalSay3d;
    [BDoor1,false]remoteExec["hideObjectGlobal",0];
    sleep 1;
    [BDoor2,false]remoteExec["hideObjectGlobal",0];
    sleep 1;
    [bullseye1,false]remoteExec["hideObjectGlobal",0];
    sleep 1;
    [bullseye2,false]remoteExec["hideObjectGlobal",0];
    sleep 1;
    [explosioneffect1,true]remoteExec["hideObjectGlobal",0];
    sleep 1;
    [explosioneffect2,true]remoteExec["hideObjectGlobal",0];
    sleep 1;
    [explosioneffect3,true]remoteExec["hideObjectGlobal",0];
  
    params [["_dist",50,[1]],["_center",player,[objNull]]];			
    _targets = nearestObjects [position _center, ["TargetBase"], _dist];	
    if (count _targets < 1) exitWith {
	systemChat "No compatible targets were found.";						
    };
    {_x animate ["Terc",0];} forEach _targets;								
    {_x addEventHandler ["HIT", {											
    (_this select 0) animate ["Terc",1];									
    (_this select 0) RemoveEventHandler ["HIT",0];							
    }
    ]} forEach _targets;
  },
  {},
  [],
  0.5,
  1000,
  false,
  false
] call BIS_fnc_holdActionAdd;


//- Turn the Kill House Lights OFF

[
  player,
  "Turn Lights OFF",
  "images\take_ca.paa",
  "images\take_ca.paa",
  "_target distance Kill_House_Laptop < 2",
  "_target distance Kill_House_Laptop < 2",
  {},
  {},
  {
    sleep 0.5;
    _target playaction "Putdown";
    sleep 0.5;
    [Kill_House_Laptop, "keyboard_sound"] call CBA_fnc_globalSay3d;
    sleep 2;
    [tffork001, "Power_down"] call CBA_fnc_globalSay3d;
    sleep 2;
    0 = [0.95] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
    sleep 0.5;
    0 = [0] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
    sleep 0.3;
    0 = [0.95] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";

  },
  {},
  [],
  0.5,
  1000,
  false,
  false
] call BIS_fnc_holdActionAdd;



//- Turn the Kill House Lights ON

[
  player,
  "Turn Lights ON",
  "images\take_ca.paa",
  "images\take_ca.paa",
  "_target distance Kill_House_Laptop < 2",
  "_target distance Kill_House_Laptop < 2",
  {},
  {},
  {
    sleep 0.5;
	_target playaction "Putdown";
    sleep 0.5;
    [Kill_House_Laptop, "Keyboard_sound"] call CBA_fnc_globalSay3d;
    sleep 2;
    [tffork001, "power_back_on"] call CBA_fnc_globalSay3d;
    sleep 2;
    0 = [0] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
    sleep 0.8;
    0 = [0.95] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
    sleep 0.4;
    0 = [0] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
    sleep 0.2;
    0 = [0.95] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
    sleep 0.3;
    0 = [0] execVM "Scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";

  },
  {},
  [],
  0.5,
  1000,
  false,
  false
] call BIS_fnc_holdActionAdd;