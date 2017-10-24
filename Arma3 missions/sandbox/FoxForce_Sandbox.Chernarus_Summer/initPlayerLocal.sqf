if (!hasInterface) exitWith {};
waitUntil {!isNull player};
_player	= player;
[_player] call FF7_fnc_aceActions;
player setVariable ["QS_seated", false];
call FF7_fnc_TFARsetup;