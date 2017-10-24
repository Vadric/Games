

missionNamespace setVariable ["FF7_briefing", false];
missionNamespace setVariable ["FF7_caller", "No one"];
FF7_Supplydrop = true;
publicVariable "FF7_Supplydrop";
_null = [] execVM "src\repetitive_cleanup20.sqf";
call FF7_fnc_TFARsetup;
