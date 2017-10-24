params ["_unit"];

private ["_action", "_cond", "_type"];

_type = (typeOf _unit);




//----- Health check for medics -----
if (_type in ["I_Survivor_F"]) then
{
	_action =
	[
		"FF7_MedicalStatus",
		"Health status",
		"img\icon\icon-health.paa",
		{[_target] spawn FF7_fnc_aceMedicalStatus;},
		{([_player] call ace_medical_fnc_isMedic)}
	] call ace_interact_menu_fnc_createAction;

	["CAManBase", 0, ["ACE_Torso"], _action, true] call ace_interact_menu_fnc_addActionToClass;
};


//----- Common actions -----

_cond = {true};

// Settings parent
_action =
[
	"FF7_Settings",
	"Settings",
	"img\icon\icon-settings.paa",
	{},
	_cond
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;


// Viewdistance
_action =
[
	"FF7_Settings_View",
	"Viewdistance",
	"img\icon\icon-monitor.paa",
	{call CHVD_fnc_openDialog;},
	_cond
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions", "FF7_Settings"], _action] call ace_interact_menu_fnc_addActionToObject;

