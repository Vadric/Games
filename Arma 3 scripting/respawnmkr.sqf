//execVM "respawnmkr.sqf"; in initserver
//while {true} do { //moves markers defines in editor to the position of vehicle every 10seconds
// "respawn_west" setmarkerpos getpos vehicle mru; 
//sleep 10; 
//};
if (isServer) then {
	[] spawn {
		while {TRUE} do {
			if (alive mru) then { 
				"respawn_west" setMarkerPos position vehicle mru;
			} else {
				"respawn_west" setMarkerPos getMarkerPos "base_foxtrot";
			};

			};
			sleep 3;
		};
	};
};