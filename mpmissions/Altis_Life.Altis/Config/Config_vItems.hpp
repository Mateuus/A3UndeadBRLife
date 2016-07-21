/*
*    Format:
*        level: ARRAY (This is for limiting items to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL)
*            2: What to compare to (-1 = Check Disabled)
*            3: Custom exit message (Optional)
*/
class VirtualShops {
	//Virtual Shops
	class market {
		name = "STR_Shops_Market";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "waterBottle", "rabbit", "apple", "redgull", "beer", "whiskey", "moonshine", "tbacon", "pickaxe", "woodaxe", "toolkit", "fuelFull", "peach", "storagesmall", "storagebig", "nitro" };
	};

	class plank {
		name = "STR_Shops_Plank";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "plank", "woodaxe", "plans" };
	};

	class med_market {
		name = "STR_Shops_Market";
		side = "med";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "waterBottle", "rabbit", "apple", "redgull", "tbacon", "toolkit", "fuelFull", "peach", "defibrillator", "lockpick" };
	};

	class rebel {
		name = "STR_Shops_Rebel";
		side = "civ";
		license = "rebel";
		level[] = { "", "", -1, "" };
		items[] = { "waterBottle", "rabbit", "apple", "redgull", "beer", "whiskey", "moonshine", "tbacon", "gpstracker", "blindfold", "pickaxe", "toolkit", "fuelFull", "peach", "boltcutter", "zipties", "knife", "pliers", "barrel", "butt" };
	};

	class gang {
		name = "STR_Shops_Gang";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "waterBottle", "rabbit", "apple", "redgull", "beer", "whiskey", "moonshine", "tbacon", "gpstracker", "pickaxe", "toolkit", "fuelFull", "peach", "boltcutter",};
	};

	class wongs {
		name = "STR_Shops_Wongs";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "turtle_soup", "turtle_raw" };
	};

	class coffee {
		name = "STR_Shops_Coffee";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "coffee", "donuts" };
	};

	class f_station_coffee {
		name = "STR_Shop_Station_Coffee";
		side = "";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "coffee", "donuts", "redgull", "toolkit", "fuelFull"};
	};

	class drugdealer {
		name = "STR_Shops_DrugDealer";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "cocaine_processed", "heroin_processed", "marijuana","nitroamine","diamante3","cement","colar"};
	};

	class oil {
		name = "STR_Shops_Oil";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "oil_processed", "pickaxe", "fuelFull" };
	};

	class fishmarket {
		name = "STR_Shops_FishMarket";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
	};

	class glass {
		name = "STR_Shops_Glass";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "glass" };
	};

	class iron  {
		name = "STR_Shops_Minerals";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "iron_refined", "copper_refined" };
	};

	class diamond {
		name = "STR_Shops_Diamond";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "diamond_uncut", "diamond_cut" };
	};

	class salt {
		name = "STR_Shops_Salt";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "salt_refined" };
	};

	class cement {
		name = "STR_Shops_Cement";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "" };
	};

	class gold {
		name = "STR_Shops_Gold";
		side = "civ";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "goldbar" };
	};

	class cop {
		name = "STR_Shops_Cop";
		side = "cop";
		license = "";
		level[] = { "", "", -1, "" };
		items[] = { "donuts", "coffee", "spikeStrip", "gpstracker", "waterBottle", "rabbit", "apple", "redgull", "toolkit", "fuelFull", "defusekit", "nitro", "defibrillator" };
	};
};

/*
*    CLASS:
*        variable = Variable Name
*        displayName = Item Name
*        weight = Item Weight
*        buyPrice = Item Buy Price
*        sellPrice = Item Sell Price
*        illegal = Illegal Item
*        edible = Item Edible (-1 = Disabled)
*        icon = Item Icon
*        processedItem = Processed Item
*/
class VirtualItems {
	//Virtual Items

	//Misc
	class pickaxe {
		variable = "pickaxe";
		displayName = "STR_Item_Pickaxe";
		weight = 2;
		buyPrice = 1250;
		sellPrice = 400;
		illegal = false;
		edible = -1;
		icon = "icons\ico_pickaxe.paa";
	};

