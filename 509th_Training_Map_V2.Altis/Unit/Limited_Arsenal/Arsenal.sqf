/*
Placed in the ammobox init of you choice 
this execVM "Unit\Limited_Arsenal\Arsenal.sqf";
*/


a26_VirtualWeaponCargo = [];
a26_VirtualMagazineCargo = [];
a26_VirtualItemCargo = [];
a26_addVirtualBackpackCargo = [];

// private [
// 	"_available_weapons", 
// 	"_available_Ammo556",
// 	"_available_Ammo762",
// 	"_available_nvgoggles",
// 	"_available_items",
// 	"_available_Headgear",
// 	"_available_Goggles",
// 	"_available_Uniforms",
// 	"_available_Vests",
// 	"_available_BackpackCargo",
// 	"_available_medical",
// 	" _available_handgrenade",
// 	"_available_203",
// 	"_available_ace_items"
// ];



_available_primaries = [
	"rhs_weap_m4a1_blockII_KAC",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m4a1_m203s",
	"rhs_weap_m4a1",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_snd_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_01_GL_khk_F",
	"arifle_SPAR_01_GL_snd_F",
	"rhs_weap_m4",
	"rhs_weap_m4_mstock",
	"rhs_weap_m4_carryhandle",
	"rhs_weap_m4_carryhandle_mstock",
	"rhs_weap_m4_grip",
	"rhs_weap_m4_grip2",
	"rhs_weap_m4_grip3",
	"rhs_weap_m4_mstock_grip",
	"rhs_weap_m4_mstock_grip2",
	"rhs_weap_m4_mstock_grip3",
	"rhs_weap_m4_carryhandle_grip",
	"rhs_weap_m4_carryhandle_grip2",
	"rhs_weap_m4_carryhandle_grip3",
	"rhs_weap_m4_carryhandle_mstock_grip",
	"rhs_weap_m4_carryhandle_mstock_grip2",
	"rhs_weap_m4_carryhandle_mstock_grip3",
	"rhs_weap_m4_m320",
	"rhs_weap_m4_m203",
	"rhs_weap_m4_m203S",
	"rhs_weap_m4_carryhandle_m203",
	"rhs_weap_m4_carryhandle_m203S",
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_d",
	"rhs_weap_m4a1_wd",
	"rhs_weap_m4a1_mstock",
	"rhs_weap_m4a1_d_mstock",
	"rhs_weap_m4a1_wd_mstock",
	"rhs_weap_m4a1_carryhandle",
	"rhs_weap_m4a1_carryhandle_mstock",
	"rhs_weap_m4a1_grip",
	"rhs_weap_m4a1_grip2",
	"rhs_weap_m4a1_grip3",
	"rhs_weap_m4a1_d_grip",
	"rhs_weap_m4a1_d_grip2",
	"rhs_weap_m4a1_d_grip3",
	"rhs_weap_m4a1_wd_grip",
	"rhs_weap_m4a1_wd_grip2",
	"rhs_weap_m4a1_wd_grip3",
	"rhs_weap_m4a1_mstock_grip",
	"rhs_weap_m4a1_mstock_grip2",
	"rhs_weap_m4a1_mstock_grip3",
	"rhs_weap_m4a1_d_mstock_grip",
	"rhs_weap_m4a1_d_mstock_grip2",
	"rhs_weap_m4a1_d_mstock_grip3",
	"rhs_weap_m4a1_wd_mstock_grip",
	"rhs_weap_m4a1_wd_mstock_grip2",
	"rhs_weap_m4a1_wd_mstock_grip3",
	"rhs_weap_m4a1_carryhandle_grip",
	"rhs_weap_m4a1_carryhandle_grip2",
	"rhs_weap_m4a1_carryhandle_grip3",
	"rhs_weap_m4a1_carryhandle_mstock_grip",
	"rhs_weap_m4a1_carryhandle_mstock_grip2",
	"rhs_weap_m4a1_carryhandle_mstock_grip3",
	"rhs_weap_m4a1_m203","rhs_weap_m4a1_m203s",
	"rhs_weap_m4a1_m203s_wd",
	"rhs_weap_m4a1_m203s_d",
	"rhs_weap_m4a1_carryhandle_m203",
	"rhs_weap_m4a1_carryhandle_m203S",
	"rhs_weap_m4a1_m320",
	"rhs_weap_m4a1_blockII",
	"rhs_weap_m4a1_blockII_bk",
	"rhs_weap_m4a1_blockII_wd",
	"rhs_weap_m4a1_blockII_d",
	"rhs_weap_m4a1_blockII_KAC",
	"rhs_weap_m4a1_blockII_KAC_bk",
	"rhs_weap_m4a1_blockII_KAC_wd",
	"rhs_weap_m4a1_blockII_KAC_d",
	"rhs_weap_m4a1_blockII_grip",
	"rhs_weap_m4a1_blockII_grip2",
	"rhs_weap_m4a1_blockII_grip_bk",
	"rhs_weap_m4a1_blockII_grip2_bk",
	"rhs_weap_m4a1_blockII_grip_wd",
	"rhs_weap_m4a1_blockII_grip2_wd",
	"rhs_weap_m4a1_blockII_grip_d",
	"rhs_weap_m4a1_blockII_grip2_d",
	"rhs_weap_m4a1_blockII_grip_KAC",
	"rhs_weap_m4a1_blockII_grip2_KAC",
	"rhs_weap_m4a1_blockII_grip_KAC_bk",
	"rhs_weap_m4a1_blockII_grip2_KAC_bk",
	"rhs_weap_m4a1_blockII_grip_KAC_wd",
	"rhs_weap_m4a1_blockII_grip2_KAC_wd",
	"rhs_weap_m4a1_blockII_grip_KAC_d",
	"rhs_weap_m4a1_blockII_grip2_KAC_d",
	"rhs_weap_m4a1_blockII_M203",
	"rhs_weap_m4a1_blockII_M203_bk",
	"rhs_weap_m4a1_blockII_M203_d",
	"rhs_weap_m4a1_blockII_M203_wd",
	"rhs_weap_hk416d10",
	"rhs_weap_hk416d10_grip",
	"rhs_weap_hk416d10_grip2",
	"rhs_weap_hk416d10_grip3",
	"rhs_weap_hk416d145",
	"rhs_weap_hk416d145_grip",
	"rhs_weap_hk416d145_grip2",
	"rhs_weap_hk416d145_grip3",
	"rhs_weap_hk416d10_LMT",
	"rhs_weap_hk416d10_LMT_grip",
	"rhs_weap_hk416d10_LMT_grip2",
	"rhs_weap_hk416d10_LMT_grip3",
	"rhs_weap_hk416d10_m320",
	"rhs_weap_hk416d145_m320",
	"rhs_weap_hk416d10_LMT_d",
	"rhs_weap_hk416d10_LMT_d_grip",
	"rhs_weap_hk416d10_LMT_d_grip2",
	"rhs_weap_hk416d10_LMT_d_grip3",
	"rhs_weap_hk416d10_LMT_wd",
	"rhs_weap_hk416d10_LMT_wd_grip",
	"rhs_weap_hk416d10_LMT_wd_grip2",
	"rhs_weap_hk416d10_LMT_wd_grip3",
	"rhs_weap_hk416d145_d",
	"rhs_weap_hk416d145_d_2",
	"rhs_weap_hk416d145_wd_2",
	"rhs_weap_hk416d145_wd_2_grip",
	"rhs_weap_hk416d145_wd_2_grip2",
	"rhs_weap_hk416d145_wd_2_grip3",
	"rhs_weap_m27iar",
	"rhs_weap_m27iar_grip",
	"rhs_weap_m27iar_grip1",
	"rhs_weap_m27iar_grip2",
	"rhs_weap_m27iar_grip3",
	"rhs_weap_m32",
	"rhsusf_weap_MP7A2_grip2",
	"rhsusf_weap_MP7A2_grip3",
	"rhs_weap_m4_bipod",
	"rhs_weap_m4a1_bipod",
	"rhs_weap_m4a1_carryhandle_bipod",
	"rhs_m4_compm4",
	"rhs_m4_acog",
	"rhs_m4_grip_compm4",
	"rhs_m4_m203_compm4",
	"rhs_m4a1_compm4",
	"rhs_m4a1_grip_compm4",
	"rhs_m4a1_acog",
	"rhs_m4a1_acog2",
	"rhs_m4a1_acog3",
	"rhs_m4a1_grip_acog",
	"rhs_m4a1_grip_acog2",
	"rhs_m4a1_m203s_ACOG",
	"rhs_m4_acog_usmc",
	"rhs_m4_acog2_usmc",
	"rhs_m4_grip_acog_usmc",
	"rhs_m4_grip_acog3_usmc",
	"rhs_m4_m203_acog_usmc",
	"rhs_m4_m203s_acog_usmc",
	"rhs_m4a1_eotech",
	"rhs_m4a1_acog_usmc",
	"rhs_m4a1_acog2_usmc",
	"rhs_m4a1_acog3_usmc",
	"rhs_m4a1_acog2_usmc_sup",
	"rhs_m4a1_grip_eotech",
	"rhs_m4a1_grip_acog_usmc",
	"rhs_m4a1_grip_acog2_usmc_sup",
	"rhs_m4a1_grip_acog2_usmc_sup_tan",
	"rhs_m4a1_grip_acog3_usmc_sup",
	"rhs_m4a1_m203_acog3_usmc_sup",
	"rhs_weap_m27iar_bipod_acog_usmc",
	"rhs_weap_m27iar_bipod_acog_usmc_sup",
	"rhs_weap_m27iar_bipod_acog_usmc_sup_tan",
	"rhs_weap_m32_usmc",
	"rhs_m4a1_grip_eotech_soc",
	"rhs_weap_m4a1_blockII_KAC_SU230",
	"rhs_weap_m4a1_blockII_M203_SU230",
	"rhs_weap_m4a1_blockII_KAC_SU230_sup"
];

