/*
creates a simple camera and sends the feed to a screen
author: Mr H.
eg 

waitUntil  {time>1};

execVM [MyCameraObject,MytargetObject,MyScreen,"UNIQUEFEEDID"] ExecVM "\scripts\BEW\Cameras\CQB_Cameras.sqf"

*/
params ["_cameraobject","_target","_screen","_feedID"];
waitUntil {time>1};
  _camera = "camera" camCreate (getposATL _cameraobject);  
  
 _camera cameraEffect ["internal","back",_feedID];  
 _camera camCommand "inertia on"; 
 _camera camPrepareTarget _target; 
 _camera camPrepareFOV 0.9; 
 _camera camCommitPrepared 0;
 
_cameraobject setVariable ["MRH_LinkedCam", _camera];
_feedID setPiPEffect [0]; 

_feedprocessed = "#(argb,512,512,1)r2t(" + _feedID +",1.0)";

_screen setObjectTexture [0, _feedprocessed];

/*
copy the following line in the "on deactivation" field of the trigger


 {_doDelete = _x getVariable "MRH_linkedCam"; _toDelete cameraEffect ["terminate","back"];
camDestroy _toDelete;} forEach [];
*/