player enableFatigue false;   
player addEventHandler ["Respawn", {player enableFatigue false}];

player setCustomAimCoef 0.1;
player addEventHandler ["Respawn", {player setCustomAimCoef 0.1}];