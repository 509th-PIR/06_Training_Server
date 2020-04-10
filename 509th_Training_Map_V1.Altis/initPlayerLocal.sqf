player enableFatigue false;   
player addEventHandler ["Respawn", {player enableFatigue false}];

player setCustomAimCoef 0.0;
player addEventHandler ["Respawn", {player setCustomAimCoef 0.0}];

removeAllWeapons player;
player addEventHandler ["Respawn", {removeAllWeapons player}];

//////////////////////////////Rifle Range///////////////////////////////////////////

