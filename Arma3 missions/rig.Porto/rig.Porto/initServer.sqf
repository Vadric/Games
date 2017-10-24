// Begins server init


// TFAR setup

#include "\task_force_radio\functions\common.sqf";

if ((isServer) or (isDedicated)) then
{
	TF_give_microdagr_to_soldier = false;
	publicVariable "TF_give_microdagr_to_soldier";

	tf_give_personal_radio_to_regular_soldier = true;
	publicVariable "tf_give_personal_radio_to_regular_soldier";

	tf_no_auto_long_range_radio = true;
	publicVariable "tf_no_auto_long_range_radio";

	tf_same_sw_frequencies_for_side = true;
	publicVariable "tf_same_sw_frequencies_for_side";

	_settingsSwWest = false call TFAR_fnc_generateSwSettings;
	_settingsSwWest set [2, ["100","200","300","400","501","502","503","504"]];
	tf_freq_west = _settingsSwWest;
	publicVariable "tf_freq_west";
};

