player setVariable ["QS_seated", false];

[[player, ""], "switchMove", true, false] spawn BIS_fnc_MP;

player removeAction StandUp;