_available_sidearms = [
	"rhs_weap_M320",
	"rhsusf_weap_m1911a1",
	"rhsusf_weap_glock17g4"
];

_available_launchers = [
	"launch_MRAWS_olive_F",
	"launch_MRAWS_green_F",
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp",
	"rhs_weap_maaws_optic"
];

//a26_VirtualMagazineCargo start/////////////////////////

_available_handgrenade =[
	"rhs_mag_an_m8hc",
	"SmokeShell",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"rhs_mag_m67",
	"HandGrenade",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen"
];

_available_sidearms_ammo = [
	"9Rnd_45ACP_Mag",
	"11Rnd_45ACP_Mag",
	"rhsusf_mag_17Rnd_9x19_JHP",
	"rhsusf_mag_17Rnd_9x19_FMJ",
	"rhsusf_mag_15Rnd_9x19_JHP",
	"rhsusf_mag_15Rnd_9x19_FMJ"

];

_available_203 = [
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"rhs_mag_M441_HE",
	"rhs_mag_M585_white",
	"rhs_mag_m713_Red"
];

_available_Ammo556 = [
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG",
	"rhsusf_100Rnd_556x45_M200_soft_pouch",
	"rhsusf_100Rnd_556x45_M200_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_M855_soft_pouch",
	"rhsusf_100Rnd_556x45_M855_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_M855_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_soft_pouch",
	"rhsusf_100Rnd_556x45_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_100Rnd_556x45_M955_soft_pouch",
	"rhsusf_100Rnd_556x45_M955_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_M855_box",
	"rhsusf_200Rnd_556x45_M855_mixed_box",
	"rhsusf_200Rnd_556x45_box",
	"rhsusf_200Rnd_556x45_mixed_box",
	"rhsusf_200Rnd_556x45_M200_soft_pouch",
	"rhsusf_200Rnd_556x45_M200_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_M855_soft_pouch",
	"rhsusf_200Rnd_556x45_M855_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_M855_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_soft_pouch",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_M955_soft_pouch",
	"rhsusf_200Rnd_556x45_M955_soft_pouch_coyote"
];

