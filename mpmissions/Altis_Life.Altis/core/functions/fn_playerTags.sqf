#include "..\..\script_macros.hpp"
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Adds the tags above other players heads when close and have visible range.
*/
if (!life_settings_tagson) exitWith {};
private["_ui","_units","_masks"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};


_ui = GVAR_UINS ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = GVAR_UINS ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];
SUB(_units,[player]);

_masks = LIFE_SETTINGS(getArray,"clothing_masks");

{
	private "_text";
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && alive _x && {!isNil {_x GVAR "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(!((headgear _x) in _masks OR (goggles _x) in _masks OR (uniform _x) in _masks)) then {
			if(count _sPos > 1 && {_distance < 15}) then {
				_text = switch (true) do {
					case (_x in (units grpPlayer) && playerSide isEqualTo civilian): {format["<t color='#00FF00'>%1</t>",(_x GVAR ["realname",name _x])];};
					case (side _x isEqualTo west && {!isNil {_x GVAR "rank"}}): {format["<img image='%1' size='1'></img> %2",switch ((_x GVAR "rank")) do {
						case 2: {"icons\ranks\02Patr.paa"};
						case 3: {"icons\ranks\03Sgt.paa"};
						case 4: {"icons\ranks\04lt.paa"};
						case 5: {"icons\ranks\05Cpt.paa"};
						case 6: {"icons\ranks\06DptCom.paa"};
						case 7: {"icons\ranks\07Com.paa"};
						default {"icons\ranks\01Cadet.paa"};
						},_x GVAR ["realname",name _x]]};
					case (side _x isEqualTo independent): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x GVAR ["realname",name _x]]};
					default {
						if(!isNil {(group _x) GVAR "gang_name"}) then {
							format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x GVAR ["realname",name _x],(group _x) GVAR ["gang_name",""]];
						} else {
							_x GVAR ["realname",name _x];
						};
					};
				};

				_idc ctrlSetStructuredText parseText _text;
				_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
				_idc ctrlSetScale scale;
				_idc ctrlSetFade 0;
				_idc ctrlCommit 0;
				_idc ctrlShow true;
			} else {
				_idc ctrlShow false;
			};
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} forEach _units;
