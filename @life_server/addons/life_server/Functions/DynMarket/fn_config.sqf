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
// █████████████████ CONFIGURATION DE BASE DE LA BOURSE ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 06;     // La durée de fonctionnement jusqu'au prochain redémarrage du serveur en heures.
DYNMARKET_UseExternalDatabase  = false;  // Si le script utilise une base de données externe ?
DYNMARKET_PriceUpdateInterval  = 01;     // Après combien de minutes devrait être mis à jour le prix ?
DYNMARKET_CreateBackups        = true;   // Si le serveur ne sauvegarde pas les prix régulièrement dans la base de données, il le fera lorsque le serveur de redémarre ?
DYNMARKET_CreateBackupInterval = 03;     // Après combien de mises à jour de la bourse le serveur devrait-il sauvegarder les prix dans la base de données ?
DYNMARKET_UserNotification     = false;  // Est-ce que les joueurs devraient être informé par un message (hint) à chaque fois que la bourse est mise à jour ?

// █████████████████ TEXTES DE NOTIFICATION  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Nossos preços foram atualizados!",
	"Os novos preços são baseadas no servidor ..."
];

// █████████████████ CONFIGURATION DU GROUPE D'ARTICLES █████████████████

DYNMARKET_Items_Groups =
[		
	["Autres",		
		[
			["barrel",-1,17500,125000],
			["butt",-1,17500,125000],
			["sight",-1,17500,125000],
			["trigger",-1,17500,125000],
			["engine",-1,17500,125000],
			["blastingcharge",-1,17500,125000],
			["boltcutter",-1,3750,125000],
			["defusekit",-1,1250,125000],
			["gpstracker",-1,500,125000],
			["fuelEmpty",-1,212,125000],
			["fuelFull",-1,425,125000],
			["lockpick",-1,500,125000],	
			["pickaxe",-1,325,125000],
			["blindfold",-1,325,125000],
			["C4",-1,325,125000],
			["goldcoin",-1,325,125000],
			["rubberU",-1,325,125000],
			["steel",-1,325,125000],
			["steelplate",-1,325,125000],
			["wool",-1,325,125000],
			["cloth",-1,325,125000],
			["sulfur",-1,325,125000],
			["nitroamine",-1,325,125000],
			["nitro",-1,325,125000],
			["gunpowder",-1,325,125000],
			["rubber",-1,325,125000],
			["plank",-1,325,125000],
			["kidney",-1,325,125000],
			["knife",-1,325,125000],
			["pliers",-1,325,125000],
			["toolkit",-1,325,125000],
			["zipties",-1,325,125000],
			["woodaxe",-1,325,125000],
			["wood",-1,325,125000],
			["defibrillator",-1,325,125000],		
			["waterBottle",-1,5,125000],	
			["coffee",-1,5,125000],
			["donuts",-1,60,125000],	
			["redgull",-1,750,125000],
			["tbacon",-1,37,125000],	
			["spikeStrip",-1,1250,125000],	
			["storagebig",-1,75000,125000],
			["storagesmall",-1,37500,125000]			
		],		
		0
	],
	
	["Fruits & Legumes",
		[			
			["apple",-1,100,125000],
			["peach",-1,100,125000]
		],
		0.5
	],
	
    ["Poissonerie",
		[
			["salema_raw",-1,100,125000],
			["salema",-1,10,125000],
			
			["ornate_raw",-1,100,125000],
			["ornate",-1,10,125000],
			
			["mackerel_raw",-1,300,125000],
			["mackerel",-1,30,125000],
			
			["tuna_raw",-1,1300,125000],
			["tuna",-1,130,125000],
			
			["mullet_raw",-1,200,125000],
			["mullet",-1,20,125000],
			
			["catshark_raw",-1,1000,125000],
			["catshark",-1,100,125000],
			
			["turtle_soup",-1,50,125000]
		],
		0.5
	],
	
	["Boucherie",
		[
			["rabbit_raw",-1,550,125000],
			["rabbit",-1,55,125000],
			
			["hen_raw",-1,300,125000],
			["hen",-1,30,125000],
			
			["rooster_raw",-1,500,125000],
			["rooster",-1,50,125000],
			
			["sheep_raw",-1,1400,125000],
			["sheep",-1,140,125000],
			
			["goat_raw",-1,2300,125000],
			["goat",-1,230,125000]
		],
		0.5
	],
	
	["Ressources",
		[
			["oil_unprocessed",-1,700,125000],
			["oil_processed",-1,7000,125000],
			
			["copper_unrefined",-1,150,125000],
			["copper_refined",-1,1500,125000],
			
			["iron_unrefined",-1,225,125000],
			["iron_refined",-1,2250,125000],
			
			["salt_unrefined",-1,75,125000],
			["salt_refined",-1,750,125000],
			
			["sand",-1,100,125000],
			["glass",-1,1000,125000],
			
			["diamond_uncut",-1,400,125000],
			["diamond_cut",-1,4000,125000],
			
			["rock",-1,200,125000],
			["cement",-1,2000,125000],

			["beer",-1,1500,125000],
			["moonshine",-1,2000,125000],
			["whiskey",-1,3000,125000]			
		],		
		0.5
	],
	
	["Illegaux", 
		[							
			["cocaine_unprocessed",1,700,125000],
			["cocaine_processed",1,7000,125000],		
			
			["heroin_unprocessed",1,550,125000],
			["heroin_processed",1,6500,125000],	
			
			["cannabis",1,400,125000],
			["marijuana",1,4000,125000],
			
			["turtle_raw",1,9000,125000],
			["goldbar",1,85000,125000]		
		],
		0.5
	]
];