_available_launchers_ammo = [
	"MRAWS_HEAT_F",
	"MRAWS_HE_F",
	"MRAWS_HEAT55_F",
	"rhs_mag_maaws_HEAT",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HE",
	"rhs_fgm148_magazine_AT"
];

_available_Ammo762 = [
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_50Rnd_762x51_m62_tracer",
	"rhsusf_50Rnd_762x51_m80a1epr"

];

 	// ////////////////      a26_VirtualItemCargo start                          //////////////;
_available_sights = [
	"muzzle_snds_M",
	"optic_Arco","optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_Aco_smg",
	"optic_ACO_grn_smg",
	"optic_Holosight",
	"optic_Holosight_smg",
	"optic_SOS",
	"acc_flashlight",
	"acc_flashlight_smg_01",
	"optic_MRCO",
	"optic_NVS",
	"optic_tws",
	"optic_tws_mg",
	"optic_Yorris",
	"optic_MRD",
	"optic_LRPS",
	"optic_AMS",
	"optic_AMS_khk",
	"optic_AMS_snd",
	"optic_Arco_blk_F",
	"optic_Arco_ghex_F",
	"optic_Hamr_khk_F",
	"optic_ERCO_blk_F",
	"optic_ERCO_khk_F",
	"optic_ERCO_snd_F",
	"optic_SOS_khk_F",
	"optic_LRPS_ghex_F",
	"optic_Holosight_blk_F",
	"optic_Holosight_khk_F",
	"optic_Holosight_smg_blk_F",
	"optic_Holosight_smg_khk_F",
	"optic_Holosight_lush_F",
	"optic_Holosight_arid_F",
	"optic_Arco_lush_F",
	"optic_Arco_arid_F",
	"optic_Arco_AK_blk_F",
	"optic_Arco_AK_lush_F",
	"optic_Arco_AK_arid_F",
	"optic_MRD_black",
	"rhs_acc_uuk",
	"rhs_acc_1p87",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_grip2_wd",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip3_tan",
	"rhsusf_acc_wmx",
	"rhsusf_acc_wmx_bk",
	"rhsusf_acc_T1_high",
	"rhsusf_acc_T1_low",
	"rhsusf_acc_T1_low_fwd",
	"rhsusf_acc_RM05",
	"rhsusf_acc_RM05_fwd",
	"rhsusf_acc_mrds",
	"rhsusf_acc_mrds_fwd",
	"rhsusf_acc_mrds_c",
	"rhsusf_acc_mrds_fwd_c",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_eotech_552_d",
	"rhsusf_acc_eotech_552_wd",
	"rhsusf_acc_anpvs27",
	"rhsusf_acc_ELCAN",
	"rhsusf_acc_ELCAN_ard",
	"rhsusf_acc_su230",
	"rhsusf_acc_su230_mrds",
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230_c",
	"rhsusf_acc_su230_mrds_c",
	"rhsusf_acc_su230a_c",
	"rhsusf_acc_su230a_mrds_c",
	"rhsusf_acc_ACOG",
	"rhsusf_acc_ACOG_wd",
	"rhsusf_acc_ACOG_d",
	"rhsusf_acc_ACOG2",
	"rhsusf_acc_ACOG3",
	"rhsusf_acc_ACOG_USMC",
	"rhsusf_acc_ACOG2_USMC",
	"rhsusf_acc_ACOG3_USMC",
	"rhsusf_acc_ACOG_anpvs27",
	"rhsusf_acc_premier_mrds",
	"rhsusf_acc_premier_low",
	"rhsusf_acc_eotech_xps3",
	"rhsusf_acc_ACOG_MDO",
	"rhsusf_acc_g33_xps3",
	"rhsusf_acc_g33_xps3_tan",
	"rhsusf_acc_g33_T1",
	"rhs_weap_optic_smaw",
	"rhs_optic_maaws",
	"ACE_muzzle_mzls_L",
	"ACE_optic_Hamr_2D",
	"ACE_optic_Arco_2D",
	"ACE_optic_Arco_PIP",
	"ACE_optic_MRCO_2D",
	"ACE_optic_SOS_2D",
	"ACE_optic_SOS_PIP",
	"ACE_optic_LRPS_2D"

];

