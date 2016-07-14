#include "..\..\script_macros.hpp"
/*
    File: fn_gangarea.sqf
    Author: Mateus "Mateuus" Rodrigues

    Description: #145984
    Uma área para a gangue vip, caso outro jogador que não esteja nessa gang irá morrer!
*/

private ["_eh1","_inArea","_zone1","_zone1dis","_dis" ];

////////////////////////GANGZONE VIP////////////////////////////////////
_zone1 = getMarkerPos "safezone_gang_2"; // MARKERS FOR GANGZONE
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
				if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
				{
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage false;
					safezone = true;
				};
				if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
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
			  if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
			  {
				if (FETCH_CONST(life_gangdonorid) == 2) then
				{
					//Acesso Permitido
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage false;
					safezone = true;
				}
				else
				{
					//Acesso Negado
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Saia Imediatamente<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruText];
					
					//Espera 5 segundos para enviar o segundo aviso!
					sleep 5;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Final!!!<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_intruAvisoText];
					
					//Espera 10 segundos para Mata o Player
					sleep 10;
					
					//verificar se ele ainda está dentro da aréa
					if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
					{
						player removeEventHandler ["fired", _eh1];
						_inArea = false;
						hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
						player allowDamage true;
						safezone = false;
					}
					else
					{
						hint "Você Morreu!!! falta de aviso não foi!!!";
						player setDamage 1;
					};
					
					player allowDamage true;
					safezone = false;
				};
			  };
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
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player allowDamage false;
					safezone = true;
					imAuto = false;
				};
				if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona Segura<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					player allowDamage true;
					safezone = false;
					imAuto = true;
				};

			};
		};
	};
	sleep 3;
};
