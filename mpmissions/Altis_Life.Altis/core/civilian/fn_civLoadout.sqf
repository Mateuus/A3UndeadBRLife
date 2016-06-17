/*
	File: fn_civLoadout.sqf
	Author: Tobias 'Xetoxyc' Sittenauer

	Description:
	Loads the civs out with the default gear, with randomized clothing.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["U_C_Poloshirt_stripped","U_C_Poloshirt_redwhite","U_OrestesBody","U_C_WorkerCoveralls","U_C_Poor_2","U_C_Commoner1_3","U_C_Commoner1_2","U_C_Commoner1_1","U_C_Commoner1_3","U_C_Poloshirt_salmon","U_C_Poloshirt_burgundy","U_C_Commoner_shorts"];

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

if (playerSide == civilian) then {

switch (FETCH_CONST(life_donorlevel)) do {

	case 1:
	{
		player ForceAddUniform "U_I_CombatUniform";
		player setObjectTextureGlobal [0, "textures\Vip\Clothing\bronze.paa"]; 
	};
	
	case 2:
	{
		player ForceAddUniform "U_I_CombatUniform";
		player setObjectTextureGlobal [0, "textures\Vip\Clothing\silver.paa"]; 
	};
	
	case 3:
	{
		player ForceAddUniform "U_I_CombatUniform";
		player setObjectTextureGlobal [0, "textures\Vip\Clothing\gold.paa"]; 
	};
	
	case 4:
	{
		player ForceAddUniform "U_I_CombatUniform";
		player setObjectTextureGlobal [0, "textures\Vip\Clothing\platunum.paa"]; 
	};
	
	case 5:
	{
		player ForceAddUniform "U_I_CombatUniform";
		player setObjectTextureGlobal [0, "textures\Vip\Clothing\diamante.jpg"]; 
	};
	
	default:
	{
		player addUniform (selectRandom _clothings); //Escolher uma Roupa Random
	}
	
};
};

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;