_available_nvgoggles = [
	"rhsusf_ANPVS_14",
	"rhsusf_ANPVS_15",
	"ACE_NVG_Gen4"
];

_available_binos= [
	"Binocular",
	"Binocular",
	"Rangefinder",
	"Laserdesignator_03",
	"rhsusf_bino_lrf_Vector21"

];

_available_start_items = [
	"ItemCompass",
	"ItemMap",
	"TFAR_anprc152",
	"TFAR_microdagr",
	"B_UavTerminal",
	"ItemcTab",
	"ItemMicroDAGR"

];

_available_misc_items = [
	"MineDetector",
	"ToolKit",
	"rhsusf_acc_nt4_black",
	"ITC_EPLRS",
	"itc_land_tablet_rover",
	"acc_pointer_IR",
	"ITC_ROVER_SIR",
	"rhsusf_acc_anpeq15side",
	"tfw_rf3080Item",
	"ACE_acc_pointer_green",
	"acc_flashlight",
	"itemWatch",
	"ACE_Altimeter"
];

_available_Explosives = [
	"SatchelCharge_Remote_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"ACE_FlareTripMine_Mag",
	"DemoCharge_Remote_Mag",
	"ATMine_Range_Mag",
	"APERSBoundingMine_Range_Mag",
	"rhsusf_m112_mag",
	"rhsusf_m112x4_mag",
	"rhsusf_mine_m49a1_10m_mag",
	"rhsusf_mine_m49a1_3m_mag",
	"rhsusf_mine_m49a1_6m_mag"
];

