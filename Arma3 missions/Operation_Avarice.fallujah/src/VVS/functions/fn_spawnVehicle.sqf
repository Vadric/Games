/*
	File: fn_spawnVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Spawns the selected vehicle, if a vehicle is already on the spawn point
	then it deletes the vehicle from the spawn point.
*/
disableSerialization;
private["_position","_direction","_className","_displayName","_spCheck","_cfgInfo"];
if(lnbCurSelRow 38101 == -1) exitWith {hint "You did not select a vehicle to spawn!"};

_className = lnbData[38101,[(lnbCurSelRow 38101),0]];
_displayName = lnbData[38101,[(lnbCurSelRow 38101),1]];
_position = getMarkerPos VVS_SP;
_direction = markerDir VVS_SP;

//Make sure the marker exists in a way.
if(isNil "_position") exitWith {hint "The spawn point marker doesn't exist?";};

//Check to make sure the spawn point doesn't have a vehicle on it, if it does then delete it.
_spCheck = nearestObjects[_position,["landVehicle","Air","Ship"],12] select 0;
if(!isNil "_spCheck") then {deleteVehicle _spCheck;};

_cfgInfo = [_className] call VVS_fnc_cfgInfo;

_vehicle = _className createVehicle _position;
_vehicle allowDamage false;
_vehicle setPos _position; //Make sure it gets set onto the position.
_vehicle setpos ((getpos _vehicle) vectorAdd [0,0,2.5]);
_vehicle setDir _direction; //Set the vehicles direction the same as the marker.

if((_cfgInfo select 4) == "Autonomous") then
{
	createVehicleCrew _vehicle;
};

if(VVS_Checkbox) then
{
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;

};
if(!VVS_Checkbox) then
{
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
	_vehicle addItemCargoGlobal ["ACE_EarPlugs", 10];
	_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
	_vehicle addItemCargoGlobal ["ACE_morphine", 30];
	_vehicle addItemCargoGlobal ["rhs_mag_30Rnd_556x45_Mk262_Stanag", 60];
	_vehicle addItemCargoGlobal ["ACE_bloodIV", 10];
	_vehicle addWeaponCargoGlobal ["rhs_weap_mk18_d", 2];
	_vehicle addItemCargoGlobal ["tf_anprc152", 2];
	_vehicle addItemCargoGlobal ["TRYK_Headphone_NV", 2];
	_vehicle addItemCargoGlobal ["APERSTripMine_Wire_Mag", 4];
	_vehicle addItemCargoGlobal ["ACE_IR_Strobe_Item", 10];
	_vehicle addItemCargoGlobal ["ACE_CableTie", 10];
	_vehicle addItemCargoGlobal ["ACE_Clacker", 1];
	_vehicle addItemCargoGlobal ["ACE_Flashlight_XL50", 2];
	_vehicle addItemCargoGlobal ["DemoCharge_Remote_Mag", 4];
	_vehicle addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 4];
	_vehicle addItemCargoGlobal ["ItemGPS", 2];
	_vehicle addItemCargoGlobal ["rhsusf_acc_eotech_xps3", 2];
	_vehicle addItemCargoGlobal ["B_IR_Grenade", 4];
	_vehicle addItemCargoGlobal ["ACE_HandFlare_Green", 4];
	_vehicle addItemCargoGlobal ["SmokeShell", 10];
	_vehicle addItemCargoGlobal ["SmokeShellBlue", 2];
	_vehicle addItemCargoGlobal ["SmokeShellGreen", 2];
	_vehicle addItemCargoGlobal ["bipod_01_F_snd", 2];
};
closeDialog 0;
sleep 2;
_vehicle allowDamage true;

