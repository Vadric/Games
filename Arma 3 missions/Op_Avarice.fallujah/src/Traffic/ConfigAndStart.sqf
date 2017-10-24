/* 
 * This file contains parameters to config and function call to start an instance of
 * traffic in the mission. The file is edited by the mission developer.
 *
 * See file Engima\Traffic\Documentation.txt for documentation and a full reference of 
 * how to customize and use Engima's Traffic.
 */
 
 private ["_parameters"];

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", [
	"LOP_TAK_Civ_Ural_open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"ivory_190e_taxi", 
	"ivory_190e", 
	"ivory_suburban_unmarked", 
	"LOP_IRAN_KAMAZ_Transport", 
	"LOP_IRAN_UAZ_Open", 
	"LOP_IRAN_Ural", 
	"C_Truck_02_fuel_F"]],
	["VEHICLES_COUNT", 4],
	["AREA_MARKER", "Drive_Area_1"],
	["HIDE_AREA_MARKER", true],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1200],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["DEBUG", false]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;

_parameters = [
	["SIDE", civilian],
	["VEHICLES", [
	"LOP_TAK_Civ_Ural_open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"ivory_190e_taxi", 
	"ivory_190e", 
	"ivory_suburban_unmarked", 
	"LOP_IRAN_KAMAZ_Transport", 
	"LOP_IRAN_UAZ_Open", 
	"LOP_IRAN_Ural", 
	"C_Truck_02_fuel_F"]],
	["VEHICLES_COUNT", 4],
	["AREA_MARKER", "Drive_Area_2"],
	["HIDE_AREA_MARKER", true],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1200],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["DEBUG", false]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;

_parameters = [
	["SIDE", civilian],
	["VEHICLES", [
	"LOP_TAK_Civ_Ural_open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"ivory_190e_taxi", 
	"ivory_190e", 
	"ivory_suburban_unmarked", 
	"LOP_IRAN_KAMAZ_Transport", 
	"LOP_IRAN_UAZ_Open", 
	"LOP_IRAN_Ural", 
	"C_Truck_02_fuel_F"]],
	["VEHICLES_COUNT", 4],
	["AREA_MARKER", "Drive_Area_3"],
	["HIDE_AREA_MARKER", true],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1200],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["DEBUG", false]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;