	class woodaxe {
		variable = "woodaxe";
		displayName = "STR_Item_woodaxe";
		weight = 2;
		buyPrice = 1250;
		sellPrice = 400;
		illegal = false;
		edible = -1;
		icon = "icons\woodaxe.paa";
	};

	class defibrillator {
        variable = "defibrillator";
        displayName = "STR_Item_Defibrillator";
        weight = 4;
        buyPrice = 900;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\ico_defibrillator.paa";
    };

	class toolkit {
		variable = "toolkit";
		displayName = "STR_Item_Toolkit";
		weight = 3;
		buyPrice = 500;
		sellPrice = 200;
		illegal = false;
		edible = -1;
		icon = "\a3\weapons_f\items\data\UI\gear_toolkit_ca.paa";
	};

	class fuelEmpty {
		variable = "fuelEmpty";
		displayName = "STR_Item_FuelE";
		weight = 2;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_fuelEmpty.paa";
	};

	class fuelFull {
		variable = "fuelFull";
		displayName = "STR_Item_FuelF";
		weight = 5;
		buyPrice = 2850;
		sellPrice = 1500;
		illegal = false;
		edible = -1;
		icon = "icons\ico_fuel.paa";
	};

	class spikeStrip {
		variable = "spikeStrip";
		displayName = "STR_Item_SpikeStrip";
		weight = 15;
		buyPrice = 2000;
		sellPrice = 800;
		illegal = true;
		edible = -1;
		icon = "icons\spikeStrip.paa";
	};

	class lockpick {
		variable = "lockpick";
		displayName = "STR_Item_Lockpick";
		weight = 2;
		buyPrice = 500;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\lockpick.paa";
	};

	class gpstracker {
		variable = "gpstracker";
		displayName = "STR_Item_gpstracker";
		weight = 2;
		buyPrice = 50000;
		sellPrice = 2500;
		illegal = true;
		edible = -1;
		icon = "icons\gps.paa";
	};

	class goldbar {
		variable = "goldBar";
		displayName = "STR_Item_GoldBar";
		weight = 12;
		buyPrice = -1;
		sellPrice = 50000;
		illegal = true;
		edible = -1;
		icon = "icons\ico_goldBar.paa";
	};

	class blastingcharge {
		variable = "blastingCharge";
		displayName = "STR_Item_BCharge";
		weight = 15;
		buyPrice = -1;
		sellPrice = 20000;
		illegal = true;
		edible = -1;
		icon = "icons\ico_blastingCharge.paa";
	};

	class boltcutter {
		variable = "boltCutter";
		displayName = "STR_Item_BCutter";
		weight = 5;
		buyPrice = 17500;
		sellPrice = 1000;
		illegal = true;
		edible = -1;
		icon = "icons\ico_boltCutter.paa";
	};

	class defusekit {
		variable = "defuseKit";
		displayName = "STR_Item_DefuseKit";
		weight = 2;
		buyPrice = 2500;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\ico_defuseKit.paa";
	};

	class storagesmall {
		variable = "storageSmall";
		displayName = "STR_Item_StorageBS";
		weight = 5;
		buyPrice = 75000;
		sellPrice = 25000;
		illegal = false;
		edible = -1;
		icon = "icons\ico_storageSmall.paa";
	};

	class zipties {
		variable = "zipties";
		displayName = "STR_Item_zipties";
		weight = 4;
		buyPrice = 15000;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\ziptie.paa";
	};

	class storagebig {
		variable = "storageBig";
		displayName = "STR_Item_StorageBL";
		weight = 10;
		buyPrice = 150000;
		sellPrice = 50000;
		illegal = false;
		edible = -1;
		icon = "icons\ico_storageBig.paa";
	};

	//Mined Items
	class oil_unprocessed {
		variable = "oilUnprocessed";
		displayName = "STR_Item_OilU";
		weight = 7;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_oilUnprocessed.paa";
	};

