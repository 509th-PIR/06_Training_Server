//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = true;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = true;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.
		
		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/

VVS_Car = [];
VVS_Air = [];
VVS_Ship = [];
VVS_Armored = [];
VVS_Autonomous = [];
VVS_Support = [];

// def 2015 09 19> Uncomment next comment-section /* */ if you want to make this s#$t work faster and predefined (for rhs).

//Everything from arma3 1.50 and RHS 0.3.9.1.
VVS_Premade_List = true;
VVS_Car = ["rhsusf_mrzr4_d","rhsusf_M1220_usarmy_wd","rhsusf_M1220_M153_M2_usarmy_wd","rhsusf_M1220_M2_usarmy_wd","rhsusf_M1220_M153_MK19_usarmy_wd","rhsusf_M1220_MK19_usarmy_wd","rhsusf_M1230_M2_usarmy_wd","rhsusf_M1230_MK19_usarmy_wd","rhsusf_M1230a1_usarmy_wd","rhsusf_M1232_usarmy_wd","rhsusf_M1232_M2_usarmy_wd","rhsusf_M1232_MK19_usarmy_wd","rhsusf_M1237_M2_usarmy_wd","rhsusf_M1237_MK19_usarmy_wd","rhsusf_m1240a1_usarmy_wd","rhsusf_m1240a1_m2crows_usarmy_wd","rhsusf_m1240a1_m2_usarmy_wd","rhsusf_m1240a1_m240_usarmy_wd","rhsusf_m1240a1_mk19crows_usarmy_wd","rhsusf_m1240a1_mk19_usarmy_wd","rhsusf_M1220_M153_M2_usarmy_d","rhsusf_M1220_M2_usarmy_d","rhsusf_M1220_M153_MK19_usarmy_d","rhsusf_M1220_MK19_usarmy_d","rhsusf_M1230_M2_usarmy_d","rhsusf_M1230_MK19_usarmy_d","rhsusf_M1230a1_usarmy_d","rhsusf_M1232_usarmy_d","rhsusf_M1232_M2_usarmy_d","rhsusf_M1232_MK19_usarmy_d","rhsusf_M1237_M2_usarmy_d","rhsusf_M1237_MK19_usarmy_d","rhsusf_m1240a1_usarmy_d","rhsusf_m1240a1_m2crows_usarmy_d","rhsusf_m1240a1_m2_usarmy_d","rhsusf_m1240a1_m240_usarmy_d","rhsusf_m1240a1_mk19crows_usarmy_d","rhsusf_m1240a1_mk19_usarmy_d","rhsusf_m1025_d_m2","rhsusf_m1025_w_m2","rhsusf_m1025_d_Mk19","rhsusf_m1025_w_mk19","rhsusf_m1025_d","rhsusf_m1025_w","rhsusf_m1043_d_m2","rhsusf_m1043_w_m2","rhsusf_m1043_d_mk19","rhsusf_m1043_w_mk19","rhsusf_m1043_d","rhsusf_m1043_w","rhsusf_m1045_d","rhsusf_m1045_w","rhsusf_m998_d_2dr_fulltop","rhsusf_m998_w_2dr_fulltop","rhsusf_m998_d_2dr_halftop","rhsusf_m998_w_2dr_halftop","rhsusf_m998_d_2dr","rhsusf_m998_w_2dr","rhsusf_m998_d_4dr_fulltop","rhsusf_m998_w_4dr_fulltop","rhsusf_m998_d_4dr_halftop","rhsusf_m998_w_4dr_halftop","rhsusf_m998_d_4dr","rhsusf_m998_w_4dr","rhsusf_m966_d","rhsusf_m966_w"];
VVS_CAR = VVS_CAR + ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","B_G_Offroad_01_F","B_G_Offroad_01_armed_F","C_Quadbike_01_F","B_Quadbike_01_F","O_Quadbike_01_F","I_Quadbike_01_F","B_G_Quadbike_01_F","I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","B_Truck_01_transport_F","B_Truck_01_covered_F","O_Truck_02_covered_F","O_Truck_02_transport_F","I_Truck_02_covered_F","I_Truck_02_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_device_F","C_Hatchback_01_sport_F","C_SUV_01_F","B_Truck_01_mover_F","B_Truck_01_box_F","C_Van_01_transport_F","C_Van_01_box_F","C_Kart_01_F","C_Kart_01_Fuel_F","C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","PMC_Offroad_Transport","PMC_Offroad_Armed","PMC_Offroad_Cargo","RHS_Civ_Truck_02_covered_F","RHS_Civ_Truck_02_transport_F","CDF_A3_UAZ_469","CDF_A3_UAZ_469_Open","CDF_A3_UAZ_MG","CDF_A3_UAZ_AGS30","CDF_A3_UAZ_SPG9","CDF_A3_Ural","CDF_A3_Ural_Open","CDF_A3_BM21","CDF_A3_Ural_Empty","CDF_A3_Ural_ZU23"];
VVS_Air = [// Project hatchet 60's
			"vtx_UH60M",
			"vtx_HH60",
			"vtx_MH60S_Pylons_GAU21L", 
			"vtx_MH60S_GAU21L", 
			"vtx_MH60S_Pylons", 
			"vtx_MH60S",
			"vtx_MH60M", 
			"vtx_MH60M_DAP",
			"VTX_KV44",

			//ITC
			"ITC_A10E",

			//RHS helos
			"RHS_MELB_AH6M",
			"RHS_MELB_MH6M",
			"RHS_AH64D",
			"RHS_AH64DGrey",
			"RHS_CH_47F_10",
			"RHS_CH_47F_light",

			//RHS planes 
			"RHS_C130J",

			//F/A 18 beta 
			"JS_JC_FA18E",
			//USAF
			"USAF_AC130U"
			"USAF_C17"
			];

