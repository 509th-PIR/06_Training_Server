PrykShowDistance = {
	while {alive player} do
	{
		_target = cursorObject;
		sleep 1;
		if (_target == cursorObject) then 
		{	
			_target = cursorObject;
			_dist = player distance _target;
			if (_dist < 2500) then {
				_dist = player distance _target;
				_dist = round _dist;
				"PrykShowDistance" cutText [format ["Target is %1 m away.",_dist],"PLAIN DOWN"];
			};
		};
		sleep 2;
		"PrykShowDistance" cutText ["","PLAIN DOWN"];
	}

};

PrykCompareWeapons = {
params ["_weapcount","_finaltext"];
_weapcount = count (configFile >> "CfgWeapons");
_configs = "(getnumber (_x >> 'scope') >= 2) AND !('ItemCore' in ([_x,true] call BIS_fnc_returnParents))" configClasses (configFile >> "CfgWeapons");
{_configs set [_forEachIndex,configname _x]} foreach _configs;
copyToClipboard str _configs;

};