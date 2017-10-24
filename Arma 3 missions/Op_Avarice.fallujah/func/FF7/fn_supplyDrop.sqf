private ["_pos", "_posx", "_posy", "_posz", "_crate", "_crates", "_chute", "_chutes", "_smoke", "_smokes", "_light", "_lights", "_delay"];





_delay = "SupplyDropPeriod" call BIS_fnc_getParamValue;

FF7_Supplydrop = false;
publicVariable "FF7_Supplydrop";

_pos = (_this select 0);

_posx = (_pos select 0);
_posy = (_pos select 1);
_posz = (_pos select 2);


_chutes	= ["B_Parachute_02_F", "O_Parachute_02_F", "I_Parachute_02_F"];
_crates	= ["Box_IND_AmmoVeh_F", "Box_NATO_AmmoVeh_F", "Box_East_AmmoVeh_F"];
//_crates	= ["B_Truck_01_covered_F"];
_smokes	= ["SmokeShellRed", "SmokeShellOrange", "SmokeShellPurple"];
_lights	= ["Chemlight_green", "Chemlight_yellow", "Chemlight_red"];

_smoketype = (_smokes call BIS_fnc_selectRandom);
_lighttype = "Chemlight_yellow";


_content =
[
	//####make sure last thing has no comma at end####
	
	// Magazines
	//["30Rnd_45ACP_Mag_SMG_01",20],
	//["hlc_30Rnd_9x19_B_MP5",40],
	//["rhs_mag_30Rnd_556x45_Mk318_Stanag", 40],
	//["rhs_mag_30Rnd_556x45_Mk262_Stanag",40],
	["hlc_30rnd_556x45_SPR",120],
	//["hlc_30rnd_556x45_SPR_G36",40],
	//["hlc_30rnd_556x45_b_HK33",40],
	//["150Rnd_556x45_Drum_Mag_Tracer_F",10],
	//["rhs_200rnd_556x45_M_SAW", 10],
	//["200Rnd_556x45_Box_Red_F",10],
	//["200Rnd_65x39_cased_Box_Tracer",10],
	//["hlc_100Rnd_762x51_M_M60E4",10],
	//["150Rnd_762x54_Box_Tracer",10],
	//["rhsusf_100Rnd_762x51", 8],
	//["130Rnd_338_Mag",10],
	//["hlc_250Rnd_762x51_M_MG3",10],
	//["hlc_200Rnd_792x57_M_MG42",10],
	//["100Rnd_65x39_caseless_mag_Tracer",10],
	//["30Rnd_65x39_caseless_mag_Tracer",40],
	//["ff7_300BLK_30Rnd_TR",40],
	//["29rnd_300BLK_STANAG",40],
	//["20Rnd_762x51_Mag", 30],
	//["hlc_20rnd_762x51_barrier_G3",80],
	//["hlc_20Rnd_762x51_B_M14",40],
	//["ACE_20Rnd_762x51_M118LR_Mag", 6],
	//["ACE_20Rnd_762x51_M993_AP_Mag", 6],
	//["hlc_20Rnd_762x51_B_fal",10],
	//["rhsusf_20Rnd_762x51_m118_special_Mag", 6],
	//["rhsusf_20Rnd_762x51_m993_Mag", 6],
	//["hlc_5rnd_300WM_mk248_AWM",10],
	//["rhsusf_5Rnd_300winmag_xm2010", 10],
	//["rhsusf_5Rnd_762x51_m118_special_Mag", 10],
	//["rhsusf_5Rnd_762x51_m993_Mag", 10],
	//["rhsusf_10Rnd_762x51_m118_special_Mag", 10],
	//["rhsusf_10Rnd_762x51_m993_Mag", 10],
	//["10Rnd_338_Mag", 10],
	//["7Rnd_408_Mag", 10],
	//["rhsusf_mag_10Rnd_STD_50BMG_M33", 10],
	//["rhsusf_mag_10Rnd_STD_50BMG_mk211", 10],
	//["5Rnd_127x108_APDS_Mag",10],

	// Launchers
	//["rhs_weap_M136", 2],
	["rhs_weap_m72a7", 8],
	//["tf47_at4_heat",4],
	//["launch_NLAW_F", 1],
	//["launch_B_Titan_F",1], //Titan AA
    //["launch_B_Titan_short_F",1], //titan AT
	//["launch_RPG32_F",1], 
	//["tf47_m3maaws_optic",1], //Geustof
	//["rhs_weap_igla",1], //AA Stinger
	//["rhs_weap_fgm148",1], //JAVILIN
	
	// Rockets
	//["tf47_m3maaws_HE", 2],
	//["tf47_m3maaws_HEAT", 8],
	//["tf47_smaw_HEAA", 4],
	//["tf47_smaw_HEDP", 2],
	//["tf47_smaw_NE", 2],
	//["tf47_smaw_SR", 8],
	//["Titan_AA", 8],
	//["Titan_AP", 2],
	//["Titan_AT", 8],
	//["rhs_fgm148_magazine_AT", 2],
	//["rhs_mag_smaw_HEAA", 4],
	//["rhs_mag_smaw_HEDP", 2],
	//["rhs_fim92_mag", 2],
	//["RPG32_HE_F",2],
	//["RPG32_F",2],
	//["rhs_mag_9k38_rocket",8], //stinger rocket
	
	// Guns
	//["rhs_weap_hk416d10",1], //5.56 Rifle
	//["arifle_SPAR_03_blk_F",1], //7.62 Marksman
	//["hlc_rifle_M14_Bipod_Rail",1], //7.62 Marksman wood
	//["hlc_lmg_m249para",1], //5.56 AR
	//["hlc_lmg_mk48mod1",1], //7.62 AR
	//["hgun_Pistol_heavy_01_MRD_F",5], // Pistol
	
	
	
	// Explosives
	["DemoCharge_Remote_Mag", 30],
	//["ClaymoreDirectionalMine_Remote_Mag", 8],
	//["SLAMDirectionalMine_Wire_Mag", 4],
	//["SatchelCharge_Remote_Mag", 2],
	//["APERSTripMine_Wire_Mag",10],
	//["ATMine_Range_Mag",2],
	//["ACE_M26_Clacker",1],
	//["ACE_Clacker",1],
	//["ACE_DefusalKit",1],
	
	// Grenades
	//["HandGrenade", 8],
	//["MiniGrenade", 8],
	//["B_IR_Grenade", 4],
	//["rhs_mag_an_m8hc",39], //white smoke
	//["ACE_M84",4], //stun
	["SmokeShell", 20], //white smoke
	//["SmokeShellBlue", 12],
	//["SmokeShellGreen", 12],
	//["SmokeShellYellow", 12],

	// Throwables
	//["Chemlight_blue", 6],
	//["Chemlight_green", 6],
	//["Chemlight_yellow", 6],

	// 40mm
	//["3Rnd_Smoke_Grenade_shell",20],
	//["1Rnd_HE_Grenade_shell", 30],
	//["rhs_mag_M441_HE", 30],
	//["3Rnd_HE_Grenade_shell", 10],
	//["1Rnd_Smoke_Grenade_shell", 4],
	//["1Rnd_SmokeGreen_Grenade_shell", 4],
	//["1Rnd_SmokeBlue_Grenade_shell", 4],
	//["1Rnd_SmokeYellow_Grenade_shell", 4],
	//["UGL_FlareWhite_F", 2],
	//["UGL_FlareGreen_F", 2],
	//["UGL_FlareYellow_F", 2],
	//["UGL_FlareCIR_F", 4],
	//["ACE_HuntIR_M203", 4],

	// Misc.
	["ACE_CableTie", 40],
	["ACE_EarPlugs", 8],
	//["ACE_IR_Strobe_Item", 8],
	//["ACE_UAVBattery", 1],
	//["B_UavTerminal",1],
	//["ACE_NVG_Wide", 1],
	//["ItemMap",1],
	//["ACE_MapTools",2],
	//["ACE_RangeCard",5],
	//["ACE_RangeTable_82mm",5],
	//["ItemWatch",1],
	//["ItemCompass",1],
	//["ItemGPS",1],
	//["ACE_Flashlight_XL50",8],
	//["ACE_key_lockpick",2],
	//["tf_anprc152",1],
	//["tfw_whip",1],
	//["ACE_wirecutter",1],
	//["ACE_EntrenchingTool",1],
	//["ToolKit",1],
	
	
	//BINOS
	//["Binocular",1],
	//["Laserdesignator_02",1],
	//["ACE_VectorDay",1],
	//["Laserbatteries",1],
	
	// Clothes
	//["VSM_Multicam_BDU_Camo",1],
	//["VSM_LBT6094_MG_OGA_OD",1],
	//["rhs_beanie_green",1],
	//["H_HelmetSpecB_blk",1],
	
	// Scopes
	//["RKSL_optic_PMII_312",1],
	//["RKSL_optic_PMII_525",1],
	//["rhsusf_acc_eotech_xps3",36],
	//["optic_LRPS",1],
	//["optic_MRCO",1],
	//["rhsusf_acc_SpecterDR",5],
	//["bipod_01_F_blk",20],
	//["muzzle_snds_M",20], //5.56 suppressor
	//["muzzle_snds_B",8], //7.62 suppressor
	
	// Medical
	["ACE_fieldDressing", 80],
	["ACE_morphine", 60],
	["ACE_epinephrine", 30],
	//["ACE_bloodIV_250", 16],
	//["ACE_bloodIV_500", 20],
	["ACE_bloodIV", 30]


];