	class oil_processed {
		variable = "oilProcessed";
		displayName = "STR_Item_OilP";
		weight = 6;
		buyPrice = -1;
		sellPrice = 2500;
		illegal = false;
		edible = -1;
		icon = "icons\ico_oilProcessed.paa";
	};

	class copper_unrefined {
		variable = "copperUnrefined";
		displayName = "STR_Item_CopperOre";
		weight = 4;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_copperOre.paa";
	};

	class copper_refined {
		variable = "copperRefined";
		displayName = "STR_Item_CopperIngot";
		weight = 3;
		buyPrice = -1;
		sellPrice = 1150;
		illegal = false;
		edible = -1;
		icon = "icons\ico_copper.paa";
	};

	class iron_unrefined {
		variable = "ironUnrefined";
		displayName = "STR_Item_IronOre";
		weight = 5;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_ironOre.paa";
	};

	class iron_refined {
		variable = "ironRefined";
		displayName = "STR_Item_IronIngot";
		weight = 3;
		buyPrice = -1;
		sellPrice = 1000;
		illegal = false;
		edible = -1;
		icon = "icons\ico_iron.paa";
	};

	class salt_unrefined {
		variable = "saltUnrefined";
		displayName = "STR_Item_Salt";
		weight = 4;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_saltUnprocessed.paa";
	};

	class salt_refined {
		variable = "saltRefined";
		displayName = "STR_Item_SaltR";
		weight = 3;
		buyPrice = -1;
		sellPrice = 1075;
		illegal = false;
		edible = -1;
		icon = "icons\ico_saltProcessed.paa";
	};

	class pliers {
		variable = "pliers";
		displayName = "STR_Item_pliers";
		weight = 4;
		buyPrice = 8400;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\pliers.paa";
	};

	class knife {
		variable = "knife";
        displayName = "STR_Item_Knife";
        weight = 4;
        buyPrice = 8000;
        sellPrice = -1;
        illegal = false;
        edible = -1;
		icon = "icons\knife.paa";
	};

	class kidney {
		variable = "kidney";
        displayName = "STR_Item_Kidney";
        weight = 7;
        buyPrice = -1;
        sellPrice = 35;
        illegal = false;
        edible = -1;
		icon = "icons\kidney.paa";
	};

	class sand {
		variable = "sand";
		displayName = "STR_Item_Sand";
		weight = 3;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_sand.paa";
	};

	class glass {
		variable = "glass";
		displayName = "STR_Item_Glass";
		weight = 3;
		buyPrice = -1;
		sellPrice = 1045;
		illegal = false;
		edible = -1;
		icon = "icons\ico_glass.paa";
	};

	class diamond_uncut {
		variable = "diamondUncut";
		displayName = "STR_Item_DiamondU";
		weight = 7;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\diamond.paa";
	};

	class diamond_cut {
		variable = "diamondCut";
		displayName = "STR_Item_DiamondC";
		weight = 5;
		buyPrice = -1;
		sellPrice = 2400;
		illegal = false;
		edible = -1;
		icon = "icons\diamondc.paa";
	};

	class rock {
		variable = "rock";
		displayName = "STR_Item_Rock";
		weight = 6;
		buyPrice = -1;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\saltwater.paa";
	};

	class cement {
		variable = "cement";
		displayName = "STR_Item_CementBag";
		weight = 5;
		buyPrice = -1;
		sellPrice = 2800;
		illegal = true;
		edible = -1;
		icon = "icons\meth.paa";
	};

	//Drugs
	class heroin_unprocessed {
		variable = "heroinUnprocessed";
		displayName = "STR_Item_HeroinU";
		weight = 8;
		buyPrice = -1;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\heroinu.paa";
		processedItem = "heroin_processed";
	};

	class heroin_processed {
		variable = "heroinProcessed";
		displayName = "STR_Item_HeroinP";
		weight = 6;
		buyPrice = 9500;
		sellPrice = 3100;
		illegal = true;
		edible = -1;
		icon = "icons\heroinp.paa";
	};

