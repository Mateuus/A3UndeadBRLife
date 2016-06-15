#include "..\..\script_macros.hpp"

/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return","_craftSites"];
if(!((player distance (getMarkerPos "CraftingArea1") < 50) OR  (player distance (getMarkerPos "CraftingArea2") < 50) OR  (player distance (getMarkerPos "CraftingArea3") < 50))) then  {
	closeDialog 0;
	_return = false;
	hint "You must be near a crafting area to do this!";
	} else {

_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft isEqualTo "") exitWith {closeDialog 0}; //Bad shop type passed.

_craftSites = ["CraftingArea1","CraftingArea2","CraftingArea3"];

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["hgun_Rook40_F", ["steel",2,"barrel",1,"trigger",1]],
				["hgun_Pistol_heavy_02_F", ["steel",4,"barrel",1,"trigger",1]],
				["arifle_TRG21_F", ["steel",13,"barrel",2,"trigger",1,"butt",2,"sight",1]],
				["srifle_DMR_05_tan_f", ["steel",14,"barrel",4,"trigger",1,"butt",5,"sight",5]],
				["srifle_DMR_02_sniper_F", ["steel",9,"barrel",4,"trigger",1,"butt",7,"sight",5]],
				["srifle_GM6_F", ["steel",15,"barrel",5,"trigger",1,"butt",3,"sight",5]],
				["srifle_GM6_camo_F", ["steel",15,"barrel",5,"trigger",1,"butt",3,"sight",5]],
				["srifle_LRR_F", ["steel",14,"barrel",4,"trigger",1,"butt",3,"sight",5]],
				["srifle_LRR_camo_F", ["steel",14,"barrel",4,"trigger",1,"butt",3,"sight",5]],
				["srifle_DMR_04_F", ["steel",13,"barrel",4,"trigger",1,"butt",3,"sight",5]],
				["MMG_01_hex_F", ["steel",19,"barrel",3,"trigger",1,"butt",2,"sight",3]],
				["MMG_02_camo_F", ["steel",22,"barrel",3,"trigger",1,"butt",3,"sight",3]],
				["launch_RPG32_F", ["steel",23,"barrel",10,"trigger",1,"sight",3]]
        ];
	};

    case "vehicle":
    {
		_return = [
			];
    };

	case "uniform":
	{
         _return = [
				["U_O_Wetsuit",["cloth",5,"rubber",3]],
				["U_O_CombatUniform_oucamo",["cloth",11]],
				["U_O_FullGhillie_ard",["cloth",24]],
				["U_O_FullGhillie_lsh",["cloth",24]],
				["U_O_FullGhillie_sard",["cloth",24]]
        ];
	};

	case "backpack":
	{
        _return = [
				["B_AssaultPack_cbr",["cloth",10]],
        ["B_Kitbag_mcamo",["cloth",12]],
        ["B_TacticalPack_oli",["cloth",9]],
        ["B_FieldPack_ocamo",["cloth",9]],
        ["B_Bergen_sgg",["cloth",10]],
        ["B_Kitbag_cbr",["cloth",9]],
        ["B_Carryall_oli",["cloth",16]],
        ["B_Carryall_khk",["cloth",16]]
			];
	};

	case "item":
	{
        _return = [
      ["lockpick",["iron_refined",2]],
      ["pickaxe",["iron_refined",2,"rubber",1]],
			["butt",["iron_refined",2,"rubber",2]],
			["sight",["iron_refined",2,"steel",1]],
			["barrel",["iron_refined",2,"steel",3]],
			["trigger",["iron_refined",2]],
			["fuelFull",["iron_refined",1,"oil_processed",3]],
			["blastingcharge",["cloth",4,"C4",5,"trigger",1]],
			["goldbar",["goldcoin",63,"waterBottle",7,"pliers",1,"salt_refined",13]],
			["storagesmall",["steel",10,"iron_refined",8]]
      ];
	};

    case "vest":
    {
        _return = [
        ["V_PlateCarrierL_CTRG",["cloth",16,"steelplate",2]],
				["V_PlateCarrierGL_mtp",["cloth",16,"steelplate",3]],
				["V_PlateCarrierGL_blk",["cloth",16,"steelplate",3]],
				["V_PlateCarrierSpec_rgr",["cloth",16,"steelplate",2]],
				["V_HarnessOGL_brn",["cloth",28,"sulfur",21,"C4",12,"trigger",1]]
        ];
    };
    case "ammo":
    {
        _return = [
        ["APERSTripMine_Wire_Mag",["steel",3,"gunpowder",8,"sulfur",8,"C4",3]],
        ["DemoCharge_Remote_Mag",["steel",4,"gunpowder",10,"sulfur",10,"C4",5]],
        ["5Rnd_127x108_APDS_Mag",["iron_refined",3,"gunpowder",5,"sulfur",10]],
        ["100Rnd_127x99_mag_Tracer_Green",["iron_refined",15,"gunpowder",22]]
      	];
    };

    case "attach":
    {
        _return = [
        ["optic_Aco",["sight",1,"iron_refined",1]],
        ["optic_Aco_grn",["sight",1,"iron_refined",1]],
        ["optic_MRCO",["sight",1,"iron_refined",3]],
        ["optic_MRD",["sight",1,"iron_refined",1]],
        ["FirstAidKit",["cloth",3]]
			];
		};
	};
	_return;
};