_available_ace_items = [
	"ACE_MapTools",
	"ACE_CableTie",
	"ACE_EarPlugs",
	"ACE_HuntIR_monitor",
	"ACE_acc_pointer_green",
	"ACE_UAVBattery",
	"ACE_microDAGR",
	"ACE_Sandbag_empty",
	"ACE_SpraypaintBlack",
	"ACE_SpraypaintRed",
	"ACE_SpraypaintGreen",
	"ACE_SpraypaintBlue",
	"ACE_EntrenchingTool",
	"ACE_DAGR",
	"ACE_M26_Clacker",
	"ACE_DefusalKit",
	"ACE_Flashlight_MX991",
	"ACE_Flashlight_XL50",
	"ACE_bodyBag",
	"ACE_Fortify",
	"ACE_RangeTable_82mm",
	"ACE_artilleryTable",
	"ACE_DefusalKit",
	"ACE_IR_Strobe_Item",
	"ACE_Kestrel4500",
	"ACE_Flashlight_KSF1",
	"ACE_RangeCard",
	"ACE_rope36",
	"ACE_SpottingScope",
	"ACE_Tripod",
	"ACE_Wirecutter"

];

_available_medical = [
	"ACE_fieldDressing",
	"ACE_splint",
	"ACE_epinephrine",
	"ACE_bloodIV",
	"ACE_bloodIV_500",
	"ACE_bloodIV_250",
	"ACE_salineIV",
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_personalAidKit",
	"ACE_surgicalKit",
	"ACE_packingBandage",
	"ACE_morphine",
	"ACE_tourniquet",
	"ACE_elasticBandage",
	"ACE_quikclot",
	"ACE_epinephrine"	
];

