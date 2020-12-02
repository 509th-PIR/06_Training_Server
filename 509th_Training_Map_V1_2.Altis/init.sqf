// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
//End of Vcom commands

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

//////////////////////View Distance Settings///////////////////////////////////////////////////////////////////////////////////////////

CHVD_allowNoGrass = false;
CHVD_maxView = 8000;
CHVD_maxObj = 8000;

////////////////Anit Cheat/////////////////////////////////////////////////////

// Admin and cheat mods
if (["KA_proving_ground",
	"NSS_Admin_Console",
	"MGI_TP_V3",
	"MGI_TG",
	"XEDOM_AdminTool",
	"SSPCM",
	"Revo_DC", 
	"mcc_sandbox",
	"mcc_sandbox_curatorExp",
	"sn_backpack_air",
	"sn_backpack_tt",
	"sn_backpack_sw",
	"SPCONTROLMOD",
	"targetedBUGHANDLER",
	"TPW_HUD"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["AdminMod", false, 2] call BIS_fnc_endMission;};

    //Mods banned off the Server
if (["tf47_launchers",
	"ravage",
	"BloodSplatter",
	"BloodlustLITE_Auto",
	"BloodSplatterLITE",
	"AACC",
	"KA_Suitcase_Nuke",
	"hlcweapons_M134",
	"bullet_cases"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
		["RestrictedMods", false, 2] call BIS_fnc_endMission;};

//arsenal Block
if (["PA_arsenal",	
	"VAS_Diag",
	"Gear_Loadout", 
	"KA_VAA",
	"vaa_arsenal",
	"nks_arsenal",
	"IA_ACE_VAA",
	"Lordeath_arsenal",
	"Roys_Arsenal"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["ArsenalMod", false, 2] call BIS_fnc_endMission;};



///////////////////////////Firing Range////////////////////////////////////////////////////////




//////////////////////////////helmet mod stuff////////////////////////////////////////
rhs_helmet_list = ["rhsusf_ach_helmet_headset_ess_ocp_alt",
                    "rhsusf_ach_helmet_ocp_alt",
                    "rhsusf_ach_helmet_ESS_ocp",
                    "rhsusf_ach_helmet_ESS_ocp_alt",
                    "rhsusf_ach_helmet_headset_ocp",
                    "rhsusf_ach_helmet_headset_ocp_alt",
                    "rhsusf_ach_helmet_headset_ess_ocp",
                    "rhsusf_ach_helmet_headset_ess_ocp_alt",
                    "rhsusf_ach_helmet_camo_ocp",
                    "rhsusf_ach_helmet_ocp_norotos"];

SAN_Headlamp_Helmets append rhs_helmet_list;
SAN_Headlamp_ColorCompatibleLamps append rhs_helmet_list;










///////////////////////////Clean up Map////////////////////////////////////////////////////////


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