	class cannabis {
		variable = "cannabis";
		displayName = "STR_Item_Cannabis";
		weight = 7;
		buyPrice = -1;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\cannabis.paa";
		processedItem = "marijuana";
	};

	class marijuana {
		variable = "marijuana";
		displayName = "STR_Item_Marijuana";
		weight = 6;
		buyPrice = 8200;
		sellPrice = 3800;
		illegal = true;
		edible = -1;
		icon = "icons\marijuana.paa";
	};

	class cocaine_unprocessed {
		variable = "cocaineUnprocessed";
		displayName = "STR_Item_CocaineU";
		weight = 9;
		buyPrice = -1;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\cocapaste.paa";
		processedItem = "cocaine_processed";
	};

	class cocaine_processed {
		variable = "cocaineProcessed";
		displayName = "STR_Item_CocaineP";
		weight = 7;
		buyPrice = -1;
		sellPrice = 4200;
		illegal = true;
		edible = -1;
		icon = "icons\cocainep.paa";
	};

	//Drink
	class redgull {
		variable = "redgull";
		displayName = "STR_Item_RedGull";
		weight = 1;
		buyPrice = 150;
		sellPrice = 100;
		illegal = false;
		edible = 100;
		icon = "icons\ico_redgull.paa";
	};

	class coffee {
		variable = "coffee";
		displayName = "STR_Item_Coffee";
		weight = 1;
		buyPrice = 20;
		sellPrice = 5;
		illegal = false;
		edible = 100;
		icon = "icons\ico_coffee.paa";
	};

	class waterBottle {
		variable = "waterBottle";
		displayName = "STR_Item_WaterBottle";
		weight = 1;
		buyPrice = 20;
		sellPrice = 5;
		illegal = false;
		edible = 100;
		icon = "icons\ico_waterBottle.paa";
	};

	//Food
	class apple {
		variable = "apple";
		displayName = "STR_Item_Apple";
		weight = 1;
		buyPrice = 120;
		sellPrice = 100;
		illegal = false;
		edible = 10;
		icon = "icons\ico_apple.paa";
	};

	class peach {
		variable = "peach";
		displayName = "STR_Item_Peach";
		weight = 1;
		buyPrice = 110;
		sellPrice = 100;
		illegal = false;
		edible = 10;
		icon = "icons\ico_peach.paa";
	};

	class tbacon {
		variable = "tbacon";
		displayName = "STR_Item_TBacon";
		weight = 1;
		buyPrice = 75;
		sellPrice = 25;
		illegal = false;
		edible = 40;
		icon = "icons\ico_tBacon.paa";
	};

	class donuts {
		variable = "donuts";
		displayName = "STR_Item_Donuts";
		weight = 1;
		buyPrice = 120;
		sellPrice = 40;
		illegal = false;
		edible = 30;
		icon = "icons\ico_donuts.paa";
	};

	class rabbit_raw {
		variable = "rabbitRaw";
		displayName = "STR_Item_RabbitRaw";
		weight = 2;
		buyPrice = -1;
		sellPrice = 500;
		illegal = false;
		edible = -1;
		icon = "icons\ico_rabbitRaw.paa";
	};

	class rabbit {
		variable = "rabbit";
		displayName = "STR_Item_Rabbit";
		weight = 1;
		buyPrice = 3000;
		sellPrice = 2025;
		illegal = false;
		edible = 20;
		icon = "icons\ico_rabbit.paa";
	};

	class salema_raw {
		variable = "salemaRaw";
		displayName = "STR_Item_SalemaRaw";
		weight = 2;
		buyPrice = -1;
		sellPrice = 510;
		illegal = false;
		edible = -1;
		icon = "icons\ico_salemaRaw.paa";
	};

	class salema {
		variable = "salema";
		displayName = "STR_Item_Salema";
		weight = 1;
		buyPrice = 2000;
		sellPrice = 600;
		illegal = false;
		edible = 30;
		icon = "icons\ico_cookedFish.paa";
	};

