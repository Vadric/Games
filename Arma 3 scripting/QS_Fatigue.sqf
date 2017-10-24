QS_fnc_fatigue = compileFinal "
	private ['_10mX','_20mX','_30mX','_40mX','_50mX','_60mX','_t','_s','_p','_exit'];	
	_s = _this select 0;
	_p = _this select 1;
	_exit = FALSE;
	player setVariable ['QS_fatigue',1,FALSE];
	player setVariable ['QS_playerFatigued',FALSE,FALSE];
			_10mX = 0.975;	
			_20mX = 0.9755;
			_30mX = 0.98;
			_40mX = 0.985;
			_50mX = 0.995;
			_60mX = 1;
	if (_exit) exitWith {};
	while {TRUE} do {
		if (!isNull player) then {
			if (alive player) then {
				if ((getFatigue player) >= 0.1) then {
					if ((getFatigue player) >= 0.2) then {
						if ((getFatigue player) >= 0.3) then {
							if ((getFatigue player) >= 0.4) then {
								if ((getFatigue player) >= 0.5) then {
									if ((getFatigue player) >= 0.61 && ((getFatigue player) <= 0.9)) then {
										if (!(player getVariable 'QS_playerFatigued')) then {};
										player setFatigue ((getFatigue player) * _60mX);
									} else {
										player setFatigue ((getFatigue player) * _50mX);
									};
								} else {
									player setFatigue ((getFatigue player) * _40mX);
								};
							} else {
								player setFatigue ((getFatigue player) * _30mX);
							};
						} else {
							player setFatigue ((getFatigue player) * _20mX);
						};
					} else {
						player setFatigue ((getFatigue player) * _10mX);
					};
				};
			};
		};
		uiSleep 0.25;
	};
";
QS_EH_client_Fatigue = player addEventHandler ['Respawn',{player setVariable ['QS_playerFatigued',FALSE,FALSE];}];
[FALSE,FALSE] spawn QS_fnc_fatigue;