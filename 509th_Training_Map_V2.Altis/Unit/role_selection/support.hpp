
/*support loadout
 Tanker
 JTAC
 Medic
*/

class Support1 {
	displayName = "Tanker";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Support";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes

	// Exported from Arsenal by SPC. Goku
	weapons[] = {
		"rhs_weap_m4_m320",
		"rhsusf_weap_m1911a1",
		"Laserdesignator",
		"Throw",
		"Put"
		};

	magazines[] = {
		"rhs_mag_M441_HE",
		"rhsusf_mag_7x45acp_MHP",
		"Laserbatteries",
		"rhsusf_mag_7x45acp_MHP",
		"rhsusf_mag_7x45acp_MHP",
		"rhsusf_mag_7x45acp_MHP",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M441_HE",
		"rhsusf_mag_7x45acp_MHP",
		"rhsusf_mag_7x45acp_MHP",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
	};
	
	items[] = {
		"ACE_Banana",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_CableTie",
		"ACE_CableTie",
		"ACE_CableTie",
		"ACE_CableTie",
		"ACE_DefusalKit",
		"ACE_Fortify",
		"ItemcTabHCam",
		"ACE_IR_Strobe_Item",
		"ACE_Flashlight_XL50",
		"ACE_Clacker",
		"ACE_MapTools",
		"ACE_microDAGR",
		"MineDetector",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_EntrenchingTool",
		"rhsusf_acc_nt4_black",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ToolKit",
		"ACE_quikclot",
		"ACE_packingBandage",
		"ACE_elasticBandage",
		"ACE_fieldDressing",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_packingBandage"
		};
	
	linkedItems[] = {
		"rhsusf_spcs_ocp_teamleader",
		"rhsusf_cvc_ess",
		"rhsusf_shemagh2_gogg_od",
		"ItemMap",
		"ItemCompass",
		"TFAR_microdagr",
		"TFAR_anprc152_16",
		"ItemcTab",
		"ACE_NVG_Gen4"
		};
	
	uniformClass = "rhs_uniform_acu_ocp";
	backpack = "tfw_ilbe_blade_mc";
};

class Support2 {
	displayName = "JTAC";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Support";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes
	weapons[] = {
		"arifle_MXC_F",
		"Binocular"
	};
	magazines[] = {
		"30Rnd_65x39_caseless_mag",
		"30Rnd_65x39_caseless_mag",
		"SmokeShell"
	};
	items[] = {
		"FirstAidKit"
	};
	linkedItems[] = {
		"V_Chestrig_khk",
		"H_Watchcap_blk",
		"optic_Aco",
		"acc_flashlight",
		"ItemMap",
		"ItemCompass",
		"ItemWatch",
		"ItemRadio"
	};
	uniformClass = "U_B_CombatUniform_mcam_tshirt";
	backpack = "B_AssaultPack_mcamo";
};

class Support3 {
	displayName = "Medic";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Support";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes
	weapons[] = {
		"arifle_MXC_F",
		"Binocular"
	};
	magazines[] = {
		"30Rnd_65x39_caseless_mag",
		"30Rnd_65x39_caseless_mag",
		"SmokeShell"
	};
	items[] = {
		"FirstAidKit"
	};
	linkedItems[] = {
		"V_Chestrig_khk",
		"H_Watchcap_blk",
		"optic_Aco",
		"acc_flashlight",
		"ItemMap",
		"ItemCompass",
		"ItemWatch",
		"ItemRadio"
	};
	uniformClass = "U_B_CombatUniform_mcam_tshirt";
	backpack = "B_AssaultPack_mcamo";
};