	class ornate_raw {
		variable = "ornateRaw";
		displayName = "STR_Item_OrnateRaw";
		weight = 2;
		buyPrice = -1;
		sellPrice = 520;
		illegal = false;
		edible = -1;
		icon = "icons\ico_ornateRaw.paa";
	};

	class ornate {
		variable = "ornate";
		displayName = "STR_Item_Ornate";
		weight = 1;
		buyPrice = 3000;
		sellPrice = 650;
		illegal = false;
		edible = 25;
		icon = "icons\ico_cookedFish.paa";
	};

	class mackerel_raw {
		variable = "mackerelRaw";
		displayName = "STR_Item_MackerelRaw";
		weight = 4;
		buyPrice = -1;
		sellPrice = 650;
		illegal = false;
		edible = -1;
		icon = "icons\ico_mackerelRaw.paa";
	};

	class mackerel {
		variable = "mackerel";
		displayName = "STR_Item_Mackerel";
		weight = 2;
		buyPrice = 3000;
		sellPrice = 1500;
		illegal = false;
		edible = 30;
		icon = "icons\ico_cookedFish.paa";
	};

	class tuna_raw {
		variable = "tunaRaw";
		displayName = "STR_Item_TunaRaw";
		weight = 6;
		buyPrice = -1;
		sellPrice = 1700;
		illegal = false;
		edible = -1;
		icon = "icons\ico_tunaRaw.paa";
	};

	class tuna {
		variable = "tuna";
		displayName = "STR_Item_Tuna";
		weight = 3;
		buyPrice = 4250;
		sellPrice = 2000;
		illegal = false;
		edible = 100;
		icon = "icons\ico_cookedFish.paa";
	};

	class mullet_raw {
		variable = "mulletRaw";
		displayName = "STR_Item_MulletRaw";
		weight = 4;
		buyPrice = -1;
		sellPrice = 1100;
		illegal = false;
		edible = -1;
		icon = "icons\ico_mulletRaw.paa";
	};

	class mullet {
		variable = "mullet";
		displayName = "STR_Item_Mullet";
		weight = 2;
		buyPrice = 6800;
		sellPrice = 2600;
		illegal = false;
		edible = 80;
		icon = "icons\ico_cookedFish.paa";
	};

	class catshark_raw {
		variable = "catsharkRaw";
		displayName = "STR_Item_CatSharkRaw";
		weight = 6;
		buyPrice = -1;
		sellPrice = 1200;
		illegal = false;
		edible = -1;
		icon = "icons\ico_catsharkRaw.paa";
	};

	class catshark {
		variable = "catshark";
		displayName = "STR_Item_CatShark";
		weight = 3;
		buyPrice = 8000;
		sellPrice = 2000;
		illegal = false;
		edible = 100;
		icon = "icons\ico_cookedFish.paa";
	};

	class turtle_raw {
		variable = "turtleRaw";
		displayName = "STR_Item_TurtleRaw";
		weight = 16;
		buyPrice = -1;
		sellPrice = 9700;
		illegal = true;
		edible = -1;
		icon = "icons\ico_turtleRaw.paa";
	};

	class turtle_soup {
		variable = "turtleSoup";
		displayName = "STR_Item_TurtleSoup";
		weight = 2;
		buyPrice = 7250;
		sellPrice = 4000;
		illegal = false;
		edible = 100;
		icon = "icons\ico_turtleSoup.paa";
	};

	class hen_raw {
		variable = "henRaw";
		displayName = "STR_Item_HenRaw";
		weight = 1;
		buyPrice = -1;
		sellPrice = 600;
		illegal = false;
		edible = -1;
		icon = "icons\ico_wholeChickenRaw.paa";
	};

	class hen {
		variable = "hen";
		displayName = "STR_Item_Hen";
		weight = 1;
		buyPrice = 3550;
		sellPrice = 1400;
		illegal = false;
		edible = 65;
		icon = "icons\ico_wholeChicken.paa";
	};

	class rooster_raw {
		variable = "roosterRaw";
		displayName = "STR_Item_RoosterRaw";
		weight = 1;
		buyPrice = -1;
		sellPrice = 525;
		illegal = false;
		edible = -1;
		icon = "icons\ico_chickenDrumstickRaw.paa";
	};

