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
				["hgun_Rook40_F", ["steel",6,"barrel",1,"trigger",1]],
				["hgun_Pistol_heavy_02_F", ["steel",9,"barrel",1,"trigger",1]],
				["arifle_TRG21_F", ["steel",15,"barrel",2,"trigger",1,"butt",2,"sight",1]],
				["LMG_Zafir_F", ["steel",35,"barrel",3,"trigger",1,"butt",2,"sight",2]],
				["srifle_LRR_camo_F", ["steel",45,"barrel",5,"trigger",1,"butt",5,"sight",5,"cloth",4]]
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
				["B_Kitbag_cbr",["cloth",25,"goldcoin",15]]
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
      ["goldBar",["glass",35,"goldcoin",35]],
			["butt",["iron_refined",4,"rubber",4,"goldcoin",3]],
			["sight",["iron_refined",4,"steel",3,"goldcoin",4]],
			["barrel",["iron_refined",4,"steel",6,"goldcoin",5]],
			["trigger",["iron_refined",4,"goldcoin",3]],
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
        ["150Rnd_762x54_Box_Tracer",["iron_refined",15,"gunpowder",22]],
		["30Rnd_556x45_Stanag_Tracer_Red",["iron_refined",15,"gunpowder",16]],
		["7Rnd_408_Mag",["iron_refined",25,"gunpowder",30]]
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
