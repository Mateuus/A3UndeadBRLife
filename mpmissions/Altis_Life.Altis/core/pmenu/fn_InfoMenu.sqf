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
<t color='#0099ff'>Name:</t> [US] The Trailerpark Life<br/>
<t color='#0099ff'>IP:</t> 66.150.214.206<br/>
<t color='#0099ff'>Port:</t> 2308<br/><br/>
<t color='#0099ff'>Direct links:</t><br/>
<a href='tpt.ts.nfoservers.com:7100'>Teamspeak: tpt.ts.nfoservers.com:7100</a><br/>
<a href='http://www.thetrailerpark.us/'>Homepage: thetrailerpark.us/</a><br/><br/>
Restart<br/>
<t color='#0099ff'>0:00, 3:00, 6:00, 9:00, 12:00</t>
";
};

//Regeln
if(_index isEqualTo 2) exitWith {"Our complete rules are available on our website. To go directly to the rules<br/><a color='#0099ff' href='http://tpt.site.nfoservers.com/forumdisplay.php?fid=6'>Click Here</a>"};

//Steuerung
if(_index isEqualTo 3) exitWith {
"<t color='#0099ff'>Y</t> Player Menu<br/>
<t color='#0099ff'>U</t> Unlock and Lock Houses<br/>
<t color='#0099ff'>T</t> Vehicle Virtual Inventory<br/>
<t color='#0099ff'>TAB</t> Wave<br/>
<t color='#0099ff'>Windows Key</t> Basic Interaction Menu<br/>
<t color='#0099ff'>Shift+G</t> Knock out player<br/>
<t color='#0099ff'>Shift+Insert</t> Lower sound<br/>
<t color='#0099ff'>Shift+B</t> Surrender<br/>
<t color='#0099ff'>Shift+R</t> Restrain";

};

//Lizensen
if(_index isEqualTo 4) exitWith {
"";
};

if(_index isEqualTo 5) exitWith {
"Welcome to The Trailerpark, Gaining money should be relatively easy.<br/><br/>
- You will start off with 1 million, so buying basic vehicles, gear, etc is quite easy to do at first<br/>
- Open your map to see what kinds of jobs and methods of making money you can take advantage of<br/>
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
