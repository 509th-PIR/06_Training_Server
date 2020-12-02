_params = _this select 3;
_side = _params select 0;
_radius = _params select 1;

_nearUnit = player nearEntities [["Man","Car","Tank","Air"], _radius];
{
 if (side _x == _side) then {
   deleteVehicle _x;
 };
} forEach (_nearUnit - [player]);

sleep 0.5

//player/this addAction ["Clear AO", "Scripts\clear_AO.sqf", [east, 1700]];