_chute = createVehicle ["B_Parachute_02_F", [_posx, _posy, _posz + 100], [], 0, "NONE"];

_crate = createVehicle [(selectRandom _crates), position _chute, [], 0, "NONE"];
_crate attachTo [_chute, [0, 0, -0.7]];
_crate allowdamage false;
_crate setVariable ["gc_persist", true];

_smoke = createVehicle [_smoketype, position _chute, [], 0, "NONE"];
_smoke attachTo [_chute, [0, 0, 0.45]];

if ((daytime > 19) || (daytime < 5)) then
{
	_light = createVehicle [_lighttype, position _chute, [], 0, "NONE"];
	_light attachTo [_chute, [0, 0, 0.45]];
};

clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

{
	_crate addItemCargoGlobal _x;
} forEach _content;

// Arsenal action
/*
[
	_crate,
	["arsenal", "DD1111", "Virtual Arsenal"] call FF7_fnc_formatAddAction,
	{["Open", true] spawn BIS_fnc_arsenal},
	[],
	100,
	true,
	true,
	"",
	"((_target distance _this) < 5)"
] remoteExec ["FF7_fnc_addGlobalAction", 0, true];

// Save gear action
[
	_crate,
	["saw", "11DD11", "Quicksave Gear"] call FF7_fnc_formatAddAction,
	{call FF7_fnc_saveGear},
	[],
	99,
	true,
	true,
	"",
	"((_target distance _this) < 5)"
] remoteExec ["FF7_fnc_addGlobalAction", 0, true];

[
	_crate,
	["loadgear", "4169E1", "Quickload Gear"] call FF7_fnc_formatAddAction,
	{call FF7_fnc_getGear},
	[],
	98,
	true,
	true,
	"",
	"((_target distance _this) < 5) && (!isNil 'FF7_Gear')"
] remoteExec ["FF7_fnc_addGlobalAction", 0, true];
*/

