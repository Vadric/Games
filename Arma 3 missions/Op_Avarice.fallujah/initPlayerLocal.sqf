// Run only on player ....
if (!hasInterface) exitWith {};

// Wait until player is initialized ....
waitUntil {!isNull player};

_player	= player;


player setVariable ["QS_seated", false];


[_player] call FF7_fnc_aceActions;
call FF7_fnc_TFARsetup;
_null = [] execVM "diary.sqf";	