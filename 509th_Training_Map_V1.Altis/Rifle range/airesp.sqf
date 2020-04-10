//_this setCaptive true;
_this disableAI "ANIM";
//_this addUniform "U_B_CTRG_Soldier_PRK_F";
_this addVest "V_TacVest_blk";
_this addHeadgear "H_HelmetSpecO_ocamo";
[_this, 20, true, 0] spawn Pryk_fnc_addHitPartEH;
[_this] spawn pBIS_fnc_VRHitpart;

[_this,false,3] spawn BIS_fnc_VREffectKilled;

_this addEventHandler ["Killed",{
	_this spawn {
	params ["_object","_killer"];
	_type = typeOf _object;
	_pos = getPosASL _object;
	_dir = _pos getDir (getMarkerPos "marker_36");
	sleep 5;
	_newobj = _type createVehicle _pos;
	_newobj setPosASL _pos;
	_newobj setDir _dir;
	_newobj execVM "airesp.sqf";
	};
	
}];