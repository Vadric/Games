if (!hasInterface) exitWith {};
waitUntil {!isNull player};
_player	= player;
[_player] call FF7_fnc_aceActions;
call FF7_fnc_TFARsetup;
player addEventHandler ["GetInMan", {[_this select 2] execVM "src\kp_fuel_consumption.sqf";}];
_null = [] execVM "diary.sqf";	