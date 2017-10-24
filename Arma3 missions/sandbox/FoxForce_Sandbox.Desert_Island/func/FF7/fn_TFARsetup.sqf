// TFAR general options
if (isClass(configFile >> "CfgPatches" >> "tfar_core")) exitWith {
	
	["TFAR_giveLongRangeRadioToGroupLeaders", false, true, "server"] call CBA_settings_fnc_set;
	["TFAR_givePersonalRadioToRegularSoldier", true, true, "server"] call CBA_settings_fnc_set;
	["TFAR_giveMicroDagrToSoldier", false, true, "server"] call CBA_settings_fnc_set;
	["TFAR_SameSRFrequenciesForSide", true, true, "server"] call CBA_settings_fnc_set;
	["TFAR_SameLRFrequenciesForSide", true, true, "server"] call CBA_settings_fnc_set;
	["TFAR_fullDuplex", false, true, "server"] call CBA_settings_fnc_set;
	["TFAR_enableIntercom", true, true, "server"] call CBA_settings_fnc_set;
	["TFAR_objectInterceptionEnabled", false, true, "server"] call CBA_settings_fnc_set;
	["TFAR_PosUpdateMode", 0, true, "server"] call CBA_settings_fnc_set;
	TFAR_DefaultRadio_Personal_West = "tfar_anprc152";
	TFAR_DefaultRadio_Rifleman_West = "tfar_anprc152";
	tf_radio_channel_name			= "TaskForceRadio - Sandbox";
	_defaultFrequencies_sr_west = ["100","200","300","400","500","50","75","150"];
	_defaultFrequencies_lr_west = ["50","75","30","40","50","60","70","80"];

	_settingsSRWest = false call TFAR_fnc_generateSRSettings;
	_settingsLrWest = false call TFAR_fnc_generateLrSettings;
	
	private _west_code = "_bluefor";

	_settingsSRWest set [2, _defaultFrequencies_sr_west];
	_settingsSRWest set [4, _west_code];
	TFAR_freq_sr_west = _settingsSRWest;
	
	_settingsLrWest set [2, _defaultFrequencies_lr_west];
	_settingsLrWest set [4, _west_code];
	TFAR_freq_lr_west = _settingsLrWest;
	
	missionNamespace setVariable ["tf_west_radio_code",_west_code];
	true;
};
if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) exitWith {
	call compile preprocessFileLineNumbers "\task_force_radio\functions\common.sqf";
	if (!isDedicated) then
	{
		{waitUntil {!isNull player && isPlayer player};};
		sleep 5;
		[(call TFAR_fnc_activeSwRadio), 1, "100"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 2, "200"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 3, "300"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 4, "400"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 5, "500"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 6, "50"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 7, "75"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activeSwRadio), 8, "150"] call TFAR_fnc_SetChannelFrequency;
		if (backpack player == "tfw_ilbe_coy") then {
			[(call TFAR_fnc_activeLrRadio), 1, "50"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 2, "75"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 3, "30"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 4, "40"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 5, "50"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 6, "60"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 7, "70"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 8, "80"] call TFAR_fnc_SetChannelFrequency;
			[(call TFAR_fnc_activeLrRadio), 9, "85"] call TFAR_fnc_SetChannelFrequency;
		};
	};
	["TF_no_auto_long_range_radio", true, true, "server"] call CBA_settings_fnc_set;
	["TF_give_personal_radio_to_regular_soldier", true, true, "server"] call CBA_settings_fnc_set;
	["TF_give_microdagr_to_soldier", false, true, "server"] call CBA_settings_fnc_set;
	["TF_same_sw_frequencies_for_side", true, true, "server"] call CBA_settings_fnc_set;
	["TF_same_lr_frequencies_for_side", true, true, "server"] call CBA_settings_fnc_set;
	TF_give_microdagr_to_soldier 				= false;
	tf_give_personal_radio_to_regular_soldier   = true;
	tf_no_auto_long_range_radio				    = true;
	tf_radio_channel_name					    = "TaskForceRadio - Sandbox";
	tf_defaultWestPersonalRadio 				= "tf_anprc152";
	tf_defaultWestRiflemanRadio 				= "tf_anprc152";	
	tf_same_sw_frequencies_for_side 			= true;	
	tf_same_lr_frequencies_for_side 			= true;		
	_settingsSwWest = [false] call TFAR_fnc_generateSwSettings;
	_settingsSwWest set [2, ["100","200","300","400","500","50","75","150"]];							 
	tf_freq_west = _settingsSwWest;
	_settingsLrWest = [false] call TFAR_fnc_generateLrSettings;
	_settingsLrWest set [2, ["50","75","30","40","50","60","70","80"]];
	tf_freq_west_lr = _settingsLrWest;	
	
	publicVariable "tf_freq_west_lr";
	publicVariable "tf_freq_west";
	publicVariable "tf_same_lr_frequencies_for_side";	
	publicVariable "tf_same_sw_frequencies_for_side";
	publicVariable "tf_defaultWestRiflemanRadio";
	publicVariable "tf_defaultWestPersonalRadio";
	publicVariable "tf_radio_channel_name";
	publicVariable "tf_no_auto_long_range_radio";
	publicVariable "tf_give_personal_radio_to_regular_soldier";
	publicVariable "TF_give_microdagr_to_soldier";
};