/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 06;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 02;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = false; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Nossos preços foram atualizados!",
	"Os novos preços são calculados pelo servidor..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████

DYNMARKET_Items_Groups =
[
	["Ferramentas",
		[
			["pickaxe",-1,500,1250],
			["woodaxe",-1,500,1250]
		],
		0.5
	],
	["Comidas",
		[
			["apple",-1,25,100],
			["peach",-1,25,100]
		],
		0.5
	],
	["Legal",
		[
			["oil_processed",-1,2900,4135],
			["copper_refined",-1,1965,2200],
			["iron_refined",-1,1227,1970],
			["salt_refined",-1,2063,2487],
			["glass",-1,804,2010],
			["diamond_cut",-1,3290,4492],
			["plank",-1,894,2235]
		],
		0.5
	],
	["Illegal", 
		[
			["cement",1,1616,4040],
			["heroin_processed",1,5617,8080],
			["marijuana",1,3637,4600],
			["cocaine_processed",1,7267,11200],
			["turtle_raw",1,5280,15200],
			["diamante3",1,1310,3275],
			["colar",1,6280,15000],
			["goldbar",1,35000,75000]
		],
		0.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	//Ferramentas
	["pickaxe",1250],
	["woodaxe",1250],
	
	//Comidas
	["apple",25],
	["peach",25],
	
	//Farms Legais
	["oil_processed",4100],
	["copper_refined",200],
	["iron_refined",1200],
	["salt_refined",2200],
	["glass",200],
	["diamond_cut",3800],
	["plank",1676],
	
	//Farms Inlegais
	["cement",4040],
	["heroin_processed",8080],
	["marijuana",4600],
	["cocaine_processed",11200],
	["turtle_raw",15200],
	["diamante3",3275],
	["colar",1500],
	["goldbar",50000]

	
	
];

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
