private ["_eh1","_inArea","_zone1","_zone1dis","_dis"];

////////////////////////GANGZONE VIP 1/////////////////////////////////
_zone1 = getMarkerPos "safezone_gang_1"; // MARKERS FOR GANGZONE
_zone1dis = 70;
///////////////////////////////////////////////////////////////////////



_dis = 350;
_inArea = false;

_enterText = "Você está entrando em uma zona de gang!";
_leaveText = "Você está deixando um zona de gang!";

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
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player setDamage 1; //Mata o Player ao entrar nessa Aréa
				};
				if (((_zone1 distance player > _zone1dis)) && (_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
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
					_eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
					_inArea = true;
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					player setDamage 1; //Mata o Player ao entrar nessa Aréa
				};
				if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
				{
					player removeEventHandler ["fired", _eh1];
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
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
					hint parseText format["<t color='#00ff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_enterText];
					imAuto = false;
				};
				if (((_zone1 distance player < _zone1dis)) && (!_inArea)) then
				{
					_inArea = false;
					hint parseText format["<t color='#ffff00'><t size='2'><t align='center'>Aviso Zona de Gangue<br/><br/><t align='center'><t size='1'><t color='#ffffff'>%1",_leaveText];
					imAuto = true;
				};

			};
		};
	};
	sleep 3;
};
