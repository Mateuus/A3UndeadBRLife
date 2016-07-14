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
	hint "Voce precisa estar em uma area de craft!";
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
				["arifle_TRG21_F", ["steel",30,"barrel",4,"trigger",1,"butt",4,"goldcoin",30]],
				["arifle_Katiba_F", ["steel",35,"barrel",4,"trigger",1,"butt",5,"goldcoin",35]],
				["arifle_MX_F", ["steel",40,"barrel",4,"trigger",1,"butt",5,"goldcoin",40]],
				["arifle_MX_SW_F", ["steel",45,"barrel",4,"trigger",1,"butt",5,"goldcoin",45]],
				["arifle_MXM_F", ["steel",45,"barrel",4,"trigger",1,"butt",5,"goldcoin",45]],
				["LMG_Mk200_F", ["steel",45,"barrel",4,"trigger",1,"butt",5,"goldcoin",45,"goldBar",2]],
				["LMG_Zafir_F", ["steel",45,"barrel",5,"trigger",1,"butt",5,"sight",2,"goldBar",3,"goldcoin",35]],
				["srifle_LRR_camo_F", ["steel",45,"barrel",5,"trigger",1,"butt",5,"sight",5,"goldBar",5,"goldcoin",29]]
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
				["U_O_Wetsuit",["cloth",5,"rubber",3,"goldcoin",7]],
				["U_O_CombatUniform_oucamo",["cloth",11,"goldcoin",15]],
				["U_O_FullGhillie_sard",["cloth",30,"goldcoin",30]]
        ];
	};

	case "backpack":
	{
        _return = [
				["B_Kitbag_cbr",["cloth",25,"goldcoin",15]],
				["B_Bergen_dgtl_F",["cloth",30,"goldcoin",15,"goldBar",2]]
			];
	};

	case "item":
	{
        _return = [
      ["lockpick",["iron_refined",5,"goldcoin",6]],
	  ["blindfold",["cloth",7,"goldcoin",6]],
	  ["boltcutter",["iron_refined",6,"goldcoin",6]],
	  ["zipties",["steel",6,"goldcoin",6]],
	  ["knife",["steel",10,"rubber",4,"goldcoin",6]],
      ["goldBar",["glass",40,"goldcoin",30]],
			["butt",["iron_refined",12,"rubber",7,"goldcoin",9]],
			["sight",["iron_refined",10,"steel",3,"goldcoin",8]],
			["barrel",["iron_refined",15,"steel",6,"goldcoin",10]],
			["trigger",["iron_refined",19,"goldcoin",11]],
			["blastingcharge",["cloth",4,"C4",5,"trigger",1,"goldcoin",3]]
      ];
	};

    case "vest":
    {
        _return = [
        ["V_PlateCarrierL_CTRG",["cloth",16,"steelplate",2]],
				["V_HarnessOGL_brn",["cloth",35,"sulfur",25,"C4",12,"trigger",1]]
        ];
    };
    case "ammo":
    {
        _return = [
        ["150Rnd_762x54_Box_Tracer",["iron_refined",15,"gunpowder",22,"goldcoin",25]],
		["200Rnd_65x39_cased_Box_Tracer",["iron_refined",19,"gunpowder",26,"goldcoin",25]],
		["100Rnd_65x39_caseless_mag_Tracer",["iron_refined",19,"gunpowder",26,"goldcoin",25]],
		["30Rnd_65x39_caseless_green_mag_Tracer",["iron_refined",15,"gunpowder",20,"goldcoin",15]],
		["30Rnd_65x39_caseless_mag_Tracer",["iron_refined",15,"gunpowder",20,"goldcoin",15]],
		["30Rnd_556x45_Stanag_Tracer_Red",["iron_refined",15,"gunpowder",16,"goldcoin",10]],
		["7Rnd_408_Mag",["iron_refined",25,"gunpowder",30,"goldcoin",30]]
      	];
    };

    case "attach":
    {
        _return = [
        ["optic_Aco",["sight",5,"iron_refined",5,"goldcoin",10]],
        ["optic_Aco_grn",["sight",5,"iron_refined",5,"goldcoin",10]],
        ["optic_MRCO",["sight",5,"iron_refined",8,"goldcoin",10]],
        ["optic_MRD",["sight",5,"iron_refined",5,"goldcoin",10]],
        ["FirstAidKit",["cloth",3]]
			];
		};
	};
	_return;
};
