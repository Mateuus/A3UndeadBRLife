#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private["_skinName"];

switch(playerSide) do {
	case civilian: {
		if(EQUAL(LIFE_SETTINGS(getNumber,"civ_skins"),1)) then {
			if(uniform player isEqualTo "U_Marshal") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\gay.jpg"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_stripped") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\batrman.jpg"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\cat.jpg"];
			};
			if(uniform player isEqualTo "U_OrestesBody") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\hand.jpg"];
			};
			if(uniform player isEqualTo "U_C_Commoner1_1") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\joker.jpg"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\lacoste.jpg"];
			};
			if(uniform player isEqualTo "U_C_Commoner1_3") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\roupaundead.jpg"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_salmon") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\wolf.jpg"];
			};
			if(uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\superman.jpg"];
			};
			if(uniform player isEqualTo "U_C_Commoner_shorts") then {
				player setObjectTextureGlobal [0, "textures\Civ\clothing\pika.jpg"];
			};
					
		};
		
		////////////////////////VIP INICIO/////////////////////////////////////////////////
		if ((uniform player isEqualTo "U_C_Commoner1_3") && (FETCH_CONST(life_donorlevel) isEqualTo 0)) then
		{
			player setObjectTextureGlobal [0, "textures\Civ\clothing\roupaundead.jpg"];
		};

		if ((uniform player isEqualTo "U_C_Commoner1_3") && (FETCH_CONST(life_donorlevel) isEqualTo 1)) then
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\bronze.jpg"];
		};
		if ((uniform player isEqualTo "U_C_Commoner1_3") && (FETCH_CONST(life_donorlevel) isEqualTo 2)) then
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\silver.jpg"];
		};
		if ((uniform player isEqualTo "U_C_Commoner1_3") && (FETCH_CONST(life_donorlevel) isEqualTo 3)) then
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\gold.jpg"];
		};
		if ((uniform player isEqualTo "U_C_Commoner1_3") && (FETCH_CONST(life_donorlevel) isEqualTo 4)) then
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\platinum.jpg"];
		};
		if ((uniform player isEqualTo "U_C_Commoner1_3") && (FETCH_CONST(life_donorlevel) isEqualTo 5)) then
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\diamante.jpg"];
		};
            
		if (uniform player isEqualTo "U_B_CombatUniform_mcam" && (FETCH_CONST(life_donorlevel) >= 1)) then 
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\bh.jpg"];
		};
		if (uniform player isEqualTo "U_B_CombatUniform_mcam_vest" && (FETCH_CONST(life_donorlevel) >= 1)) then 
		{
			player setObjectTextureGlobal [0, "textures\Vip\clothing\VIParctic.jpg"];
		};
		if (backpack player isEqualTo "B_Bergen_mcamo" && (FETCH_CONST(life_donorlevel) >= 1)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Civ\clothing\VIPgayruck.jpg"];
		};
		if (backpack player isEqualTo "B_Bergen_blk" && (FETCH_CONST(life_donorlevel) >= 1)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Civ\clothing\murica_bag.jpg"];
		};
		if (backpack player isEqualTo "B_Kitbag_cbr" && (FETCH_CONST(life_donorlevel) >= 0)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Civ\clothing\rebelbackpack.jpg"];
		};
		if (backpack player isEqualTo "B_Carryall_cbr" && (FETCH_CONST(life_gangdonorid) >= 0)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Civ\clothing\backpack_PSP_Carry.jpg"];
		};
		if (backpack player isEqualTo "B_Kitbag_sgg" && (FETCH_CONST(life_donorlevel) >= 0)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Civ\clothing\backpack_SBP_Kitbag.jpg"];
		};
		
		/////////////////////////VIP END///////////////////////////////////////////////////
		//KINGS
		if (backpack player isEqualTo "B_Carryall_oli" && (FETCH_CONST(life_gangdonorid) isEqualTo 1)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Vip\kings\mochilakings.jpg"];
		};
		//EXE
		if (backpack player isEqualTo "B_Carryall_oli" && (FETCH_CONST(life_gangdonorid) isEqualTo 2)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Vip\exe\mochilaexe.jpg"];
		};
		//BRFOX
		if (backpack player isEqualTo "B_Carryall_oli" && (FETCH_CONST(life_gangdonorid) isEqualTo 4)) then 
		{
			backpackContainer player setObjectTextureGlobal [0, "textures\Vip\brfox\CarryAll.jpg"];
		};
		////////////////////////////GANGBVIP/////////////////////////////////////////////		
		//////////////////////////////////////////////////////////////////////////////////
		
		
		/*
		if(uniform player isEqualTo "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal [0, "textures\Supporter\vipOrange.jpg"];
		};
		if(uniform player isEqualTo "U_B_CombatUniform_mcam_vest") then {
			player setObjectTextureGlobal [0, "textures\Civ\Supporter\VIParctic.jpg"];
		};
		if(uniform player isEqualTo "U_I_CombatUniform") then {
			player setObjectTextureGlobal [0, "textures\Civ\Supporter\bh.jpg"];
		};
		if ((backpack player) isEqualTo "B_Bergen_mcamo") then {
			backpackContainer player setObjectTextureGlobal [0, "textures\Civ\Supporter\VIPgayruck.jpg"];
		};
		*/
	};

	case west: {
	
		if ((uniform player isEqualTo "U_Rangemaster") && (FETCH_CONST(life_coplevel) isEqualTo 1)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\recruta.jpg"];
		};
		if ((uniform player isEqualTo "U_Rangemaster") && (FETCH_CONST(life_coplevel) isEqualTo 2)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\soldado.jpg"];
		};
		if ((uniform player isEqualTo "U_Rangemaster") && (FETCH_CONST(life_coplevel) isEqualTo 3)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\cabo.jpg"];
		};
		if ((uniform player isEqualTo "U_Rangemaster") && (FETCH_CONST(life_coplevel) isEqualTo 4)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\sargento.jpg"];
		};
		if ((uniform player isEqualTo "U_B_SpecopsUniform_sgg") && (FETCH_CONST(life_coplevel) isEqualTo 5)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\tenente.jpg"];
		};
		if ((uniform player isEqualTo "U_B_SpecopsUniform_sgg") && (FETCH_CONST(life_coplevel) isEqualTo 6)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\capitao.jpg"];
		};
		if ((uniform player isEqualTo "U_B_SpecopsUniform_sgg") && (FETCH_CONST(life_coplevel) isEqualTo 7)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\major.jpg"];
		};
		if ((uniform player isEqualTo "U_B_SpecopsUniform_sgg") && (FETCH_CONST(life_coplevel) isEqualTo 8)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\tencoronel.jpg"];
		};
		if ((uniform player isEqualTo "U_B_SpecopsUniform_sgg") && (FETCH_CONST(life_coplevel) isEqualTo 9)) then
		{
			player setObjectTextureGlobal [0, "textures\cop\clothing\coronel.jpg"];
		};

	
	if(playerSide isEqualTo west) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
};

	case independent: {
		if(uniform player isEqualTo "U_I_CombatUniform_shortsleeve") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\estudante_medico.paa"];
		};
		
		if ((uniform player) isEqualTo "U_I_CombatUniform_shortsleeve") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\estudante_medico.paa"];
		};
		if ((uniform player) isEqualTo "U_B_CombatUniform_mcam_worn") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\medico.paa"];
		};
		if ((uniform player) isEqualTo "U_B_CombatUniform_mcam_vest") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\medico_residente.paa"];
		};
		if ((uniform player) isEqualTo "U_B_SpecopsUniform_sgg") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\cirurgiao.paa"];
		};
		if ((uniform player) isEqualTo "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\comandante_medico.paa"];
		};
		if ((uniform player) isEqualTo "U_B_CTRG_3") then {
			player setObjectTextureGlobal [0, "textures\Med\clothing\comandante_geral_medico.paa"];
		};
		
		if(playerSide isEqualTo independent) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
};