// Disable ACE cargo
_crate setVariable ["ace_cargo_size", -1];

// Disable ACE dragging
[_crate, false] call ace_dragging_fnc_setDraggable;

// Disable ACE carrying
[_crate, false] call ace_dragging_fnc_setCarryable;

// Disable ACE cargo loading
_crate setVariable ["ace_cargo_canLoad", 0];

_crate setVariable["gc_persist", true];

["SUPPLY", "Supply depot", "Supplycrate is in the air ...."] remoteExec ["FF7_fnc_globalHintStruct", 0];

waitUntil {(((position _crate) select 2) < 2) || (isNull _chute)};

detach _crate;

if !(isNil "_light") then
{
	detach _light;
};

detach _smoke;
//_crate allowdamage true;
sleep (_delay);

deleteVehicle _crate;

sleep (_delay/10);

//["<t align='center'><t size='2.0' color='#00EEB2'>Supply depot</t><br/>________________________________________<br/><br/><t size='1.3' color='#00B2EE'>Supplydrop is now available ....</t>", 10] remoteExec ["FF7_fnc_globalHint", 0];

["SUPPLY", "Supply depot", "Supplydrop now available ...."] remoteExec ["FF7_fnc_globalHintStruct", 0];

FF7_Supplydrop = true;
publicVariable "FF7_Supplydrop";
