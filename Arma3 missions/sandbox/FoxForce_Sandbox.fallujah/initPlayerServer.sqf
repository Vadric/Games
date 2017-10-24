private "_player";
_player = (_this select 0);
[_player] call FF7_fnc_addToCurator;
missionNamespace setVariable ["FF7_briefing", false];
missionNamespace setVariable ["FF7_caller", "No one"];
