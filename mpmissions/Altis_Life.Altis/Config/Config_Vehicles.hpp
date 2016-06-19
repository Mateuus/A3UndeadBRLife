class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: ARRAY (This is for limiting items to certain things)
    *            0: Variable to read from
    *            1: Variable Value Type (SCALAR / BOOL /EQUAL)
    *            2: What to compare to (-1 = Check Disabled)
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    class civ_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "C_Hatchback_01_F", { "", "", -1 } },
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "C_Hatchback_01_sport_F", { "", "", -1 } },
            { "C_Van_01_transport_F", { "", "", -1 } }
        };
    };

	class civ_vip_car_bronze {
        side = "civ";
        vehicles[] = {
			{ "B_Quadbike_01_F", { "", "", -1 } },
			{ "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "O_Truck_03_ammo_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 1 } }
        };
    };

	class civ_vip_car_silver {
        side = "civ";
        vehicles[] = {
			{ "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "O_MRAP_02_F", { "life_donorlevel", "SCALAR", 2 } }
        };
    };

	class civ_vip_car_gold {
        side = "civ";
        vehicles[] = {
			{ "B_Truck_01_box_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "O_Truck_03_device_F", { "life_donorlevel", "SCALAR", 3 } }
        };
    };

	class civ_vip_car_platinum {
        side = "civ";
        vehicles[] = {
			{ "O_MRAP_02_F", { "life_donorlevel", "SCALAR", 4 } }, //Ifrit
            { "B_MRAP_01_F", { "life_donorlevel", "SCALAR", 4 } } //Hunter
        };
    };

	class civ_vip_car_diamante {
        side = "civ";
        vehicles[] = {
			{ "O_MRAP_02_F", { "life_donorlevel", "SCALAR", 5 } },//Ifrit
            { "B_MRAP_01_F", { "life_donorlevel", "SCALAR", 5 } }//Hunter
        };
    };

	class civ_vip_air_bronze {
        side = "civ_vip";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "life_donorlevel", "SCALAR", 1 } },
            { "B_Heli_Light_01_F", { "life_donorlevel", "SCALAR", 1 } },
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 1 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 1 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 1 } }
        };
    };

	class civ_vip_air_silver {
        side = "civ_vip";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "life_donorlevel", "SCALAR", 2 } },
            { "B_Heli_Light_01_F", { "life_donorlevel", "SCALAR", 2 } },
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 2 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 2 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 2 } }
        };
    };

	class civ_vip_air_gold {
        side = "civ_vip";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "life_donorlevel", "SCALAR", 3 } },
            { "B_Heli_Light_01_F", { "life_donorlevel", "SCALAR", 3 } },
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 3 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 3 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 3 } }
        };
    };

	class civ_vip_air_platinum {
        side = "civ_vip";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "life_donorlevel", "SCALAR", 4 } },
            { "B_Heli_Light_01_F", { "life_donorlevel", "SCALAR", 4 } },
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 4 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 4 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 4 } }
        };
    };

	class civ_vip_air_diamante {
        side = "civ_vip";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "life_donorlevel", "SCALAR", 5 } },
            { "B_Heli_Light_01_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 5 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 5 } }
        };
    };



    class kart_shop {
        side = "civ";
        vehicles[] = {
            { "C_Kart_01_Blu_F", { "", "", -1 } },
            { "C_Kart_01_Fuel_F", { "", "", -1 } },
            { "C_Kart_01_Red_F", { "", "", -1 } },
            { "C_Kart_01_Vrana_F", { "", "", -1 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
            { "C_Van_01_box_F", { "", "", -1 } },
            { "I_Truck_02_transport_F", { "", "", -1 } },
            { "I_Truck_02_covered_F", { "", "", -1 } },
            { "B_Truck_01_transport_F", { "", "", -1 } },
            { "O_Truck_03_transport_F", { "", "", -1 } },
            { "O_Truck_03_covered_F", { "", "", -1 } },
            { "B_Truck_01_box_F", { "", "", -1 } },
            { "C_Van_01_fuel_F", { "", "", -1 } },
            { "I_Truck_02_fuel_F", { "", "", -1 } },
            { "B_Truck_01_fuel_F", { "", "", -1 } }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "", "", -1 } },
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", { "", "", -1 } },
            { "O_Heli_Transport_04_Box_F", { "", "", -1 } },
            { "I_Heli_Transport_02_F", { "", "", -1 } }
        };
    };

     class civ_ship {
        side = "civ";
        vehicles[] = {
            { "C_Rubberboat", { "", "", -1 } },
            { "C_Boat_Civil_01_F", { "", "", -1 } },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "B_G_Offroad_01_F", { "", "", -1 } },
            { "O_MRAP_02_F", { "", "", -1 } },
            { "B_Heli_Light_01_stripped_F", { "", "", -1 } },
            { "B_G_Offroad_01_armed_F", { "", "", -1 } },
			{ "I_Truck_02_box_F", { "", "", -1 } },
			{ "I_Truck_02_covered_F", { "", "", -1 } },
			{ "O_Truck_02_fuel_F", { "", "", -1 } }
        };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "I_Truck_02_medical_F", { "life_medicLevel", "SCALAR", 2 } }
        };
    };

    class med_air_hs {
        side = "med";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "life_medicLevel", "SCALAR", 2 } },
            { "O_Heli_Light_02_unarmed_F", { "life_medicLevel", "SCALAR", 5 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "C_Hatchback_01_sport_F", { "life_coplevel", "SCALAR", 1 } },
            { "B_MRAP_01_F", { "life_coplevel", "SCALAR", 2 } },
            { "I_MRAP_03_F", { "life_coplevel", "SCALAR", 3 } },
            { "B_G_Offroad_01_armed_F", { "life_coplevel", "SCALAR", 3 } },
            { "B_MRAP_01_hmg_F", { "life_coplevel", "SCALAR", 4 } }
        };
    };

    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "life_coplevel", "SCALAR", 2 } },
            { "I_Heli_light_03_unarmed_F", { "life_coplevel", "SCALAR", 3 } },
            { "B_Heli_Transport_01_F", { "life_coplevel", "SCALAR", 4 } }
        };
    };

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", { "", "", -1 } },
            { "B_Boat_Armed_01_minigun_F", { "life_coplevel", "SCALAR", 3 } },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.5]
    *       Medic [Purchase, Sell]: [0.75, 0.5]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.1
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: ARRAY (license required)
    *         Ex: { "driver", "" , "" , "" } //civilian, west, independent, east
    *         licenses[] = { {"CIV"}, {"COP"}, {"MEDIC"}, {"EAST"} };
    *    Textures config follows { Texture Name, side, {texture(s)path}}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class I_Truck_02_medical_F {
        vItemSpace = 250;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 25000;
        textures[] = {};
    };

    class O_Truck_03_medical_F {
        vItemSpace = 300;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 45000;
        textures[] = {};
    };

    class B_Truck_01_medical_F {
        vItemSpace = 350;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {};
    };
	
	class O_Truck_03_ammo_F {
        vItemSpace = 600;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 60000;
        textures[] = {};
    };
	
	class I_Truck_02_box_F {
        vItemSpace = 390;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 600000;
        textures[] = {};
    };
	
	class O_Truck_02_fuel_F {
        vItemSpace = 350;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 600000;
        textures[] = {};
    };
	
    class C_Rubberboat {
        vItemSpace = 45;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 5000;
        textures[] = { };
    };

    class I_Heli_light_03_unarmed_F {
        vItemSpace = 100;
        licenses[] = { {""}, {"aviation"}, {""}, {""} };
        price = 140000;
        textures[] = {
            { "Police", "cop", {
              "textures\Cop\Vehicles\copHellcat.paa"
            } }
        };
    };

    class B_Heli_Transport_01_F {
        vItemSpace = 300;
        licenses[] = { {""}, {"aviation"}, {""}, {""} };
        price = 350000;
        textures[] = {
            { "Police", "cop", {
              "textures\Cop\Vehicles\CopGhostBody.jpg",
              "textures\Cop\Vehicles\CopGhostTail.jpg"
            } }
        };
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 25;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 550000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class I_MRAP_03_F {
        vItemSpace = 10;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 250000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 275;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 75000;
        textures[] = { };
    };

    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 10000;
        textures[] = { };
    };

    class O_Truck_03_transport_F {
        vItemSpace = 450;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 390000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 550;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 1250000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 5000;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 550;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 1100;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 165;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 20000;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 105;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 400000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_MRAP_02_hmg_F {
        vItemSpace = 115;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 2500000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 85;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 25000;
        textures[] = { };
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 20000;
        textures[] = { };
    };

    class B_Truck_01_box_F {
        vItemSpace = 750;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 850000;
        textures[] = { };
    };

    class B_Truck_01_transport_F {
        vItemSpace = 620;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 610000;
        textures[] = { };
    };

    class O_MRAP_02_F {
        vItemSpace = 110;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 550000;
        textures[] = { 
		{ "Ifrit Chamas VIP", "civ", {
	                "textures\Vip\Vehicles\ifrit\flame_ifrit_1.jpg",
					"textures\Vip\Vehicles\ifrit\flame_ifrit_2.jpg"
        } },
		{ "Ifrit Batman VIP", "civ", {
	                "textures\Vip\Vehicles\ifrit\ifrit_batman_front.jpg",
					"textures\Vip\Vehicles\ifrit\ifrit_batman_hinten.jpg"
        } },
		{ "Ifrit Wolf Bite VIP", "civ", {
	                "textures\Vip\Vehicles\ifrit\mrap_02_ext_01_co.jpg",
					"textures\Vip\Vehicles\ifrit\mrap_02_ext_02_co.jpg"
        } }
				
		};
    };

    class C_Offroad_01_F {
        vItemSpace = 150;
        assurPrice[] = { 1000, 1000, 1000, 1000 };
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 15000;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
            { "Yellow", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
            { "Taxi", "civ", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
            { "Trump", "civ", {
                "textures\Civ\Vehicles\OffTRUMP.jpg"
            } },
            { "Shrek", "civ", {
                "textures\Civ\Vehicles\OffSHREK.jpg"
            } },
            { "Police", "cop", {
                "textures\Cop\Vehicles\policeoffroad.jpg"
            } },
            { "Medical", "med", {
                "textures\Med\Vehicles\offroadMED.paa"
            } }
        };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 15000;
        textures[] = {};
    };
/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F  : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 54;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 90000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            } },
            { "Sanic", "civ", {
                "textures\Civ\Vehicles\HatchSANIC.jpg"
            } },
			{ "Martini", "civ", {
                "textures\Civ\Vehicles\mcreafordwrc.paa"
            } },
			{ "MonsterV2", "civ", {
                "textures\Civ\Vehicles\civ_monsterwrcv2_hbsport.paa"
            } },
			{ "MonsterV3", "civ", {
                "textures\Civ\Vehicles\civ_monsterwrc_hb.paa"
            } },
			{ "Domino's", "civ", {
                "textures\Civ\Vehicles\civ_dominospizza_hb.paa"
            } },
			{ "RedBull", "civ", {
                "textures\Civ\Vehicles\vwwrc.paa"
            } },
			{ "AbudHabic", "civ", {
                "textures\Civ\Vehicles\abudhabiwrc.paa"
            } },
            { "Police", "cop", {
                "textures\Cop\Vehicles\policehatch.jpg"
            } }
        };
    };

    class B_Quadbike_01_F {
        vItemSpace = 25;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 4500;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            } },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            } },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            } },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            } },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            } },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            } },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } },
            { "Police", "cop", {
                "textures\Cop\Vehicles\CopQUAD.paa"
            } }
        };
    };

    class I_Truck_02_covered_F {
        vItemSpace = 330;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 260000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class I_Truck_02_transport_F {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 600000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 530;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 535000;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 13500;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };

    class C_SUV_01_F {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 43500;
        textures[] = {
            { "Dark Red", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
            { "Silver", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
            { "Asiimov", "civ", {
                "textures\Civ\Vehicles\suvASIIMOV.paa"
            } },
            { "Hyperbeast", "civ", {
                "textures\Civ\Vehicles\suvHYPER.paa"
            } },
            { "Nyan", "civ", {
                "textures\Civ\Vehicles\suvNYAN.jpg"
            } },
            { "Sticker", "civ", {
                "textures\Civ\Vehicles\suvSTICKER.paa"
            } },
            { "Police", "cop", {
                "textures\Cop\Vehicles\suvpolice.jpg"
            } },
            { "Medical", "med", {
                "textures\Med\Vehicles\suvMED.paa"
            } },
            { "JurassicPark", "civ", {
                "textures\Civ\Vehicles\civ_jurassicpark_suv.paa"
            } },
            { "White", "civ", {
                "textures\Civ\Vehicles\suv_white.jpg"
            } },
            { "Poly", "civ", {
                "textures\Civ\Vehicles\suv_poly.jpg"
            } }
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 200;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 95000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 260;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 130000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 65;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 100000;
        textures[] = {
           { "Hunter VIP", "civ", {
	                "textures\Vip\Vehicles\hunter\donator_hunter_front.paa",
					"textures\Vip\Vehicles\hunter\donator_hunter_hinten.paa"
			} },
			{ "Hunter Assassino de COP VIP", "civ", {
					"textures\Vip\Vehicles\hunter\mrap_01_base_co.jpg",
	                "textures\Vip\Vehicles\hunter\mrap_01_adds_co.jpg",

			} },
			{ "Hunter Unicórnio VIP", "civ", {
	                "textures\Vip\Vehicles\hunter\unicorn_hunter_teil1.paa",
					"textures\Vip\Vehicles\hunter\unicorn_hunter_teil2.paa"
			} },
			{ "Hunter Caveira VIP", "civ", {
	                "textures\Vip\Vehicles\hunter\graywolfhunter_1.jpg",
					"textures\Vip\Vehicles\hunter\graywolfhunter_2.jpg"
			} },
			{ "Police", "cop", {
                "textures\Cop\Vehicles\Hunter1.jpg",
                "textures\Cop\Vehicles\Hunter2.jpg"
            } }
        };
    };

     class B_Heli_Light_01_stripped_F {
        vItemSpace = 90;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 275000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } }
        };
    };

    class I_Heli_Transport_02_F {
       vItemSpace = 930;
       licenses[] = { {""}, {""}, {""}, {""} };
       price = 1575000;
       textures[] = {};
   };

   class O_Heli_Transport_04_Box_F {
      vItemSpace = 780;
      licenses[] = { {""}, {""}, {""}, {""} };
      price = 1205000;
      textures[] = {};
  };

    class B_Heli_Light_01_F {
        vItemSpace = 90;
        licenses[] = { {""}, {"aviation"}, {"mAir"}, {""} };
        price = 250000;
        textures[] = {
            { "Police", "cop", {
                "textures\Cop\Vehicles\policeheli.jpg"
            } },
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            } },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
            { "EMS", "med", {
                "textures\Med\Vehicles\hummingMED.jpg"
            } }
        };
    };

    class C_Heli_Light_01_civil_F : B_Heli_Light_01_F {
        vItemSpace = 75;
        price = 250000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 310;
        licenses[] = { {"" }, {"aviation"}, {"mAir"}, {""} };
        price = 750000;
        textures[] = {
            { "Black", "cop", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            } },
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            } },
            { "EMS White", "med", {
                "#(argb,8,8,3)color(1,1,1,0.8)"
            } }
        };
    };

    class B_SDV_01_F {
        vItemSpace = 110;
        licenses[] = { {"boat"}, {"cg"}, {""}, {""} };
        price = 150000;
        textures[] = {};
    };

        class C_Van_01_fuel_F {
        vItemSpace = 20;
        vFuelSpace = 9999999;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 175000;
        textures[] = {
            { "White", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_co.paa"
            } },
            { "Red", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_red_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_red_co.paa"
            } }
        };
    };

    class I_Truck_02_fuel_F {
        vItemSpace = 40;
        vFuelSpace = 9999999;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 250000;
        textures[] = {
            { "White", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_fuel_co.paa"
            } }
        };
    };

    class B_Truck_01_fuel_F {
        vItemSpace = 50;
        vFuelSpace = 9999999;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 300000;
        textures[] = {};
    };
};
