/////       _nul = [this]execVM "src\turret.sqf";

if (isServer) then {
_turret = (_this select 0);
_current = _turret weaponsTurret [0];
_gun = (_current select 0);
{if (_gun in (_turret weaponsTurret _x)) exitWith {_turret removeWeaponTurret [_gun, _x]}} forEach (allTurrets _turret);
_turret addWeaponTurret ["LMG_Minigun_Transport",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_turret addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
}
/*
_turret = (_this select 0);
_current = _turret weaponsTurret [0];
_place = getPos _turret;
//_current animate ["HideTurret",1];
//deleteVehicle _turret;
Gun = "LMG_Minigun_Transport" createVehicle [_place select 0,_place select 1,1]; 
*/