	class rooster {
		variable = "rooster";
		displayName = "STR_Item_Rooster";
		weight = 115;
		buyPrice = 3500;
		sellPrice = 1800;
		illegal = false;
		edible = 45;
		icon = "icons\ico_chickenDrumstick.paa";
	};

	class sheep_raw {
		variable = "sheepRaw";
		displayName = "STR_Item_SheepRaw";
		weight = 2;
		buyPrice = -1;
		sellPrice = 525;
		illegal = false;
		edible = -1;
		icon = "icons\ico_lambChopRaw.paa";
	};

	class sheep {
		variable = "sheep";
		displayName = "STR_Item_Sheep";
		weight = 2;
		buyPrice = 4025;
		sellPrice = 1050;
		illegal = false;
		edible = 100;
		icon = "icons\ico_lambChop.paa";
	};

	class goat_raw {
		variable = "goatRaw";
		displayName = "STR_Item_GoatRaw";
		weight = 2;
		buyPrice = -1;
		sellPrice = 800;
		illegal = false;
		edible = -1;
		icon = "icons\ico_muttonLegRaw.paa";
	};

	class goat {
		variable = "goat";
		displayName = "STR_Item_Goat";
		weight = 2;
		buyPrice = 4025;
		sellPrice = 1400;
		illegal = false;
		edible = 100;
		icon = "icons\ico_muttonLeg.paa";
	};

	class wood {
    variable = "wood";
    displayName = "STR_Item_Wood";
    weight = 6;
    buyPrice = -1;
    sellPrice = -1;
    illegal = false;
    edible = -1;
		icon = "icons\wood.paa";
  };

	class plank {
    variable = "plank";
    displayName = "STR_Item_Plank";
    weight = 5;
    buyPrice = -1;
    sellPrice = 2000;
    illegal = false;
    edible = -1;
		icon = "icons\plank.paa";
  };

	class rubberU {
		variable = "rubberU";
		displayName = "STR_Item_rubberu";
		weight = 5;
		buyPrice = -1;
		sellPrice = 500;
		illegal = false;
		edible = -1;
		icon = "icons\rubberU.paa";
	};
	
	class colar {
		variable = "colar";
		displayName = "STR_Item_colar";
		weight = 10;
		buyPrice = -1;
		sellPrice = 15000;
		illegal = true;
		edible = -1;
		icon = "icons\rubberU.paa";
	};

	class rubber {
		variable = "rubber";
		displayName = "STR_Item_rubber";
		weight = 4;
		buyPrice = -1;
		sellPrice = 1400;
		illegal = false;
		edible = -1;
		icon = "icons\rubber.paa";
	};

	class goldcoin {
		variable = "goldcoin";
		displayName = "STR_Item_goldcoin";
		weight = 2;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\goldcoin.paa";
	};

	class nitroamine {
		variable = "nitroamine";
		displayName = "STR_Item_nitroamine";
		weight = 5;
		buyPrice = -1;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\nitroamine.paa";
	};
	
	class diamante2 {
		variable = "diamante2";
		displayName = "STR_Item_diamante2";
		weight = 8;
		buyPrice = -1;
		sellPrice = -1;
		illegal = true;
		edible = -1;
		icon = "icons\yeast.paa";
	};
	
	class diamante3 {
		variable = "diamante3";
		displayName = "STR_Item_diamante3";
		weight = 6;
		buyPrice = -1;
		sellPrice = 2800;
		illegal = true;
		edible = -1;
		icon = "icons\ruby.paa";
	};

	class C4 {
		variable = "C4";
		displayName = "STR_Item_C4";
		weight = 6;
		buyPrice = 12025;
		sellPrice = 2500;
		illegal = true;
		edible = -1;
		icon = "icons\C4.paa";
	};

	class steel {
		variable = "steel";
		displayName = "STR_Item_steel";
		weight = 1;
		buyPrice = 4025;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\steel.paa";
	};

