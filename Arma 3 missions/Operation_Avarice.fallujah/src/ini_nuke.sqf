// by ALIAS
// nul = [nuke_obj,radius,damage_buildings_units,weather_effect,radiation,fallout] execvm "AlNuke\alias_nuke.sqf";


/*
* Script MP and SP compatible
** Impact on FPS can be remarcable depending on parameters, so use with care and test first

nuke_obj				- string, the name you gave to the object you want as origin for nuke
radius					- meters, area around marker where damage and radiation will be effective
damage_buildings_units	- boolean, if true the objects inside the radius will be destroyed
weather_effect			- boolean, if true the wheather will be affected for 300 seconds
radiation				- boolean, if true players will get damage from radiation inside defined radius
fallout					- boolean, if true screen effect will simulate fallout once the initial blast is gone
*/

/**** Example Usage

ex. 1- Will be only for show, no damage will be inflicted, no radiation, no fallout and weather effect
	nul = [nuke,0,false,false,false,false] execvm "AlNuke\alias_nuke.sqf";

ex. 2- All optional parameters enabled
	nul = [nuke,200,true,true,true,true] execvm "AlNuke\alias_nuke.sqf";
*/


nul = [nuke_me,400,true,true,true,true] execvm "src\AlNuke\alias_nuke.sqf";