VVS_Ship = ["SeaFox_EP1","C_Boat_Civil_01_police_F","C_Boat_Civil_01_rescue_F","B_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F","B_Boat_Transport_01_F","O_Boat_Transport_01_F","B_Lifeboat","O_Lifeboat","C_Rubberboat","I_Boat_Armed_01_minigun_F","I_Boat_Transport_01_F","C_Boat_Civil_01_F","B_G_Boat_Transport_01_F","B_SDV_01_F","O_SDV_01_F","I_SDV_01_F"];
VVS_Armored = ["rhsusf_m1a2sep1d_usarmy","RHS_M2A3","rhsusf_m109d_usarmy","rhsusf_m109_usarmy","RHS_M2A3_wd","rhsusf_m1a2sep1wd_usarmy"];
VVS_Autonomous = ["B_UAV_01_F","O_UAV_01_F","I_UAV_01_F","B_UAV_02_F","O_UAV_02_F","I_UAV_02_F","B_UAV_02_CAS_F","O_UAV_02_CAS_F","I_UAV_02_CAS_F","B_UGV_01_F","O_UGV_01_F","I_UGV_01_F","B_UGV_01_rcws_F","O_UGV_01_rcws_F","I_UGV_01_rcws_F","rhs_pchela1t_vvs","rhs_pchela1t_vvsc"];
VVS_Support = ["rhsusf_M1078A1P2_D_fmtv_usarmy","rhsusf_M1078A1P2_WD_fmtv_usarmy","rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_D_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy","rhsusf_M1083A1P2_D_fmtv_usarmy","rhsusf_M1083A1P2_WD_fmtv_usarmy","rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_D_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_D_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy","rhsusf_M1084A1P2_D_fmtv_usarmy","rhsusf_M1084A1P2_WD_fmtv_usarmy","rhsusf_M1084A1P2_B_D_fmtv_usarmy","rhsusf_M1084A1P2_B_WD_fmtv_usarmy","rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy","rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy","rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy","rhsusf_M977A4_usarmy_d","rhsusf_M977A4_usarmy_wd","rhsusf_M977A4_AMMO_usarmy_d","rhsusf_M977A4_AMMO_usarmy_wd","rhsusf_M977A4_REPAIR_usarmy_d","rhsusf_M977A4_REPAIR_usarmy_wd","rhsusf_M977A4_BKIT_usarmy_d","rhsusf_M977A4_BKIT_usarmy_wd","rhsusf_M977A4_AMMO_BKIT_usarmy_d","rhsusf_M977A4_AMMO_BKIT_usarmy_wd","rhsusf_M977A4_BKIT_M2_usarmy_d","rhsusf_M977A4_BKIT_M2_usarmy_wd","rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d","rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd","rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d","rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd","rhsusf_M977A4_REPAIR_BKIT_usarmy_d","rhsusf_M977A4_REPAIR_BKIT_usarmy_wd","rhsusf_M978A4_usarmy_d","rhsusf_M978A4_usarmy_wd","rhsusf_M978A4_BKIT_usarmy_d","rhsusf_M978A4_BKIT_usarmy_wd"];

// <def 2015 09 19


/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.
		
		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [];
VVS_R_Air = [];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];