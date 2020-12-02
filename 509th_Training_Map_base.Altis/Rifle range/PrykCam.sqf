//[_target, _offset, _dir] execVM "PrykCam.sqf"

params [["_target",objnull,[objnull]],["_offset",[0,0,2],[[]],3],["_dir",0,[0]],"_toggle"];
Pryk_localCamDelete = false;
Pryk_localHeadCam  = "camera" camCreate (getPos _target);
Pryk_localHeadCam attachto [_target,_offset, "head"];
Pryk_localHeadCam setDir _dir;
Pryk_localHeadCam setPos (getPos Pryk_localHeadCam);
Pryk_localHeadCam cameraEffect ["Internal","Back", "prykcam1"];
Pryk_localHeadCam camsetfov 0.5;
_toggle = 0;

while {!Pryk_localCamDelete} do
{	
	if (_toggle > 0) then {sleep 0.5};
	waitUntil {
		_toggle = inputAction "UavViewToggle";
		(inputAction "UavView" > 0) OR (_toggle > 0);
	};
	"PrykHeadCamLayer" cutRsc ["PrykHeadCamera","PLAIN",0.1];
	
	
	if (_toggle > 0) then {
		sleep 0.5;
		waitUntil {inputAction "UavViewToggle" > 0};
	} else {
		waitUntil {inputAction "UavView" < 1};
	};
	
	"PrykHeadCamLayer" cutText ["", "PLAIN"];
};

camDestroy Pryk_localHeadCam;