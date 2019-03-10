//  S 3   I N S T R U C T O R S   A N D   S T U D E N T S

// SCHOOL OF INFANTRY

class CAV_SOI_INSTR : CAV_Charlie_Base {  // Instructor

    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"H_Cap_usblack"};
    goggles[] = {""};
    vest[] = {"rhsusf_spcs_ocp"};
    backpack[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,
		"SmokeShell",4,
		"SmokeShellBlue",2,
		"SmokeShellRed",2,
		"SmokeShellYellow",2,
		
		"ACE_Chemlight_HiBlue",3,
		"ACE_Chemlight_HiRed",3,
		"ACE_Chemlight_HiYellow",3
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Standard
        "ACE_EarPlugs",
		"ACE_Flashlight_MX991",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_SpraypaintRed",
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {"Follow_Me"};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_INSTR_SL : CAV_Training_Base_B {  // Squad Leader
    
    vest[] = {"rhsusf_iotv_ocp_Squadleader"};
	
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",8,
        "SmokeShell",8
    };
	
	items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
		
		//Standard
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_STUD_TL : CAV_Training_Base_B {  // Team Leader
    
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
	
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",8,
        "SmokeShell",8
    };
	
	items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
		
		//Standard
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_STUD_AR : CAV_Training_Base_B {  // Automatic Rifleman
    
    vest[] = {"rhsusf_iotv_ocp_SAW"};
	
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",8,
        "SmokeShell",8
    };
	
	items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
		
		//Standard
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_STUD_GR : CAV_Training_Base_B {  // Granadier
    
    vest[] = {"rhsusf_iotv_ocp_Grenadier"};
	
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",8,
        "SmokeShell",8
    };
	
	items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
		
		//Standard
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_STUD_RM : CAV_Training_Base_B {  // Rifleman
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",8,
        "SmokeShell",8
    };
	
	items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
		
		//Standard
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_STUD_CLS : CAV_Training_Base_B {  // Combat Life Saver
    
    vest[] = {"rhsusf_iotv_ocp_Medic"};
	
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,

        "rhs_mag_m67",4,
		"SmokeShell",4,
		
		"SmokeShellGreen",2,
		"SmokeShellRed",2,
		"SmokeShellYellow",2,
		
		"ACE_Chemlight_HiGreen",2,
		"ACE_Chemlight_HiRed",2,
		"ACE_Chemlight_HiYellow",2
    };
	
	items[] = {
        // Personal Medical Equipment
		"ACE_personalAidKit",
		"ACE_quikclot",20,
		"ACE_tourniquet",6,
		"ACE_morphine",6,
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_BLN_STUD : CAV_Training_Base_B {  // Map & Compass
    

    vest[] = {""};
    backpack[] = {""};
	
	primary[] = {""};

    magazines[] = {

    };
	
	items[] = {

		//Standard
		"ACE_MapTools",
		"ACE_Flashlight_MX991",

		};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

// THE AIRBORNE SCHOOL

class CAV_JM_INSTR : CAV_Charlie_Base {  // Instructor
    
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    goggles[] = {"rhsusf_oakley_goggles_clr"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};
    backpack[] = {"B_AssaultPack_mcamo"};
	
	primary[] = {"rhs_weap_m4a1_carryhandle_grip","ACE_muzzle_mzls_L","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR_3d","rhsusf_acc_grip1"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",8,
        "SmokeShell",8
    };
	
	items[] = {
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
		
		//Standard
		"ACE_CableTie",
		"ACE_EarPlugs",
		"ACE_MapTools",
		"ACE_Flashlight_MX991",
		
		//Electronics
		"ACE_DAGR",
		
		//Tools
		"ACE_EntrenchingTool",
		
		//Nods
		"rhsusf_ANPVS_14"
		};
        
    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_JM_STUD : CAV_Charlie_Base {  // Student
    
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    goggles[] = {"rhsusf_oakley_goggles_clr"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    backpack[] = {"B_AssaultPack_mcamo"};
    binoculars[] = {"ACE_Vector"};
	
	primary[] = {"rhs_weap_m4a1_carryhandle_grip","ACE_muzzle_mzls_L","rhsusf_acc_anpeq15_bk","rhsusf_acc_ACOG_RMR_3d","rhsusf_acc_grip1"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",7,
		
		"SmokeShell",8,
		"rhs_mag_m67",4,
		
		"SmokeShellBlue",4,
		"SmokeShellRed",4,
		"SmokeShellYellow",4,
		
		"ACE_Chemlight_HiBlue",8,
		"ACE_Chemlight_HiRed",8,
		"ACE_Chemlight_HiYellow",8,
		
		"B_IR_Grenade",4
	};
	
	items[] = {
        // Radios
		"ACRE_PRC148_ID_2",
		"ACRE_PRC152_ID_3",
		
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
		"ACE_CableTie",
        "ACE_EarPlugs",
        "ACE_MapTools",
		"ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR",
		
		//NODs
		"rhsusf_ANPVS_14"
	};

    gps[] = {"ItemAndroid"};
	
	insignia[] = {"CAG"};
    

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

// THE ARMOR SCHOOL

class CAV_TCS_INSTR : CAV_Bravo_Base {  // Instructor

    headgear[] = {"H_Cap_usblack"};
    goggles[] = {"rhsusf_shemagh_od"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    secondary[] = {"rhsusf_weap_m9"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
        "rhsusf_mag_15Rnd_9x19_JHP",4,

        "rhs_mag_m714_White",
        "rhs_mag_m713_Red",
        "rhs_mag_m715_Green",
        "rhs_mag_m662_red",
        "rhs_mag_m661_green",

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",6,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_TCS_STUD : CAV_Bravo_Base {  // Crewman
    headgear[] = {"rhsusf_cvc_green_helmet"};
    goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

// AVIATION CENTER OF EXCELLENCE

class CAV_ACE_ROTARY_INSTR : CAV_Alpha_Base {  // Rotary Instructor Pilots

    goggles[] = {"rhsusf_shemagh_od"};
    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor"};

    gps[] = {"ItemcTab"};

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_ACE_ROTARY_STUD : CAV_Alpha_Base {  // Rotary Instructor Pilots

    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor_green"};

    gps[] = {"ItemcTab"};

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_ACE_FIXED_INSTR : CAV_Alpha_Base {

    nvgs[] = {""};
    backpack[] = {""};
    headgear[] = {"H_PilotHelmetFighter_B"};  // This has been tested by CPT.Blackburn.J
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {

        "rhsusf_mag_15Rnd_9x19_JHP",3,

        "Chemlight_green",
        "ACE_Chemlight_HiRed",
        "ACE_Chemlight_HiYellow",
        "SmokeShell",
        "SmokeShellGreen",
        "SmokeShellRed",
        "B_IR_Grenade",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR"
    };

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_ACE_FIXED_STUD : CAV_Alpha_Base {

    nvgs[] = {""};
    backpack[] = {""};
    headgear[] = {"H_PilotHelmetFighter_B"};  // This has been tested by CPT.Blackburn.J
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {

        "rhsusf_mag_15Rnd_9x19_JHP",3,

        "Chemlight_green",
        "ACE_Chemlight_HiRed",
        "ACE_Chemlight_HiYellow",
        "SmokeShell",
        "SmokeShellGreen",
        "SmokeShellRed",
        "B_IR_Grenade",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR"
    };

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};
