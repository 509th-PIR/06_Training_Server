//Skrypt zaznaczający miejsce uderzenia pocisku - prykpryk

Pryk_var_ctrlShown = false;
Pryk_var_HitGroups = 0;
Pryk_var_doScreens = false;
Pryk_var_GUIcam = true;

Pryk_fnc_hitTranspose = {
	private _arr = getAllHitPointsDamage _this;						//NEW WAY ORDER SCRIPTING by hallyg, still quite slow - 1.6ms
	if (count _arr == 0) exitWith {"No hitpoints"};
	private _arrNew = (_arr select 0) apply {
		_dmg = (_this getHitPointDamage _x);
		_rgba = [120 - 120 * _dmg,1,1,1] call NGT_fnc_hsvToRGB;
		_rgb = _rgba call BIS_fnc_colorRGBtoHTML;
		format ["%4%5%6%1: %2%3%7", if (_x == "") then {"UNKNOWN"} else {_x}, round (_dmg * 100), "%","<t color='", _rgb ,"'>","</t>"]
	};

	private _text = _arrNew joinString "<br/>";
	_text = parseText ("<t align='left'>" + _text + "</t>");
	_text;
};

NGT_fnc_hsvToRGB = {
	private ["_h", "_s", "_v", "_rgb"];
	_h		= _this select 0; // Degrees [0,360]
	_s		= _this select 1; // Integer [0,1]
	_v		= _this select 2; // Integer [0,1]
	_a		= [_this, 3, 1] call BIS_fnc_param; // Integer [0,1]
	if (_h >= 0) then { // Negative is undefined
		private ["_c", "_dH", "_x", "_m"];
		_c		= _v * _s;
		_dH		= _h / 60;
		_x		= _c * (1 - abs((_dH mod 2) - 1));
		_m		= _v - _c;
		_rgb	= switch (true) do {
			case ((0 <= _dH) && (_dh < 1)): {[_c,_x,0]};
			case ((1 <= _dH) && (_dh < 2)): {[_x,_c,0]};
			case ((2 <= _dH) && (_dh < 3)): {[0,_c,_x]};
			case ((3 <= _dH) && (_dh < 4)): {[0,_x,_c]};
			case ((4 <= _dH) && (_dh < 5)): {[_x,0,_c]};
			case ((5 <= _dH) && (_dh < 6)): {[_c,0,_x]};
		};
		for "_i" from 0 to 2 do {
			_rgb set [_i, ((_rgb select _i) + _m)];
		};
	} else {_rgb = [0,0,0]};
	_rgb pushBack _a;
	_rgb;
};

