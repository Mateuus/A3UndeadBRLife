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
	"Nos prix ont été mis à jour!",
	"Les nouveaux prix sont calculés par le serveur ..."
];

// █████████████████ CONFIGURATION DU GROUPE D'ARTICLES █████████████████

DYNMARKET_Items_Groups =
[		
	["Autres",		
		[
			["blastingcharge",-1,17500,17500],
			["boltcutter",-1,3750,3750],
			["excavator",-1,2500,2500],
			["defusekit",-1,1250,1250],
			["gpstracker",-1,500,500],
			["fuelEmpty",-1,212,212],
			["fuelFull",-1,425,425],
			["lockpick",-1,500,500],	
			["pickaxe",-1,325,325],
			["bottles",-1,25,25],			
			["waterBottle",-1,5,5],	
			["coffee",-1,5,5],
			["donuts",-1,60,60],	
			["redgull",-1,750,750],
			["tbacon",-1,37,37],	
			["spikeStrip",-1,1250,1250],	
			["storagebig",-1,75000,75000],
			["storagesmall",-1,37500,37500]			
		],		
		0
	],
	
	["Fruits & Legumes",
		[
			["cornmeal",-1,100,200],
			["yeast",-1,100,200],			
			["apple",-1,100,200],
			["peach",-1,100,200],
			["grape",-1,100,200],
			["hops",-1,100,200],
			["rye",-1,100,200]
		],
		0.5
	],
	
    ["Poissonerie",
		[
			["salema_raw",-1,100,1500],
			["salema",-1,10,150],
			
			["ornate_raw",-1,100,1500],
			["ornate",-1,10,150],
			
			["mackerel_raw",-1,300,1700],
			["mackerel",-1,30,170],
			
			["tuna_raw",-1,1300,2700],
			["tuna",-1,130,270],
			
			["mullet_raw",-1,200,1600],
			["mullet",-1,20,160],
			
			["catshark_raw",-1,1000,2400],
			["catshark",-1,100,240],
			
			["turtle_soup",-1,50,150]
		],
		0.5
	],
	
	["Boucherie",
		[
			["rabbit_raw",-1,550,1950],
			["rabbit",-1,55,195],
			
			["hen_raw",-1,300,1700],
			["hen",-1,30,170],
			
			["rooster_raw",-1,500,1900],
			["rooster",-1,50,190],
			
			["sheep_raw",-1,1400,2800],
			["sheep",-1,140,280],
			
			["goat_raw",-1,2300,3700],
			["goat",-1,230,370]
		],
		0.5
	],
	
	["Ressources",
		[
			["oil_unprocessed",-1,700,900],
			["oil_processed",-1,7000,9000],
			
			["copper_unrefined",-1,150,350],
			["copper_refined",-1,1500,3500],
			
			["iron_unrefined",-1,225,425],
			["iron_refined",-1,2250,4250],
			
			["salt_unrefined",-1,75,275],
			["salt_refined",-1,750,2750],
			["sugar_unrefined",-1,75,275],
			["sugar_refined",-1,750,2750],
			
			["sand",-1,100,300],
			["glass",-1,1000,3000],
			
			["diamond_uncut",-1,400,600],
			["diamond_cut",-1,4000,6000],
			
			["rock",-1,200,400],
			["cement",-1,2000,4000],
			
			["medmarijuana",-1,1000,3000],
			["bottledbeer",-1,1500,3500],
			["bottledvodka",-1,2000,4000],
			["bottledwine",-1,2500,4500],
			["bottledwhiskey",-1,3000,5000]			
		],		
		0.5
	],
	
	["Illegaux", 
		[
			["cocaine_unprocessed",1,700,900],
			["cocaine_processed",1,7000,9000],
			["crack_processed",1,8000,10000],			
			
			["heroin_unprocessed",1,550,950],
			["heroin_processed",1,6500,8500],
			["opium_processed",1,5500,7500],			
			
			["cannabis",1,400,600],
			["marijuana",1,4000,6000],
			
			["turtle_raw",1,9000,11000],
			["goldbar",1,85000,105000],
			["bottledshine",1,9000,11000]			
		],
		0.5
	]
];

// █████████████████    TOUS LES ARTICLES VENDABLE    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	["bottles",25],	
	["waterBottle",5],	
	["coffee",5],
	["donuts",60],	
	["redgull",750],
	["tbacon",37],
	["cornmeal",150],	
	["apple",150],
	["peach",150],
	["grape",150],
	["hops",150],
	["yeast",150],	
	["rye",150],	
	
	["salema_raw",800],
	["salema",80],
	["ornate_raw",800],
	["ornate",80],
	["mackerel_raw",1000],
	["mackerel",100],
	["tuna_raw",2000],
	["tuna",190],
	["mullet_raw",900],
	["mullet",90],
	["catshark_raw",1700],
	["catshark",170],
	["turtle_raw",10000],	
	["turtle_soup",100],
	
	["rabbit_raw",1250],
	["rabbit",125],
	["hen_raw",1000],
	["hen",100],
	["rooster_raw",1200],
	["rooster",120],
	["sheep_raw",2100],
	["sheep",210],
	["goat_raw",3000],
	["goat",300],
	
	["oil_unprocessed",800],
	["oil_processed",8000],
	["copper_unrefined",250],
	["copper_refined",2500],
	["iron_unrefined",325],
	["iron_refined",3250],
	["salt_unrefined",175],
	["salt_refined",1750],
	["sugar_unrefined",175],
	["sugar_refined",1750],	
	["sand",200],	
	["glass",2000],
	["diamond_uncut",500],	
	["diamond_cut",5000],
	["goldbar",95000],	
	["rock",300],	
	["cement",3000],
	["medmarijuana",2000],
	["bottledbeer",2500],
	["bottledvodka",3000],
	["bottledwine",3500],
	["bottledwhiskey",4000],
	
	["bottledshine",9000],	
    ["heroin_unprocessed",750],
	["heroin_processed",7500],
	["opium_processed",6500],	
	["cannabis",500],
	["marijuana",5000],
	["cocaine_unprocessed",800],
	["cocaine_processed",8000],
	["crack_processed",9000],
	
	["blastingcharge",17500],
	["boltcutter",3750],
	["excavator",2500],
	["defusekit",1250],
	["lockpick",500],	
	["pickaxe",325],	
	["gpstracker",500],
	["fuelEmpty",212],
	["fuelFull",425],	
	["spikeStrip",1250],	
	["storagebig",75000],
	["storagesmall",37500]	
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
