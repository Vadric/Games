// Run only on player ....
if (!hasInterface) exitWith {};

// Wait until player is initialized ....
waitUntil {!isNull player};

_player	= player;

//Squad member join
/*
_infoArray	= squadParams player;
_infoSquad	= _infoArray select 0;
_infoName	= _infoArray select 1;
_squad		= _infoSquad select 1;
_name		= _infoName select 1;

if (_squad == "Fox Squad") then
{
	GlobalHint = format["<t align='center' size='2.0' color='#ff5500'>%1<br/></t><t size='1.2' color='#33ccff'>%2</t><br/>has joined the server.</t><br/>", _squad, _name];
	hint parseText GlobalHint;
	publicVariable "GlobalHint";
};
*/

player setVariable ["QS_seated", false];

/*
_iRespawn = "RespawnTime" call BIS_fnc_getParamValue;
setPlayerRespawnTime _iRespawn;

_aimProc = [0.5, 0.88, 0.38, 0.16] spawn FF7_fnc_fixAimSway;

_ftgProc = [1, 0.05] spawn FF7_fnc_fixStamina;
*/

