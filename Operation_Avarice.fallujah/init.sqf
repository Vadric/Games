call compile preprocessfilelinenumbers "src\ambientHeli.sqf";
call compile preprocessFileLineNumbers "src\Civilians\Init.sqf";
call compile preprocessFileLineNumbers "src\Traffic\Init.sqf";

//zp_heliDev = true;
setViewdistance 4000;

[] call zp_heliInit;


enableSaving [false, false];
enableTeamswitch false;
//  ---------- Viewdistance parameters

CHVD_allowNoGrass	= true;

CHVD_maxView_foot	= 1500;
CHVD_maxView_land	= 3000;
CHVD_maxView_air	= 7000;

CHVD_maxView		= CHVD_maxView_air;
CHVD_maxObj			= CHVD_maxView_air;