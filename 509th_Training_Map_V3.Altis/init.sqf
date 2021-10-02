// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
[] execVM "Unit\Anti_cheat\CheatInit.sqf";
[] execVM "Unit\TowArtillery.sqf";
[] execVM "Unit\role_selection\RoleInit.sqf";



//////////////////////View Distance Settings///////////////////////////////////////////////////////////////////////////////////////////

CHVD_allowNoGrass = false;
CHVD_maxView = 8000;
CHVD_maxObj = 8000;

//- Kill House
//- disable targets from moving automatically
nopop = true;

//- will affect all targets in 50m area around TargetCenter
_0 = [50,TargetCenter] execVM "scripts\BEW\Kill_House\BEW_Reset_Kill_House.sqf";

//- Kill House (Control Panel)
[] execVM "scripts\BEW\Kill_House\BEW_KH_Laptop_Actions.sqf";

//- Kill House Lights OFF when mission starts
0 = [0.95] execVM "scripts\BEW\Kill_House\BEW_Kill_House_Lights.sqf";
//End of Killhouse commands

///////////////////////////Public Variables////////////////////////////////////////////////////
publicVariable "rng_1";
publicVariable "rng_2";
publicVariable "rng_3";
publicVariable "rng_4";
publicVariable "rng_5";
publicVariable "rng_6";
publicVariable "arng_1";
publicVariable "arng_2";
publicVariable "arng_3";
publicVariable "arng_4";
publicVariable "arng_5";
rng_1 = false;
rng_2 = false;
rng_3 = false;
rng_4 = false;
rng_5 = false;
rng_6 = false;
arng_1 = false;
arng_2 = false;
arng_3 = false;
arng_4 = false;
arng_5 = false;