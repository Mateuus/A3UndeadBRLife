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

DYNMARKET_Serveruptime         = 04;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 03;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
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
			["oil_processed",-1,1103,2757],
			["copper_refined",-1,565,1412],
			["iron_refined",-1,527,1318],
			["salt_refined",-1,663,1658],
			["glass",-1,804,2010],
			["diamond_cut",-1,1190,2975],
			["plank",-1,894,2235]
		],
		0.5
	],
	["Illegal", 
		[
			["cement",1,1616,4040],
			["heroin_processed",1,1617,4042],
			["marijuana",1,937,2342],
			["cocaine_processed",1,2267,5667],
			["turtle_raw",1,5280,13200],
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
	["oil_processed",2068],
	["copper_refined",1059],
	["iron_refined",989],
	["salt_refined",1244],
	["glass",1508],
	["diamond_cut",2231],
	["plank",1676],
	
	//Farms Inlegais
	["cement",3030],
	["heroin_processed",3031],
	["marijuana",1757],
	["cocaine_processed",4250],
	["turtle_raw",9900],
	["diamante3",2456],
	["colar",9900],
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
