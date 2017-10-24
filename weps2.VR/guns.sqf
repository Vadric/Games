





_t2 = t2;
_t1 = t1;

_mags = [
"100Rnd_127x99_mag_Tracer_Green"

];

_weps = [
"HMG_M2"
];
sleep 2;
_gun = [_t1,_t2];
{
_x addeventhandler ["Fired",
	{
	if (
			(
				count ((_this select 0) magazinesTurret [0])
			)<8
		) 
	then {(_this select 0) addMagazineTurret ["100rnd_127x99_mag_Tracer_Yellow",[0]]};
	}];


//_var = (count ((_this select 0) magazinesTurret [0]));
//hint format["var = %1",_var];

_x removeWeaponTurret [((_x weaponsTurret [0])select 0),[0]];
_gunx = _x;
{_gunx addWeaponTurret [_x,[0]];}
foreach _weps;
{_gunx addMagazineTurret [_x,[0]];}
foreach _mags;

sleep 2;


} foreach _gun;


//_x addeventhandler ["Fired",{if ((count ((_this select 0) magazinesTurret [0]))<1) then {_this addWeaponTurret ["100Rnd_127x99_mag_Tracer_Green",[0]];}}];