Pryk_fnc_hitPartEH = 
{
	_removetime = param [1, 30, [0]];
	_showcam = param [2, true, [true]];
	//_calcDisp = param [3, 5, [0]];
	//_verbose = param [4,false, [true]];
	//if (_calcDisp > 15 ) then {_calcDisp = 15};
	
	(_this select 0) params ["_target","_shooter","_bullet","_position","_velocity",["_part",["Other"],[[]]],"_ammo","_direction","","","_direct","_texture","_point"];
	
	If (count _part != 0) then {_part = _part select 0;} else {_part = "Other"};

	_ammo = _ammo select 4;
	_velocitymag = vectorMagnitude _velocity;
	_damage = damage _target;
	_distance = _target distance _shooter;
	_positionATL = ASLToAGL _position;

	if (local _shooter) then 
		{
		Private ["_marker","_maxdist"];
		_marker = "Sign_Sphere10cm_F" createVehicleLocal [0,0,0];
		_marker setPosASL _position;		//createVehicle jest niedokładne
		_marker attachTo [_target];
		[_marker,_removetime] spawn 
		{		
			sleep (_this select 1);
			deleteVehicle (_this select 0);
		};


		if ((typeof _target) in ["TargetP_Inf_Acc2_F","TargetP_Inf2_Acc2_F","TargetP_Inf3_Acc2_F","TargetP_Inf4_Acc2_F","TargetP_Inf_Acc2_NoPop_F","TargetP_Inf2_Acc2_NoPop_F","TargetP_Inf3_Acc2_NoPop_F","TargetP_Inf4_Acc2_NoPop_F"] AND _direct) then {
			_target spawn {
				sleep 0.5;
				_this animate["terc", 0]
			};
			
			_acc = _marker distance (_target modeltoworld [-0.00292969,0.164063,-0.0230722]);
			
			switch (true) do{
				case (_acc <= 0.0332605): {_point = 5;};
				case ((_acc > 0.0332605) and (_acc <=0.0644827)): {_point = 4;};
				case ((_acc > 0.0644827) and (_acc <=0.128921)): {_point = 3;};
				case ((_acc > 0.128921) and (_acc <=0.193369)): {_point = 2;};
				case ((_acc > 0.193369) and (_acc <=0.25782)): {_point = 1;};
				default {_point = 0;};
			};	


			_h = 1.3*(240 - (923*_acc));
			if (_h < 0) then {_h = 0};
			_rgba = [_h,1,1,0.5] call NGT_fnc_hsvToRGB;
			_texture = _rgba call BIS_fnc_colorRGBAtoTexture;
			_marker setObjectTexture [0,_texture];
			
			_acc= (round(_acc*1000))/10;

			_poprawka = _target worldtomodel _positionATL;
			
			_Z = (_poprawka select 2)+0.0230722;
			_Y = (_poprawka select 0)+0.00292969;
			
			_Z= (round(_Z*1000))/10;
			_Y= (round(_Y*1000))/10;
			
			_pion = if (_Z < 0) then {"Too low by "} else {"Too high by "};
			_poziom = if (_Y < 0) then {", to the left by "} else {", to the right by "};
			
			_pkt = _shooter getVariable ["Pryk_punkty",0];
			_pkt = _pkt + _point;
			_shooter setVariable ["Pryk_punkty",_pkt,true];
			_strzaly = _shooter getVariable ["Pryk_strzaly",0];
			_strzaly = _strzaly + 1;
			_shooter setVariable ["Pryk_strzaly",_strzaly,true];
			
			_weaponname = getText (configFile >> "CfgWeapons" >> (currentWeapon _shooter) >> "displayname");
			
			_text1 = format ["<t align='left'><t size='1.5'>%4 points for %8. <br />You have %5 points in %6 shots. Average %7<br /></t>Hit %1 cm away from the centre.<br />Distance: %2 m<br />Terminal velocity: %3 m/s<br />%9%11 cm%10%12 cm<br />Weapon: %13<br />Ammo: %14</t>",_acc, round _distance,round (_velocitymag),_point, _pkt, _strzaly, _pkt/_strzaly, name _shooter, _pion, _poziom, abs(_Z), abs(_Y),_weaponname, _ammo];
			
			
			
			_text2 = if (Pryk_var_HitGroups >= 2) then 
			{	
				_items = player weaponAccessories currentWeapon player;
				_text1 = format ["<t align='left'><t size='1.2'>Weapon: %13<br />Ammo: %14<br />Last hit %1 cm away from the centre.<br />Distance: %2 m<br />Terminal velocity: %3 m/s<br />%9%11 cm%10%12 cm<br />Weapon items: %15</t></t>",_acc, round _distance,round (_velocitymag),_point, _pkt, _strzaly, _pkt/_strzaly, name _shooter, _pion, _poziom, abs(_Z), abs(_Y),_weaponname, _ammo, _items];
				_sumY = 0;
				_sumZ = 0;
				_maxdist = 0;
				_array = _target getVariable ["PrykHitArray",[]];
				
				if (count _array >= Pryk_var_HitGroups) then {
				_target setVariable ["PrykHitArray",[]];
				_target setVariable ["PrykHitMaxDist", 0];
				_array = [];
				};			
				
				_subArray = [_Y,_Z];
				_array pushBack _subArray;
				_target setVariable ["PrykHitArray",_array];
				
				_avgY = {
				_sumY = _sumY + (_x select 0);
				_sumY
				} foreach _array;
				_avgY = _avgY / (count _array);
				
				_avgZ = {
				_sumZ = _sumZ + (_x select 1);
				_sumZ
				} foreach _array;
				_avgZ = _avgZ / (count _array);
				
				_avgZ= (round(_avgZ*10))/10;
				_avgY= (round(_avgY*10))/10;
			
				_pion = if (_avgZ < 0) then {"Too low by "} else {"Too high by "};
				_poziom = if (_avgY < 0) then {", to the left by "} else {", to the right by "};
				
				{
				_A = _x;
					{
						_B = _x;
						_dist = (_A distance2D _B);
						if (_maxDist < _dist) then
						{
							_maxdist = _dist;
						};	
					} foreach _array;
				}	foreach _array;			//Such a bad way to do this
				
				
				_maxdistInch = _maxdist;
				_maxdist= (round (_maxdist*100))/100;
				_maxdistInch = (round (_maxdistInch*100/2.54))/100;
				_moa = 60*((_maxdist / 100) atan2 _distance);
				_moa= (round (_moa*100))/100;
				
				if ((count _array >= (Pryk_var_HitGroups)) AND Pryk_var_doScreens) then {
					_items = _items apply {if (_x == "") then {"None"} else {_x}};
					[_weaponname,_items select 2,_items select 0,str (round _distance) + "m_AvgX-"+ (str _avgY) + "_AvgY-"+ (str _avgZ) +"_MOA-"+(str _moa)+"_Size-"+(str _maxDist)+ "_Shots-"+ (str (count _array)) +"_Vel-"+ (str (round (_velocitymag))) +"_Ammo-" + _ammo + "_@" +(str time) + ".png"] spawn 
					{	
						Pryk_var_localCamera cameraeffect ["internal","back"];
						Pryk_var_localCamera campreparefov 0.3;
						Pryk_var_localCamera camcommitprepared 0;
						showcinemaborder false;
						cameraEffectEnableHUD true;
						_name = _this joinString "\";
						_name = _name splitString "  ";
						_name = _name joinString "_";
						sleep 0.2;
						screenshot _name;
						sleep 0.2;
						Pryk_var_localCamera cameraEffect ["Terminate", "Back","prykcam"];
					};
				}; //TOO BRIGHT SCREENSHOT WITH NO GUI, BOHEMA PLS FIX
				
				format ["<t align='left'><t size='1.2'>%1 cm (%3 inch / %4 MOA) group in %2 shots<br />On average: %5%6cm%7%8cm</t></t>",_maxdist, count _array, _maxdistInch, _moa,_pion,abs _avgZ,_poziom,abs _avgY];		

				
				
			} else {""};
			
			
			
			hint (composeText [ parseText _text1, lineBreak, parseText _text2]);

			//diag_log format ["Strzelec: %1 Broń: %7 X=%2 Y=%3 XY=%4 V=%5 d=%6",name _shooter,_Y,_Z,sqrt(_Y*_Y+_Z*_Z),_velocitymag,_distance, currentWeapon _shooter];
			
		
		} else 
		{
			_marker setObjectTexture [0,'#(argb,8,8,3)color(1,1,0,1)'];
			
			/*_hitpoints = getAllHitPointsDamage _target; 				//Nie działa zbyt dobrze
			diag_log _hitpoints;
			_i =(_hitpoints select 1) find _part;
			Private ["_hitdmg","_hitpart"];
			If (_i >= 0) then 
			{
				_hitdmg = (_hitpoints select 2) select _i;
				_hitdmg = round (_hitdmg * 100);
				_hitpart = (_hitpoints select 0) select _i;
			} else
			{
				_hitdmg = round(_damage*100);
				_hitpart = "Overall";
			};*/
			//hintSilent parseText (format ["<t align='left'>Target: %1<br />Shooter: %2<br />Distance: %7 m<br />Velocity at impact: %3 m/s<br />HitPoint: %4 @ %8%9 damage.<br />Ammo: %5<br />Overall damage: %6%</t>",_target, _shooter, round (_velocitymag), _hitpart, _ammo, round(_damage*100), round (_distance),_hitdmg, "%"]);
			
			_targetname = gettext ( configfile >> "CfgVehicles" >> typeof _target >> "displayname"); 
			if (_part == "head") then {_marker setObjectTexture [0,'#(argb,8,8,3)color(1,0,0,1)'];};
			
			_text1 =  parseText (format ["<t align='left'>Target: %1<br />Shooter: %2<br />Distance: %7 m<br />Velocity at impact: %3 m/s<br />HitPoint: %4<br />Ammo: %5<br />Overall damage: %6%8<br />Hitpoint info:</t>",_targetname, _shooter, round (_velocitymag), _part, _ammo, round(_damage*100), round (_distance), "%"]);
			
			_text2 = _target call Pryk_fnc_hitTranspose;
			
			hint composetext [_text1,linebreak, _text2];
			//diag_log format ["<t align='left'>Target: %1<br />Shooter: %2<br />Distance: %7 m<br />Velocity at impact: %3 m/s<br />HitPoint: %4<br />Ammo: %5<br />Overall damage: %6%8</t>",_targetname, _shooter, round (_velocitymag), _part, _ammo, round(_damage*100), round (_distance), "%"]
			
		};
		_isFlying = player getVariable ["Pryk_var_localCameraFlying",false];

		if (_isFlying) then {
			_FiredHandle = player getVariable ["Pryk_FiredHandle", scriptNull];
			terminate _FiredHandle;
			waitUntil {scriptDone _FiredHandle};
			//hint format ["%1",cansuspend];
			player setVariable ["Pryk_var_localCameraFlying", false];
			//sleep 1;
		};
		if (_showcam) then 
		{
			_multiplier = 30 min (2.2 * sizeof (typeof _target));
			_direction = _direction vectormultiply _multiplier;
			If ((_direction select 2) < 0) then {
			_direction set [2,0];
			};
			
			_camPos = _position vectorAdd _direction;
			if (isNil "Pryk_var_localCamera") then {
				Pryk_var_localCamera = "camera" camCreate _camPos;
			};
			_time = time;
			Pryk_var_camTime = _time;
			Pryk_var_localCamera setPosASL _camPos;
			Pryk_var_localCamera cameraEffect ["Internal","Back", "prykcam"];
			Pryk_var_localCamera camSetTarget _marker;
			Pryk_var_localCamera camSetFov 0.1;
			Pryk_var_localCamera camcommit 0;
			
			if (!Pryk_var_ctrlShown  AND Pryk_var_GUIcam) then {"Pryk_var_layer" cutRsc ["PrykCamera","PLAIN",0.1];};
			_time spawn {
				sleep 5;
				_newtime = missionNamespace getVariable ["Pryk_var_camTime",0];
				_isFlying = player getVariable ["Pryk_var_localCameraFlying",false];
				if ( (_this >= _newtime) AND (!_isFlying)) then {
					"Pryk_var_layer" cutText ["","PLAIN",0.1];
					Pryk_var_ctrlShown = false;
				};
			};
		};
	};
};

