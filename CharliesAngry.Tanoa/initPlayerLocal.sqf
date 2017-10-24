if (!hasInterface) exitWith {};
waitUntil {!isNull player};
_player	= player;
[_player] call FF7_fnc_aceActions;
call FF7_fnc_TFARsetup;
_null = [] execVM "diary.sqf";	