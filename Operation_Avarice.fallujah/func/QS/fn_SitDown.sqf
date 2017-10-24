private ["_chair", "_unit", "_stance", "_stances"];

_chair = _this select 0;
_unit = _this select 1;

_stances = ["HubSittingChairA_idle1", "HubSittingChairB_idle1", "HubSittingChairC_idle1", "HubSittingChairUA_idle1", "HubSittingChairUB_idle1", "HubSittingChairUC_idle1"];

_stance = _stances call BIS_fnc_selectRandom;
_chairx = [getPos _chair select 0, getPos _chair select 1, ((getPos _chair select 2)+2)];
_unit setPos _chairx;
_unit setDir ((getDir _chair) - 180);

[[_unit, _stance], "switchMove", true, false] spawn BIS_fnc_MP;

player setVariable ["QS_seated", true];

StandUp = _unit addaction [
	"Stand Up",
	QS_fnc_StandUp,
	[],
	10,
	true,
	true,
	"",
	"(player getVariable 'QS_seated')"
];

//_unit setPos [getPos _unit select 0, getPos _unit select 1, ((getPos _unit select 2)+2)];