Pryk_fnc_firedEH = {
	params ["_unit","_weapon","","","_ammo","","_ammoobj"];
	
	if (isNil "Pryk_var_localCamera") then {
		Pryk_var_localCamera = "camera" camCreate [0,0,0];
	};
	Pryk_var_localCamera cameraEffect ["Internal","Back", "prykcam"];
	_isFlying = player getVariable ["Pryk_var_localCameraFlying",false];
	/*_light =  "#lightpoint" createVehicleLocal (getpos _ammoobj);
	_light setLightBrightness 1.0;
	_light setLightAmbient [1.0, 1.0, 1.0];
	_light setLightColor [1.0, 1.0, 1.0];
	_asd = [_light,_ammoobj] spawn {
		while {alive (_this select 1)} do {
			diag_log (getPosASL (_this select 1));
			(_this select 0) setPosASL (getPosASL (_this select 1));
			sleep 0.015
		};
	};
	_light spawn {sleep 5; deleteVehicle _this};*/
	
	
	if (!_isFlying and !(_weapon in ["Put","Throw"])) then {
		player setVariable ["Pryk_var_localCameraFlying", true];
		Pryk_var_localCamera camSetFov 0.5;
		Pryk_var_localCamera camSetTarget _ammoobj;
		if (!Pryk_var_ctrlShown AND Pryk_var_GUIcam) then {"Pryk_var_layer" cutRsc ["PrykCamera","PLAIN",0.1];};
		_handle = [_ammoobj,_ammo, _weapon, _unit] spawn {
			params ["_ammoobj","_ammo","_weapon","_unit"];
			_timestamp = time;
			player setVariable ["Pryk_FiredHandle", _thisScript];
			_array = [_ammo,_weapon, _unit,_ammoobj, _timestamp];
			Pryk_var_camVars = _array;
			while {alive _ammoobj} do
			{	
				_velocity = (velocity _ammoobj);
				_vel = vectorNormalized _velocity;
				_vel = _vel vectorMultiply 5;
				_relpos = (getPosAsl _ammoobj) vectorDiff _vel;
				Pryk_var_localCamera setPosASL _relpos;
				Pryk_var_localCamera camSetTarget _ammoobj;
				Pryk_var_localCamera camCommit 0;
				sleep 0.003;
			};
			_time = time;
			Pryk_var_camTime = _time;
			player setVariable ["Pryk_var_localCameraFlying", false];
			_time spawn {
				sleep 2;
				_isFlying = player getVariable ["Pryk_var_localCameraFlying",false];
				_newtime = missionNamespace getVariable ["Pryk_var_camTime",0];
				if ((_this >= _newtime) AND (!_isFlying)) then {
					"Pryk_var_layer" cutText ["","PLAIN",0.1];
					Pryk_var_ctrlShown = false;
				};
			};
		};
	};
};

