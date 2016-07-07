/*
    File: fn_gangarea.sqf
    Author: Mateus "Mateuus" Rodrigues

    Description:
    Uma área para a gangue vip, caso outro jogador que não esteja nessa gang irá morrer!
*/

//Chama o Scripts Macros para poder fazer a buscar no banco de dados!!!!
#include "..\..\script_macros.hpp"

private ["_eh1","_inArea","_zone1","_zone1dis","_dis"];

////////////////////////GANGZONE VIP////////////////////////////////////
_zone1 = getMarkerPos "safezone_gang_1"; // MARKERS FOR GANGZONE
_zone1dis = 70;
///////////////////////////////////////////////////////////////////////



_dis = 350;
_inArea = false;

_enterText = "Você está entrando em uma zona de gang vip!";
_leaveText = "Você está deixando um zona de gang vip!";

_intruText = "Você não tem permissão para está nessa zona, por favor sair imediatamente!";
_intruAvisoText = "Você tem 10 segudos para sair dessa zona, caso ao contrário você irá morrer!";

switch (playerSide) do
{
	case west:
	{
		while {true} do
		{
			if (alive player) then
			{
				//ENTRA NA ZONA DA GANG
				if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
				{
					_inArea = true;
					
					//Verifica se faz parte da gang
					if (FETCH_CONST(life_gangdonorid) >= 1) then
					{
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
						player allowDamage false;
						safezone = true;
					}
					else
					{
						//Avisa que o player não tem permissão de está nessa área
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Saia Imediatamente<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruText];
						//Espera 5 segundos para enviar o segundo aviso!
						sleep 5;
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Final!!!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruAvisoText];
						//Espera 10 segundos para Mata o Player
						sleep 10;
						//Mata o Player
					    player setDamage 1; 
						//desativa a área ao morrer
					   _inArea = false; 	
					};
				};
				
				//SAIR DA ZONA DA GANG
				if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					safezone = false;
				};

			};
		};
	};

	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{
				//ENTRA NA ZONA DA GANG
				if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
				{		
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					
					//Verifica se faz parte da gang
					if (FETCH_CONST(life_gangdonorid) >= 1) then
					{
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
						player allowDamage false;
						safezone = true;
					}
					else
					{
						//Avisa que o player não tem permissão de está nessa área
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Saia Imediatamente<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruText];
						//Espera 5 segundos para enviar o segundo aviso!
						sleep 5;
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Final!!!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruAvisoText];
						//Espera 10 segundos para Mata o Player
						sleep 10;
						//verificar se ele ainda está dentro da aréa
					  if(_inArea = true) then{
						 //Mata o Player
						  player setDamage 1; 
						 //Tira Player da Aréa se morrer
						  _inArea = false;
					  };	
					};
					
					
				};
				//SAIR DA ZONA DA GANG
				if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
				{
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					safezone = false;
				};
			};
		};
	};

	case independent:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
				{
					_inArea = true;
					
					//Verifica se faz parte da gang
					if (FETCH_CONST(life_gangdonorid) >= 1) then
					{
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
						player allowDamage false;
						safezone = true;
					}
					else
					{
						//Avisa que o player não tem permissão de está nessa área
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Saia Imediatamente<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruText];
						//Espera 5 segundos para enviar o segundo aviso!
						sleep 5;
						hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Final!!!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruAvisoText];
						//Espera 10 segundos para Mata o Player
						sleep 10;
						//Mata o Player
					    player setDamage 1; 
						//desativa a área ao morrer
					   _inArea = false; 	
					};
					
					imAuto = false;
				};
				//SAIR DA ZONA DA GANG
				if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					safezone = false;
					imAuto = true;
				};

			};
		};
	};
	sleep 3;
};