_available_Uniforms = [
	"rhs_uniform_cu_ocp",
	"JS_JC_FA18_PilotCoveralls",
	"rhs_uniform_g3_mc",
	"rhs_uniform_cu_ocp",
	"U_B_HeliPilotCoveralls",
	"rhs_uniform_g3_mc",
	"rhs_uniform_cu_ocp",
	"rhs_uniform_cu_ocp_1stcav",
	"rhs_uniform_cu_ocp_82nd",
	"rhs_uniform_cu_ocp_101st",
	"rhs_uniform_cu_ocp_10th",
	"rhs_uniform_acu_oefcp",
	"rhs_uniform_acu_ocp"
];

_available_Headgear = [
	"JS_JC_FA18_PilotHelmet",
	"rhsusf_ach_helmet_ocp",
	"rhsusf_ach_helmet_ocp_alt",
	"rhsusf_ach_helmet_ocp_norotos",
	"rhsusf_ach_helmet_camo_ocp",
	"rhsusf_ach_helmet_headset_ocp",
	"rhsusf_ach_helmet_headset_ocp_alt",
	"rhsusf_ach_helmet_ESS_ocp",
	"rhsusf_ach_helmet_ESS_ocp_alt",
	"rhsusf_ach_helmet_headset_ess_ocp",
	"rhsusf_ach_helmet_headset_ess_ocp_alt",
	"rhsusf_hgu56p_visor_mask_skull",
	"rhsusf_hgu56p_visor_mask_mo",
	"rhsusf_ihadss",
	"rhsusf_cvc_helmet",
	"rhsusf_cvc_alt_helmet",
	"rhsusf_cvc_green_helmet",
	"rhsusf_cvc_green_alt_helmet",
	"rhsusf_cvc_ess",
	"rhsusf_cvc_green_ess"
];

_available_Goggles = [
	"rhsusf_googles_black",
	"rhsusf_googles_yellow",
	"rhsusf_googles_orange",
	"rhsusf_googles_clear",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"G_Aviator"
];

_available_Vests = [
	"rhsusf_iotv_ocp",
	"rhsusf_iotv_ocp_Grenadier",
	"rhsusf_iotv_ocp_Medic",
	"rhsusf_iotv_ocp_Repair",
	"rhsusf_iotv_ocp_Rifleman",
	"rhsusf_spcs_ocp",
	"rhsusf_spcs_ocp_squadleader",
	"rhsusf_spcs_ocp_teamleader",
	"rhsusf_spcs_ocp_teamleader_alt",
	"rhsusf_spcs_ocp_saw",
	"rhsusf_spcs_ocp_grenadier",
	"rhsusf_spcs_ocp_rifleman",
	"rhsusf_spcs_ocp_rifleman_alt",
	"rhsusf_spcs_ocp_medic",
	"rhsusf_spcs_ocp_crewman",
	"rhsusf_spcs_ocp_machinegunner",
	"rhsusf_spcs_ocp_sniper",
	"rhsusf_mbav",
	"rhsusf_mbav_light",
	"rhsusf_mbav_rifleman",
	"rhsusf_mbav_mg",
	"rhsusf_mbav_grenadier",
	"rhsusf_mbav_medic",
	"UK3CB_ADA_B_V_MBAV_DES",
	"UK3CB_ADA_O_V_MBAV_DES"

];
_available_barrel_attatchments = [
	"ace_muzzle_mzls_l",
	"ace_muzzle_mzls_b",
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_nt4_tan",
	"rhsusf_acc_rotex5_grey",
	"rhsusf_acc_rotex5_tan",
	"rhsusf_acc_sf3p556",
	"rhsusf_acc_sfmb556",
	"rhsusf_acc_m24_muzzlehider_black",
	"rhsusf_acc_m24_muzzlehider_d",
	"rhsusf_acc_m24_muzzlehider_wd",
	"rhsusf_acc_m24_silencer_black",
	"rhsusf_acc_m24_silencer_d",
	"rhsusf_acc_m24_silencer_wd",
	"rhsusf_acc_ardec_m240",
	"muzzle_snds_h_mg_blk_f",
	"muzzle_snds_h_mg_khk_f",
	"rhsusf_acc_sr25s",
	"rhsusf_acc_sr25s_d",
	"rhsusf_acc_sr25s_wd",
	"rhsusf_acc_m2010s",
	"rhsusf_acc_m2010s_d",
	"rhsusf_acc_m2010s_sa",
	"rhsusf_acc_m2010s_wd",
	"rhsusf_acc_aac_762sd_silencer",
	"ace_muzzle_mzls_smg_02",
	"rhsusf_acc_omega9k",
	"rhsusf_acc_aac_762sdn6_silencer"
];