/*Pryk_fnc_firedEH_arty = {
	(_this select 0) params ["_unit","_weapon","","","_ammo","","_ammoobj"];
	_camtarget = param [1, player, [objnull]];
	
	if (isNil "Pryk_var_localCamera") then {
		Pryk_var_localCamera = "camera" camCreate [0,0,0];
		Pryk_var_localCamera cameraEffect ["Internal","Back", "prykcam"];
	};
	_isFlying = player getVariable ["Pryk_var_localCameraFlying",false];
	if (!_isFlying) then {
		player setVariable ["Pryk_var_localCameraFlying", true];
		Pryk_var_localCamera camSetFov 0.5;
		Pryk_var_localCamera camSetTarget _camtarget;
		Pryk_var_localCamera camCommit 0;
		if (!Pryk_var_ctrlShown) then {Pryk_var_localCamera switchCamera "EXTERNAL"};
		_handle = [_ammoobj,_ammo, _weapon, _unit,_camtarget] spawn {
			params ["_ammoobj","_ammo","_weapon","_unit","_camtarget"];
			_timestamp = time;
			player setVariable ["Pryk_FiredHandle", _thisScript];
			_array = [_ammo,_weapon, _unit,_ammoobj, _timestamp];
			Pryk_var_camVars = _array;
			while {alive _ammoobj} do
			{	
				_velocity = (velocity _ammoobj);
				_vel = vectorNormalized _velocity;
				_vel = _vel vectorMultiply 5;
				_relpos = (getPosAsl _ammoobj) vectorDiff _vel;
				//if (_isSACLOS) then {_relpos set [2,2+(_relpos select 2)]};
				Pryk_var_localCamera setPosASL _relpos;
				Pryk_var_localCamera camSetTarget _camtarget;
				Pryk_var_localCamera camCommit 0;
				sleep 0.003;
			};
			_time = time;
			Pryk_var_camTime = _time;
			player setVariable ["Pryk_var_localCameraFlying", false];
			_time spawn {
				sleep 2;
				_isFlying = player getVariable ["Pryk_var_localCameraFlying",false];
				_newtime = missionNamespace getVariable ["Pryk_var_camTime",0];
				if ((_this >= _newtime) AND (!_isFlying)) then {
					player switchcamera "External";
					Pryk_var_ctrlShown = false;
				};
			};
		};
	};
};
*/
Pryk_fnc_refreshInfo ={
	disableSerialization;
	Pryk_var_ctrlShown = true;
	Private ["_display","_idc","_ctrl"];
	_display = _this select 0;
	_idc = 2;
	_ctrl = _display displayCtrl _idc;
	waitUntil {!isNil "Pryk_var_camVars"};
	waitUntil {alive (Pryk_var_camVars select 3)};
	_ammoobj = Pryk_var_camVars select 3;
	while {alive _ammoobj AND (player getVariable ["Pryk_var_localCameraFlying",false])} do
	{	
		Pryk_var_camVars params ["_ammo","_weapon",["_unit",player,[objnull]], ["_ammoobj",player,[objnull]], "_timestamp","_text","_distance"];
		_distance = _unit distance _ammoobj;
		_velocity = vectorMagnitude (velocity _ammoobj);
		_text = format ["Bullet: %1\nVelocity: %2 m/s\nTOF: %3s\nWeapon: %4\nDistance: %5",_ammo, round (_velocity), time - _timestamp,_weapon,round (_distance)];
		_ctrl ctrlSetText _text;
		sleep 0.03;
	};
};

/*
Example: in init field of a target ->  [this, 30, true] spawn PrykAddHitPartEH;
*/
Pryk_fnc_addHitPartEH = {
	params ["_target", "_removetime","_showcam", "_handle"];
	if ((_target getVariable ["Pryk_HitPartHandle",-1]) == -1)  then
	{
		_handle = _target addEventHandler ["HitPart", compile format["[_this select 0,%1,%2] spawn Pryk_fnc_hitPartEH", _removetime, _showcam]];
		_target setVariable ["Pryk_HitPartHandle", _handle];
	};
};

Pryk_fnc_addFiredEH = {
	if ((_this getVariable ["Pryk_FiredEHHandle",-1]) == -1)  then
	{
		_handle = _this addEventHandler ["Fired", {_this spawn Pryk_fnc_firedEH}];
		_this setVariable ["Pryk_FiredEHHandle", _handle];
	};
};
/*
Pryk_fnc_addFiredEH_arty = {
	params ["_shooter","_camtarget"];
	_handle = _shooter addEventHandler ["Fired", compile format["[_this,%1] spawn Pryk_fnc_firedEH_arty", _camtarget]];
	player setVariable ["Pryk_FiredHandle", _handle];
};*/