// █████████████████    TOUS LES ARTICLES VENDABLE    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	["waterBottle",5],	//OK
	["coffee",5], //OK
	["donuts",60],	//OK
	["redgull",750], //OK
	["tbacon",37], //OK
	["apple",150], //OK
	["peach",150], //OK
	
	["salema_raw",800], //OK
	["salema",80],//OK
	["ornate_raw",800],//OK
	["ornate",80],//OK
	["mackerel_raw",1000],//OK
	["mackerel",100],//OK
	["tuna_raw",2000],//OK
	["tuna",190],//OK
	["mullet_raw",900],//OK
	["mullet",90],//OK
	["catshark_raw",1700],//OK
	["catshark",170],//OK
	["turtle_raw",10000],	//OK
	["turtle_soup",100],//OK
	
	["rabbit_raw",1250],//OK
	["rabbit",125],//OK
	["hen_raw",1000],//OK
	["hen",100],//OK
	["rooster_raw",1200],//OK
	["rooster",120],//OK
	["sheep_raw",2100],//OK
	["sheep",210],//OK
	["goat_raw",3000],//OK
	["goat",300],//OK
	
	["oil_unprocessed",800],//OK
	["oil_processed",8000],//OK
	["copper_unrefined",250],//OK
	["copper_refined",2500],//OK
	["iron_unrefined",325],//OK
	["iron_refined",3250],//OK
	["salt_unrefined",175],//OK
	["salt_refined",1750],//OK
	["sand",200],	//OK
	["glass",2000],//OK
	["diamond_uncut",500],	//OK
	["diamond_cut",5000],//OK
	["goldbar",95000],	//OK
	["rock",300],	//OK
	["gunpowder",300],	//OK
	["cement",3000],//OK
	["beer",2500],//OK
	["moonshine",3500],//OK
	["whiskey",4000],//OK
	
    ["heroin_unprocessed",750],//OK
	["heroin_processed",7500],//OK
	["cannabis",500],//OK
	["marijuana",5000],//OK
	["cocaine_unprocessed",800],//OK
	["cocaine_processed",8000],//OK
	
	["barrel",17500],//OK
	["butt",17500],//OK
	["sight",17500],//OK
	["trigger",17500],//OK
	["engine",17500],//OK
	["blastingcharge",17500],//OK
	["boltcutter",3750],//OK
	["defusekit",1250],//OK
	["plank",500],	//OK
	["C4",500],	//OK
	["steel",500],	//OK
	["steelplate",500],//OK	
	["wool",500],	//OK
	["cloth",500],	//OK
	["sulfur",500],	//OK
	["nitroamine",500],	//OK
	["nitro",500],	//OK
	["blindfold",500],	//OK
	["lockpick",500],	//OK
	["wood",500],	//OK
	["rubberU",500],	//OK
	["rubber",500],	//OK
	["goldcoin",500],	//OK
	["kidney",500],	 //OK
	["pickaxe",325],	//OK
	["woodaxe",325],   //OK
	["defibrillator",325],   //OK
	["toolkit",325],   //OK
	["zipties",325],  //OK
	["pliers",325], //OK
	["knife",325], //OK
	["gpstracker",500],//OK
	["fuelEmpty",212],//OK
	["fuelFull",425],	//OK
	["spikeStrip",1250],	//OK
	["storagebig",75000],//OK
	["storagesmall",37500]	//OK
];


//███████████████████████████████████████████████████████████████████████
//██████████████████ NE PAS MODIFIER LE CODE SUIVANT! ██████████████████
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
		diag_log "### DYNMARKET >> LES PRIX ACTUELS SONT EN COURS D'ÉCRITURE DANS LA BASE DE DONNÉES    ###";
		diag_log "### DYNMARKET >> COMME PRÉVU, RÉSULTAT EN ATTENTE ...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
