#include "..\script_macros.hpp"
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((FETCH_CONST(life_medicLevel)) < 1 && (FETCH_CONST(life_adminlevel) isEqualTo 0)) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

if(EQUAL(LIFE_SETTINGS(getNumber,"restrict_medic_weapons"),1)) then {
	[] spawn {
		for "_i" from 0 to 1 step 0 do {
			waitUntil {sleep 3; currentWeapon player != ""};
			removeAllWeapons player;
		};
	};
};

player setVariable["rankmedic",(FETCH_CONST(life_medicLevel)),true];
[] call life_fnc_spawnMenu;
[] spawn life_fnc_medicplaceablesInit;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

switch (FETCH_CONST(life_medicLevel)) do
{
	case 1: { life_paycheck = life_paycheck + 1000; };  
    case 2: { life_paycheck = life_paycheck + 2000; }; 
    case 3: { life_paycheck = life_paycheck + 3000; }; 
    case 4: { life_paycheck = life_paycheck + 4000; }; 
    case 5: { life_paycheck = life_paycheck + 5000; };
	case 6: { life_paycheck = life_paycheck + 6000; };
	default { life_paycheck = life_paycheck };
};
