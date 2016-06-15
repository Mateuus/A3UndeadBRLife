/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*
*    items: { Classname, Itemname, BuyPrice, SellPrice }
*
*    Itemname only needs to be filled if you want to rename the original object name.
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        license = "gun";
        level[] = { "", "", -1, "" };
        items[] = {
            { "FirstAidKit", "", 250, 65 },
            { "hgun_Rook40_F", "", 6500, 500 },
            { "hgun_Pistol_heavy_02_F", "", 9850, -1 },
            { "hgun_ACPC2_F", "", 11500, -1 },
            { "hgun_PDW2000_F", "", 20000, -1 },
            { "arifle_Mk20C_ACO_F", "", 42500, -1 },
            { "arifle_TRG21_F", "", 48000, -1 },
            { "hgun_Pistol_heavy_01_snds_F", "", 30000, -1 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "6Rnd_45ACP_Cylinder", "", 50 },
            { "9Rnd_45ACP_Mag", "", 45 },
            { "30Rnd_9x21_Mag", "", 75 },
            { "30Rnd_556x45_Stanag", "", 100 },
            { "11Rnd_45ACP_Mag", "", 60 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 2500 }
        };
    };

    class donator1 {
        name = "Donator 1 Shop";
        side = "civ";
        license = "rebel";
        level[] = { "life_donorlevel", "SCALAR", 1, "You need to be a donator level 1 to access this shop, join our teamspeak for information." };
        items[] = {
            { "FirstAidKit", "", 250, 65 },
            { "srifle_DMR_04_F", "", 135000, -1 },
            { "srifle_DMR_05_tan_f", "", 200000 },
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "RPG32_HE_F", "", 225000 }
        };
        mags[] = {
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "10Rnd_127x54_Mag", "", 405 },
            { "RPG32_HE_F", "", 125000 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 10500 },
            { "optic_Holosight_smg", "", 2500 },
            { "optic_MRCO", "", 14500 },
            { "optic_Arco", "", 10500 },
            { "optic_KHS_blk", "", 22500 },
            { "optic_AMS", "", 23500 },
            { "optic_DMS", "", 17500 },
            { "optic_SOS", "", 22500 },
            { "optic_NVS", "", 28500 },
            { "optic_LRPS", "", 33500 },
            { "acc_pointer_IR", "", 1500 },
            { "acc_flashlight", "", 1000 }
        };
    };

    class donator2 {
        name = "Donator 2 Shop";
        side = "civ";
        license = "rebel";
        level[] = { "life_donorlevel", "SCALAR", 2, "You need to be a donator level 2 to access this shop, join our teamspeak for information." };
        items[] = {
            { "FirstAidKit", "", 250, 65 },
            { "srifle_DMR_04_F", "", 135000, -1 },
            { "MMG_02_camo_F", "", 250000, -1 },
            { "srifle_DMR_02_sniper_F", "", 180000, 7500 },
            { "srifle_DMR_05_tan_f", "", 200000 },
            { "APERSTripMine_Wire_Mag", "", 120000 },
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "RPG32_HE_F", "", 225000 }
        };
        mags[] = {
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_127x54_Mag", "", 405 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "RPG32_HE_F", "", 125000 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 10500 },
            { "optic_Holosight_smg", "", 2500 },
            { "optic_MRCO", "", 14500 },
            { "optic_Arco", "", 10500 },
            { "optic_KHS_blk", "", 22500 },
            { "optic_AMS", "", 23500 },
            { "optic_DMS", "", 17500 },
            { "optic_SOS", "", 22500 },
            { "optic_NVS", "", 28500 },
            { "optic_LRPS", "", 33500 },
            { "acc_pointer_IR", "", 1500 },
            { "acc_flashlight", "", 1000 }
        };
    };

    class donator3 {
        name = "Donator 3 Shop";
        side = "civ";
        license = "rebel";
        level[] = { "life_donorlevel", "SCALAR", 3, "You need to be a donator level 3 to access this shop, join our teamspeak for information." };
        items[] = {
            { "FirstAidKit", "", 250, 65 },
            { "srifle_DMR_04_F", "", 135000, -1 },
            { "MMG_01_hex_F", "", 250000, 5000 },
            { "MMG_02_camo_F", "", 315000, -1 },
            { "srifle_GM6_camo_F", "", 300000, 7500 },
            { "srifle_DMR_02_sniper_F", "", 180000, 7500 },
            { "srifle_DMR_05_tan_f", "", 200000 },
            { "launch_RPG32_F", "", 350000, -1 },
            { "APERSTripMine_Wire_Mag", "", 120000 },
            { "DemoCharge_Remote_Mag", "", 230000 },
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "RPG32_HE_F", "", 225000 }
        };
        mags[] = {
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_127x54_Mag", "", 405 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "RPG32_HE_F", "", 125000 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 10500 },
            { "optic_Holosight_smg", "", 2500 },
            { "optic_MRCO", "", 14500 },
            { "optic_Arco", "", 10500 },
            { "optic_KHS_blk", "", 22500 },
            { "optic_AMS", "", 23500 },
            { "optic_DMS", "", 17500 },
            { "optic_SOS", "", 22500 },
            { "optic_NVS", "", 28500 },
            { "optic_LRPS", "", 33500 },
            { "acc_pointer_IR", "", 1500 },
            { "acc_flashlight", "", 1000 }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        license = "rebel";
        level[] = { "", "", -1, "" };
        items[] = {
            { "FirstAidKit", "", 250, 65 },
            { "arifle_TRG20_F", "", 35000, 2500 },
            { "arifle_Katiba_F", "", 50000, 5000 },
            { "srifle_DMR_01_F", "", 65000, -1 },
            { "arifle_SDAR_F", "", 20000, 7500 },
            { "arifle_MXC_F", "", 50000, 7500 },
            { "arifle_MXM_F", "", 80000, 7500 },
            { "arifle_MX_SW_F", "", 110000, 7500 },
            { "srifle_EBR_F", "", 130000, 7500 },
            { "srifle_DMR_03_tan_F", "", 120000, 7500 },
            { "LMG_Zafir_F", "", 260000, 7500 },
            { "srifle_LRR_camo_F", "", 300000, 7500 },
            { "bipod_01_F_snd", "", 12500 },
            { "bipod_02_F_tan", "", 12500 },
            { "bipod_03_F_oli", "", 12500 },
            { "5Rnd_127x108_Mag", "", 2025 },
            { "150Rnd_93x64_Mag", "", 3025 },
            { "130Rnd_338_Mag", "", 4025 },
            { "10Rnd_338_Mag", "", 445 },
            { "10Rnd_93x64_DMR_05_Mag", "", 405 },
            { "RPG32_HE_F", "", 225000 }
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 60 },
            { "30Rnd_65x39_caseless_green", "", 75 },
            { "10Rnd_762x54_Mag", "", 100 },
            { "20Rnd_556x45_UW_mag", "", 25 },
            { "30Rnd_65x39_caseless_mag", "", 65 },
            { "100Rnd_65x39_caseless_mag", "", 425 },
            { "150Rnd_762x54_Box_Tracer", "", 825 },
            { "20Rnd_762x51_Mag", "", 125 },
            { "10Rnd_93x64_DMR_05_Mag", "", 195 },
            { "10Rnd_127x54_Mag", "", 425 },
            { "7Rnd_408_Mag", "", 1225 },
            { "RPG32_HE_F", "", 175000 }
        };
        accs[] = {
            { "optic_ACO_grn", "", 3500 },
            { "optic_Holosight", "", 3600 },
            { "optic_Hamr", "", 10500 },
            { "optic_Holosight_smg", "", 2500 },
            { "optic_MRCO", "", 14500 },
            { "optic_Arco", "", 10500 },
            { "optic_KHS_blk", "", 22500 },
            { "optic_AMS", "", 23500 },
            { "optic_DMS", "", 17500 },
            { "optic_SOS", "", 22500 },
            { "optic_NVS", "", 28500 },
            { "optic_LRPS", "", 33500 },
            { "acc_pointer_IR", "", 1500 },
            { "acc_flashlight", "", 1000 }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
          { "FirstAidKit", "", 550, 65 },
          { "hgun_Rook40_F", "", 9500, 500 },
          { "hgun_Pistol_heavy_02_F", "", 11850, -1 },
          { "hgun_ACPC2_F", "", 15500, -1 },
          { "hgun_PDW2000_F", "", 34000, -1 },
          { "arifle_Mk20C_ACO_F", "", 62500, -1 },
          { "arifle_TRG21_F", "", 78000, -1 },
          { "hgun_Pistol_heavy_01_snds_F", "", 50000, -1 }
        };
        mags[] = {
          { "16Rnd_9x21_Mag", "", 25 },
          { "6Rnd_45ACP_Cylinder", "", 50 },
          { "9Rnd_45ACP_Mag", "", 45 },
          { "30Rnd_9x21_Mag", "", 75 },
          { "30Rnd_556x45_Stanag", "", 100 },
          { "11Rnd_45ACP_Mag", "", 60 }
        };
        accs[] = {
            { "optic_ACO_grn_smg", "", 950 }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 150, -1 },
            { "ItemGPS", "", 100, 45 },
            { "ItemMap", "", 50, 35 },
            { "ItemCompass", "", 50, 25 },
            { "ItemWatch", "", 50, -1 },
            { "FirstAidKit", "", 150, 65 },
            { "NVGoggles", "", 2000, 980 },
            { "Chemlight_red", "", 300, -1 },
            { "Chemlight_yellow", "", 300, 50 },
            { "Chemlight_green", "", 300, 50 },
            { "Chemlight_blue", "", 300, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "Binocular", "", 750, -1 },
            { "ItemGPS", "", 500, 45 },
            { "ItemMap", "", 250, 35 },
            { "ItemCompass", "", 250, 25 },
            { "ItemWatch", "", 250, -1 },
            { "FirstAidKit", "", 750, 65 },
            { "NVGoggles", "", 10000, 980 },
            { "Chemlight_red", "", 1500, -1 },
            { "Chemlight_yellow", "", 1500, 50 },
            { "Chemlight_green", "", 1500, 50 },
            { "Chemlight_blue", "", 1500, 50 }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "arifle_MXC_Black_F", "Stun Rifle", 2000, 750 },
            { "hgun_P07_snds_F", "Stun Pistol", 200, 60 },
            { "hgun_P07_F", "", 750, 150 },
            { "Binocular", "", 15, -1 },
            { "ItemGPS", "", 10, 45 },
            { "optic_Holosight", "", 120, 27 },
            { "Medikit", "", 15, 5 },
            { "FirstAidKit", "", 50, 5 },
            { "NVGoggles", "", 200, 90 }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 25 },
            { "30Rnd_65x39_caseless_mag_Tracer", "Stun Magazine", 45 }
        };
        accs[] = {
            { "muzzle_snds_L", "", 60 },
            { "optic_Holosight", "", 120, 20 },
        };
    };

    class cop_patrol {
        name = "Altis Patrol Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 2, "You must be a Patrol Officer Rank!" };
        items[] = {
            { "arifle_MXM_Black_F", "", 3500, 750 },
            { "arifle_SDAR_F", "", 1500, 750 },
            { "SMG_02_ACO_F", "", 3000, -1 },
            { "acc_flashlight", "", 75, 10 },
            { "optic_Holosight", "", 120, 25 },
            { "optic_Arco", "", 250, -1 },
            { "optic_MRCO", "", 350, -1 },
            { "muzzle_snds_H", "", 250, -1 }
        };
        mags[] = {
            { "30Rnd_65x39_caseless_mag", "", 10 },
            { "20Rnd_556x45_UW_mag", "", 30 },
            { "30Rnd_9x21_Mag", "", 20 }
        };
        accs[] = {
            { "acc_flashlight", "", 750 },
            { "optic_Holosight", "", 120 },
            { "optic_Arco", "", 250 },
            { "muzzle_snds_H", "", 275 }
        };
    };

    class cop_sergeant {
        name = "Altis Sergeant Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be a Sergeant Rank!" };
        items[] = {
            { "hgun_ACPC2_F", "", 1750, -1 },
            { "SMG_02_ACO_F", "", 1500, -1 },
            { "srifle_EBR_F", "", 5000, 500 },
            { "HandGrenade_Stone", "Flashbang", 170, -1 },
            { "optic_Arco", "", 250, -1 },
            { "optic_MRCO", "", 350, -1 },
            { "optic_DMS", "", 1750 },
            { "muzzle_snds_B", "", 270 },
            { "bipod_01_F_blk", "", 1250 },
            { "bipod_02_F_blk", "", 1250 },
            { "bipod_03_F_blk", "", 1250 }
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 20 },
            { "30Rnd_9x21_Mag", "", 60 },
            { "20Rnd_762x51_Mag", "", 10 }
        };
        accs[] = {
            { "optic_Arco", "", 250 },
            { "optic_MRCO", "", 350, -1 },
            { "muzzle_snds_B", "", 275 }
        };
    };

    class cop_SWAT {
        name = "Altis SWAT Shop";
        side = "cop";
        license = "swat";
        level[] = { "life_coplevel", "SCALAR", 3, "You must be atleast Sergeant rank and SWAT!" };
        items[] = {
            { "srifle_GM6_F", "", 17500, -1 },
            { "LMG_Zafir_F", "", 15000, -1 },
            { "arifle_MX_GL_Black_F", "", 5000, -1 },
            { "launch_RPG32_F", "", 150000, -1 },
            { "HandGrenade_Stone", "Flashbang", 170, -1 },
            { "optic_MRCO", "", 1450 },
            { "optic_Arco", "", 1050 },
            { "optic_KHS_blk", "", 2250 },
            { "optic_AMS", "", 2350 },
            { "optic_DMS", "", 1750 },
            { "optic_SOS", "", 2250 },
            { "optic_NVS", "", 2850 },
            { "optic_LRPS", "", 3350 },
            { "muzzle_snds_B", "", 275 },
            { "bipod_01_F_blk", "", 1250 },
            { "bipod_02_F_blk", "", 1200 },
            { "bipod_03_F_blk", "", 1250 },
            { "1Rnd_SmokeGreen_Grenade_shell", "Tear Gas", 150 },
            { "RPG32_HE_F", "", 15000 }
        };
        mags[] = {
            { "5Rnd_127x108_Mag", "", 100 },
            { "150Rnd_762x54_Box_Tracer", "", 40 },
            { "5Rnd_127x108_APDS_Mag", "", 300 }
        };
        accs[] = {
            { "optic_Arco", "", 250 },
            { "optic_MRCO", "", 350, -1 },
            { "muzzle_snds_B", "", 275 }
        };
    };

    class cop_lieutenant {
        name = "Altis lieutenant Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 4, "You must be a Lieutenant Rank!" };
        items[] = {
            { "hgun_ACPC2_F", "", 1750, -1 },
            { "SMG_02_ACO_F", "", 1500, -1 },
            { "arifle_MX_SW_Black_F", "", 7000, -1 },
            { "srifle_DMR_03_F", "", 5000, -1 },
            { "srifle_DMR_05_blk_F", "", 8000, -1 },
            { "hgun_PDW2000_Holo_snds_F", "", 2000, -1 },
            { "HandGrenade_Stone", "Flashbang", 170, -1 },
            { "optic_ACO_grn", "", 350 },
            { "optic_Holosight", "", 360 },
            { "optic_Hamr", "", 1050 },
            { "optic_Holosight_smg", "", 250 },
            { "optic_MRCO", "", 1450 },
            { "optic_Arco", "", 1050 },
            { "optic_KHS_blk", "", 2250 },
            { "optic_AMS", "", 2300 },
            { "optic_DMS", "", 1750 },
            { "optic_SOS", "", 2250 },
            { "optic_NVS", "", 2850 },
            { "optic_LRPS", "", 3350 },
            { "bipod_01_F_snd", "", 1250 },
            { "bipod_02_F_tan", "", 1250 },
            { "bipod_03_F_oli", "", 1250 },
            { "acc_pointer_IR", "", 150 },
            { "acc_flashlight", "", 100 },
            { "muzzle_snds_B", "", 275 },
            { "bipod_01_F_blk", "", 1250 },
            { "bipod_02_F_blk", "", 1250 },
            { "bipod_03_F_blk", "", 1250 },
            { "muzzle_snds_B", "", 275 },
            { "B_UavTerminal", "", 375 }
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 20 },
            { "30Rnd_9x21_Mag", "", 60 },
            { "20Rnd_762x51_Mag", "",70 },
            { "10Rnd_93x64_DMR_05_Mag", "", 90 },
            { "100Rnd_65x39_caseless_mag", "", 10 }
        };
        accs[] = {
            { "optic_Arco", "", 250 },
            { "optic_MRCO", "", 350, -1 },
            { "optic_SOS", "", 550 }
        };
    };

    class cop_captain {
        name = "Altis Captain Officer Shop";
        side = "cop";
        license = "";
        level[] = { "life_coplevel", "SCALAR", 5, "You must be a Captain Rank!" };
        items[] = {
            { "hgun_ACPC2_F", "", 1750, -1 },
            { "SMG_02_ACO_F", "", 1500, -1 },
            { "LMG_Mk200_F", "", 10000, -1 },
            { "MMG_02_black_F", "Commissioner LMG", 30000, -1 },
            { "srifle_DMR_02_F", "", 7000, -1 },
            { "srifle_LRR_F", "", 13000, -1 },
            { "HandGrenade_Stone", "Flashbang", 170, -1 },
            { "optic_ACO_grn", "", 350 },
            { "optic_Holosight", "", 360 },
            { "optic_Hamr", "", 1050 },
            { "optic_Holosight_smg", "", 250 },
            { "optic_MRCO", "", 1450 },
            { "optic_Arco", "", 1050 },
            { "optic_KHS_blk", "", 2250 },
            { "optic_AMS", "", 2350 },
            { "optic_DMS", "", 1750 },
            { "optic_SOS", "", 2250 },
            { "optic_NVS", "", 2850 },
            { "optic_LRPS", "", 3350 },
            { "bipod_01_F_blk", "", 1250 },
            { "bipod_02_F_blk", "", 1250 },
            { "bipod_03_F_blk", "", 1250 },
            { "acc_pointer_IR", "", 150 },
            { "acc_flashlight", "", 100 },
            { "muzzle_snds_B", "", 270 },
            { "B_UavTerminal", "", 370 }
        };
        mags[] = {
            { "9Rnd_45ACP_Mag", "", 20 },
            { "30Rnd_9x21_Mag", "", 60 },
            { "10Rnd_338_Mag", "", 10 },
            { "7Rnd_408_Mag", "", 20 },
            { "130Rnd_338_Mag", "", 90 },
            { "200Rnd_65x39_cased_Box", "", 20 }
        };
        accs[] = {
            { "optic_Arco", "", 250 },
            { "optic_SOS", "", 550 },
            { "optic_MRCO", "", 350, -1 }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        license = "";
        level[] = { "", "", -1, "" };
        items[] = {
            { "ItemGPS", "", 100, 45 },
            { "Binocular", "", 150, -1 },
            { "FirstAidKit", "", 50, 65 },
            { "Medikit", "", 55, 35 },
            { "NVGoggles", "", 120, 80 }
        };
        mags[] = {};
        accs[] = {};
    };
};
