call compile preprocessFileLineNumbers "PrykHitPart.sqf";
call compile preprocessFileLineNumbers "ModifiedBISFnc.sqf";
call compile preprocessFileLineNumbers "misc.sqf";
//call compile preprocessFileLineNumbers "Pryk3DMark.sqf";


(_this select 0) addRating 9999999;
(_this select 0) addAction ["Reset score", {(_this select 1) setVariable ["Pryk_punkty",0,true];(_this select 1) setVariable ["Pryk_strzaly",0,true]; }];
(_this select 0) addAction ["Add BulletCam to this vehicle", {vehicle (_this select 0) call Pryk_fnc_addFiredEH},nil,1.5,false,false,"","(((vehicle _this) getVariable ['Pryk_FiredEHHandle',-1]) == -1)"];
(_this select 0) addAction ["Toggle recoil and sway", {
if (unitRecoilCoefficient player != 0) then {
player setCustomAimCoef 0; player setUnitRecoilCoefficient 0;
} else {player setCustomAimCoef 1; player setUnitRecoilCoefficient 1;};
}];


(_this select 0) addAction ["Reset targets", { 
{
_x setVariable ["PrykHitArray",[]];
_x setVariable ["PrykHitMaxDist", 0];
} foreach (allMissionObjects "TargetP_Inf_Acc2_NoPop_F");}];



[] spawn 
{
	waitUntil {!isNil "Pryk_fnc_addFiredEH"};
	{[_x, 20, true] spawn Pryk_fnc_addHitPartEH} foreach (allMissionObjects "");
	player call Pryk_fnc_addFiredEH;
	while {true} do
		{	
			sleep 10;
			{[_x, 20, true] spawn Pryk_fnc_addHitPartEH} foreach (allunits + vehicles);			//params ["_target", "_removetime","_camera"];allunits + vehicles
		};
};

hint "Check briefing for additional options.";
[] spawn PrykShowDistance;