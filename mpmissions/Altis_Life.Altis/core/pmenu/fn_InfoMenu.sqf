private ["_start"];
_start = [_this,0,0,[0]] call BIS_fnc_param;

//InfoMenus
if(_start isEqualTo 0) exitWith {
disableSerialization;
createDialog "infoMenu";
switch(playerSide) do {case west:{ctrlShow[2011,false];ctrlShow[2016,false];};case independent:{ctrlShow[2011,false];ctrlShow[2016,false];};};

_InfoMenus = ((findDisplay 41500) displayCtrl 2300);
lbClear _InfoMenus;

_InfoMenus lbAdd "General";lbSetColor[2300,(lbSize _InfoMenus)-1,[1,0.694,0.141,1]];
_InfoMenus lbAdd "Server Information"; lbSetValue [2300, (lbSize _InfoMenus)-1, 1];
_InfoMenus lbAdd "Rules"; lbSetValue [2300, (lbSize _InfoMenus)-1, 2];
_InfoMenus lbAdd "Controls"; lbSetValue [2300, (lbSize _InfoMenus)-1, 3];
_InfoMenus lbAdd "Stock Prices"; lbSetValue [2300, (lbSize _InfoMenus)-1, 4];
_InfoMenus lbAdd "Getting Started"; lbSetValue [2300, (lbSize _InfoMenus)-1, 5];
_InfoMenus lbAdd "Changelog"; lbSetValue [2300, (lbSize _InfoMenus)-1, 6];lbSetColor[2300,(lbSize _InfoMenus)-1,[1,0,0.082,1]];

_InfoMenus lbSetCurSel 1;
};

//Infos
if(_start isEqualTo 1) exitWith {
private ["_index","_infoText"];
_index = ((findDisplay 41500) displayCtrl 2300) lbValue (lbCurSel 2300);
((findDisplay 41500) displayCtrl 2301) ctrlSetText lbText [2300, lbCurSel 2300];

if(_index isEqualTo 0) exitWith {};


_infoText = call {
//Server
if(_index isEqualTo 1) exitWith {
"Atlis Life Server<br/>
<t color='#0099ff'>Name:</t> [BR] Altis Life Undead Brasil Servidores<br/>
<t color='#0099ff'>IP:</t>149.56.189.188<br/>
<t color='#0099ff'>Port:</t>2302<br/><br/>
<t color='#0099ff'>Direct links:</t><br/>
<a href='ts3server://ts3.undeadbrasil.com/?port=9987&nickname=UndeadBrasil'>Teamspeak 3: ts3.undeadbrasil.com</a><br/>
<a href='http://www.undeadbrasil.com/forum/'>Forum: undeadbrasil.com/forum</a><br/><br/>
Restart<br/>
<t color='#0099ff'>0:00, 3:00, 6:00, 9:00, 12:00</t>
";
};

//Regeln
if(_index isEqualTo 2) exitWith {"Nossas regras completas estão disponíveis no nosso forum. Para ir directamente para as regras<br/><a color='#0099ff' href='http://www.undeadbrasil.com/forum/index.php?/forum/4-nossos-servidores/'>Click Aqui</a>"};

//Steuerung
if(_index isEqualTo 3) exitWith {
"<t color='#0099ff'>Y</t> Player Menu<br/>
<t color='#0099ff'>U</t> Desbloquear e abrir casas e veiculos <br/>
<t color='#0099ff'>T</t> Carro Inventario Virtual<br/>
<t color='#0099ff'>TAB</t> Comprimento<br/>
<t color='#0099ff'>Windows Key</t> Menu de Interação básica<br/>
<t color='#0099ff'>Shift+G</t> Nocauteia o Jogador<br/>
<t color='#0099ff'>Shift+Insert</t> Som mais baixo<br/>
<t color='#0099ff'>Shift+B</t> Rendição<br/>
<t color='#0099ff'>Shift+R</t> Prender o Jogador";

};

//Lizensen
if(_index isEqualTo 4) exitWith {
"";
};

if(_index isEqualTo 5) exitWith {
"Bem-vindo ao Undead Brasil, Ganhar dinheiro deve ser relativamente fácil.<br/><br/>
- Você vai começar com 10 mil, por isso, a compra de veículos básicos, a engrenagem, etc é muito fácil de fazer em primeiro lugar<br/>
- Abra o seu mapa para ver que tipos de postos de trabalho e métodos de fazer dinheiro que você pode tirar vantagem de<br/>
- Use your seatbelt while driving, otherwise if you crash you will severely injure yourself<br/>
- Your player position, health, hunger and thirst all save on relog/restart<br/>
- When a lockdown is called in Kavala, hide in your houses or risk being detained<br/>
- Police are not a repair or taxi system, do not ask them for anything regarding this
";
};

if(_index isEqualTo 6) exitWith {
"<t size='1.2px' align='center' color='#0099ff'>Please report bugs to us</t><br/>
<t align='center' color='#0099ff'>It improves everyones gameplay</t><br/><br/>

<t align='center'><t size='1.7px' align='center' color='#FF0000'>Development</t><br/>
Slot Machine<br/>
Blindfolds<br/>
GPS Trackers<br/>
Alchohol<br/>
Working added respawn timer for requesting medics<br/>
Car alarm, eating and drinking sounds<br/>
Supporter shops are in, but not enabled until authorized<br/>
Working out bugs<br/>
Getting Headless clients working<br/>
General optimization<br/><br/>

<t align='center'><t size='1.7px' align='center' color='#FF0000'>Suggestions</t><br/>
We love to hear your suggestions for our server, please join our teamspeak to let us know what you would like to see added next";
};

};

//Add Infos
((findDisplay 41500) displayCtrl 2304) ctrlSetStructuredText parseText ("<t size='0.8'>" + _infoText);
};
[] spawn life_fnc_InfoMenu;
