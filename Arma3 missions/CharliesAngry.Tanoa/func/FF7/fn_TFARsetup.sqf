// TFAR general options

if ((isServer) || (isDedicated)) then
{
	#include "\task_force_radio\functions\common.sqf";

	// TFAR general options
	TF_give_microdagr_to_soldier = false;
	publicVariable "TF_give_microdagr_to_soldier";

	tf_give_personal_radio_to_regular_soldier = true;
	publicVariable "tf_give_personal_radio_to_regular_soldier";

	tf_no_auto_long_range_radio = true;
	publicVariable "tf_no_auto_long_range_radio";

	tf_radio_channel_name = "TaskForceRadio - Sandbox";
	publicVariable "tf_radio_channel_name";

	//Radio type
	
	tf_defaultWestPersonalRadio = "tf_anprc152";
	publicVariable "tf_defaultWestPersonalRadio";
	tf_defaultWestRiflemanRadio = "tf_anprc152";
	publicVariable "tf_defaultWestRiflemanRadio";

	// TFAR ShortWave frequencies
	tf_same_sw_frequencies_for_side = true;
	publicVariable "tf_same_sw_frequencies_for_side";

	_settingsSwWest = [false] call TFAR_fnc_generateSwSettings;
	_settingsSwWest set [2, ["100","200","300","400","500","50","75","150"]];

	tf_freq_west = _settingsSwWest;
	publicVariable "tf_freq_west";


	// TFAR LongRange frequencies
	tf_same_lr_frequencies_for_side = true;
	publicVariable "tf_same_lr_frequencies_for_side";

	_settingsLrWest = [false] call TFAR_fnc_generateLrSettings;
	_settingsLrWest set [2, ["50","75","30","40","50","60","70","80"]];

	tf_freq_west_lr = _settingsLrWest;
	publicVariable "tf_freq_west_lr";

	// TFAR underwater Transceiver settings
	tf_same_dd_frequencies_for_side = true;
	publicVariable "tf_same_dd_frequencies_for_side";

	tf_freq_west_dd = call TFAR_fnc_generateDDFreq;
	publicVariable "tf_freq_west_dd";
}
else
{
	TF_give_microdagr_to_soldier				= false;
	tf_give_personal_radio_to_regular_soldier	= true;
	tf_no_auto_long_range_radio					= true;
	tf_radio_channel_name						= "TaskForceRadio - Sandbox";
	tf_same_sw_frequencies_for_side				= true;
	tf_same_lr_frequencies_for_side				= true;
	tf_same_dd_frequencies_for_side				= true;
	tf_defaultWestPersonalRadio 				= "tf_anprc152";
	tf_defaultWestRiflemanRadio 				= "tf_anprc152";
};
 

