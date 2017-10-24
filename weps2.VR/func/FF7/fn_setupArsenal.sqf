private ["_box"];

_box = (_this select 0);

// Clear inventory
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;

// Remove all actions
removeAllActions _box;

// Add Arsenal and Gear options
_null = _box addAction
[
	["arsenal", "DD1111", "Virtual Arsenal"] call FF7_fnc_formatAddAction,
	{["Open", true] spawn BIS_fnc_arsenal},
	[],
	100,
	true,
	true,
	"",
	"((_target distance _this) < 5)"
];
