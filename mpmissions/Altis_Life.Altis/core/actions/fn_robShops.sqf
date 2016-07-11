#include "..\..\script_macros.hpp"
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_Pos","_rndmrk","_mrkstring"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_cops = (west countSide playableUnits);

if(_cops < 1) exitWith {hint "Voce nao pode roubar este posto, precisa de 4 ou mais policias online";};
//if(_cops < 30) exitWith {hint "Sorry feature disabled until I fix it, should be fixed soon though.";};
if(side _robber isEqualTo west) exitWith { hint "Ta maluco ??????" };
if(side _robber isEqualTo independent) exitWith { hint "Ta maluco ??????" };
if(_robber distance _shop > 20) exitWith { hint "Voce precisa estar dentro de 5 metros pra roubar!" };
if (vehicle player != _robber) exitWith { hint "Saia do carro para roubar!" };

if (currentWeapon _robber isEqualTo "") exitWith { hint "Voce nao pode roubar sem uma arma !" };

if !(alive _robber) exitWith {};

_kassa = 10000 + round(random 20000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then {[1,format["ALARM! - %1 Robbery in progress", _shop]] remoteExec ["life_fnc_broadcast",west]; };
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Roubo em progresso, fique dentro de 5 metros (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 120;

   _rndmrk = random(10);
   _mrkstring = format ["wrgMarker_%1", _rndmrk];
   _Pos = position player;
   _marker = createMarker [_mrkstring, _Pos];
   _marker setMarkerColor "ColorRed";
   _marker setMarkerText "!AVISO! >>>>>> Roubo em progresso <<<<<< !AVISO!";
   _marker setMarkerType "mil_warning";
[1,"Um posto de gasolina está sendo roubado !!!!!!!!!!"] remoteExec ["life_fnc_broadcast",0]; // General broadcast alert to everyone, uncomment for testing, or if you want it anyway.

while{true} do
{
	uiSleep 2.00;
	_cP = _cP + 120;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["Roubo em progresso, fique dentro de 5 metros (%1%2)...",round(_cP * 100),"%"];

	if(_cP >= 1 OR !alive _robber) exitWith {};
	if(_robber distance _shop > 5.1) exitWith { };
	if((_robber getVariable["restrained",false])) exitWith {};
	if(life_istazed) exitWith {} ;
	if(life_interrupted) exitWith {};
};


	if!(alive _robber) exitWith { life_rip = false;call life_fnc_hudUpdate; };
	if(_robber distance _shop > 5.1) exitWith { deleteMarker _marker; hint "Voce está muito longe, o roubo foi cancelado!"; 5 cutText ["","PLAIN"]; life_rip = false; call life_fnc_hudUpdate;};
	if(_robber getVariable "restrained") exitWith { life_rip = false; hint "Voce foi algemado!"; 5 cutText ["","PLAIN"]; call life_fnc_hudUpdate;};
	if(life_istazed) exitWith { deleteMarker _marker; life_rip = false; hint "Voce foi imobilizado!"; 5 cutText ["","PLAIN"]; call life_fnc_hudUpdate;};

   5 cutText ["","PLAIN"];
   titleText[format["Voce recebeu $%1 por roubar, a policia esta a caminho corra!",[_kassa] call life_fnc_numberText],"PLAIN"];
   deleteMarker _marker;
   ADD(CASH,_kassa);
   [] call life_fnc_hudSetup;

   _rip = false;
	sleep (15 + random(15)); //Clerk in the store takes between 30-210 seconds before he manage to warn the police about the robbery.
	life_use_atm = true; // Robber can not use the ATM at this point.
	playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", player];
	if!(alive _robber) exitWith {};
[0,format["Police News: Uma loja acaba de ser roubada: a quantidade de dinheiro foi de $%3!",name _robber, _shop, [_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",west];
[0,format["Police News: Uma loja acaba de ser roubada: a quantidade de dinheiro foi de $%3!, se voce viu quem roubou, avise a policia!",name _robber, _shop, [_kassa] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",civilian];
[getPlayerUID _robber,name _robber,"15"] remoteExec ["life_fnc_wantedAdd",2];


uiSleep 1200;
_action = _shop addAction["Roubar posto",life_fnc_robShops];
_shop switchMove "";