_available_bipods = [
	"bipod_01_f_blk",
	"bipod_01_f_mpt",
	"bipod_01_f_snd",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_grip2_wd",
	"rhsusf_acc_grip1",
	"rhsusf_acc_harris_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_rvg_de",
	"rhsusf_acc_tdstubby_blk",
	"rhsusf_acc_tdstubby_tan",
	"rhsusf_acc_grip3",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip4_bipod",
	"rhsusf_acc_lw_bipod",
	"rhsusf_acc_grip3_tan"
];

//////////////////    a26_addVirtualBackpackCargo   start             ////////////////////////
_available_Backpack = [
		"B_LegStrapBag_black_F",
		"rhsusf_assault_eagleaiii_ocp",
		"ACE_NonSteerableParachute",
		"tfw_ilbe_whip_mc",
		"tfw_ilbe_blade_mc",
		"B_AssaultPack_mcamo_Ammo",
		"B_FieldPack_khk",
		"B_Carryall_mcamo",
		"B_Carryall_cbr",
		"B_Bergen_mcamo_F",
		"B_LegStrapBag_coyote_F",
		"rhsusf_falconii_mc",
		"RHS_M2_Gun_Bag",
		"RHS_M2_Tripod_Bag",
		"RHS_M2_MiniTripod_Bag",
		"rhs_M252_Gun_Bag",
		"rhs_M252_Bipod_Bag",
		"ACE_TacticalLadder_Pack",
		"tfw_ilbe_DD_mc",
		"itc_rhsusf_M252_Bipod_Bag",
		"itc_rhsusf_M252_Gun_Bag",
		"UK3CB_ADP_B_B_ENG",
		"RHS_MK19_Gun_Bag",
		"RHS_MK19_Tripod_Bag",
		"rhs_Tow_Gun_Bag",
		"rhs_TOW_Tripod_Bag"	
];

a26_VirtualWeaponCargo = 
	_available_primaries + 
	_available_sidearms + 
	_available_launchers ;

a26_VirtualMagazineCargo =  
	_available_203 + 
	_available_Ammo556 + 
	_available_handgrenade + 
	_available_Ammo762 +
	_available_launchers_ammo +
	_available_sidearms_ammo+
	_available_Explosives;

a26_VirtualItemCargo = 
	_available_nvgoggles + 
	_available_misc_items + 
	_available_medical + 
	_available_Uniforms + 
	_available_Vests + 
	_available_ace_items + 
	_available_Goggles + 
	_available_binos + 
	_available_start_items + 
	_available_Headgear + 
	_available_barrel_attatchments+
	_available_sights;

a26_addVirtualBackpackCargo = _available_Backpack;

["AmmoboxInit",[_this]] spawn BIS_fnc_arsenal;
[_this, a26_VirtualWeaponCargo, true] call BIS_fnc_addVirtualWeaponCargo;
[_this, a26_VirtualMagazineCargo, true ] call BIS_fnc_addVirtualMagazineCargo;
[_this, a26_VirtualItemCargo, true ] call BIS_fnc_addVirtualItemCargo;
[_this, a26_addVirtualBackpackCargo, true ] call BIS_fnc_addVirtualBackpackCargo;




//this execVM "Unit\Limited_Arsenal\Arsenal.sqf";




