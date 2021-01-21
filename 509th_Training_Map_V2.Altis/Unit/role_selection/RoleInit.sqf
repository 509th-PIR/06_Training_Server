private _classList = [["Infantry",7], ["Pilot",2], ["Support",3]];
{
  _x params ["_class","_amount"];
  for [{_i = 1}, {_i <= _amount}, {_i = _i + 1}] do {
      [west, (_class + str _i)] call BIS_fnc_addRespawnInventory;
  };
} forEach _classList;