	class steelplate {
		variable = "steelplate";
		displayName = "STR_Item_steelplate";
		weight = 6;
		buyPrice = 12025;
		sellPrice = 1800;
		illegal = false;
		edible = -1;
		icon = "icons\steelplate.paa";
	};

	class wool {
		variable = "wool";
		displayName = "STR_Item_wool";
		weight = 3;
		buyPrice = -1;
		sellPrice = 800;
		illegal = false;
		edible = -1;
		icon = "icons\wool.paa";
	};

	class cloth {
		variable = "cloth";
		displayName = "STR_Item_cloth";
		weight = 3;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\cloth.paa";
	};

	class sulfur {
		variable = "sulfur";
		displayName = "STR_Item_sulfur";
		weight = 3;
		buyPrice = -1;
		sellPrice = 1100;
		illegal = false;
		edible = -1;
		icon = "icons\sulfur.paa";
	};

	class gunpowder {
		variable = "gunpowder";
		displayName = "STR_Item_gunpowder";
		weight = 3;
		buyPrice = -1;
		sellPrice = 1000;
		illegal = true;
		edible = -1;
		icon = "icons\gunpowder.paa";
	};

	class beer {
		variable = "beer";
		displayName = "STR_Item_beer";
		weight = 3;
		buyPrice = 2025;
		sellPrice = 1200;
		illegal = false;
		edible = 100;
		icon = "icons\ico_beer.paa";
	};

	class whiskey {
		variable = "whiskey";
		displayName = "STR_Item_whiskey";
		weight = 3;
		buyPrice = 3025;
		sellPrice = 1275;
		illegal = false;
		edible = 100;
		icon = "icons\ico_whiskey.paa";
	};

	class moonshine {
		variable = "moonshine";
		displayName = "STR_Item_moonshine";
		weight = 5;
		buyPrice = 4025;
		sellPrice = 2000;
		illegal = false;
		edible = 100;
		icon = "icons\ico_moonshine.paa";
	};

	class nitro {
        variable = "nitro";
        displayName = "STR_Item_Nitro";
        weight = 6;
        buyPrice = 75000;
        sellPrice = 20000;
        illegal = true;
        edible = -1;
        icon = "icons\nitro.paa";
	};

	class blindfold {
        variable = "blindfold";
        displayName = "STR_Item_Blindfold";
        weight = 4;
        buyPrice = 5000;
        sellPrice = 1600;
        illegal = true;
        edible = -1;
        icon = "icons\blindfold.paa";
	};

	//Crafting
	class barrel {
			variable = "barrel";
			displayName = "STR_Item_Barrel";
			weight = 1;
			buyPrice = -1;
			sellPrice = -1;
			illegal = true;
			edible = -1;
			icon = "icons\craft\barrel.paa";
	};

	class butt {
			variable = "butt";
			displayName = "STR_Item_Butt";
			weight = 1;
			buyPrice = -1;
			sellPrice = -1;
			illegal = true;
			edible = -1;
			icon = "icons\craft\butt.paa";
	};

	class sight {
			variable = "sight";
			displayName = "STR_Item_Sight";
			weight = 1;
			buyPrice = -1;
			sellPrice = -1;
			illegal = true;
			edible = -1;
			icon = "icons\craft\sight.paa";
	};

	class trigger {
			variable = "trigger";
			displayName = "STR_Item_Trigger";
			weight = 1;
			buyPrice = -1;
			sellPrice = -1;
			illegal = true;
			edible = -1;
			icon = "icons\craft\trigger.paa";
	};

	class engine {
			variable = "engine";
			displayName = "STR_Item_Engine";
			weight = 8;
			buyPrice = -1;
			sellPrice = -1;
			illegal = false;
			edible = -1;
			icon = "icons\craft\engine.paa";
	};

	class plans {
			variable = "plans";
			displayName = "STR_Item_Plans";
			weight = 1;
			buyPrice = 460;
			sellPrice = -1;
			illegal = false;
			edible = -1;
			icon = "icons\craft\plans.paa";
	};
};
