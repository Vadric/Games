// [this]execVM "src\vad\vbied.sqf";
//nul = [this]execVM "src\vad\vbied.sqf";


VBIED = [];
_VBIED = (_this select 0);
VBIED = _VBIED;
publicVariable "VBIED";

_fence_1 = [];
_fence_1 = "Land_BackAlley_02_l_1m_F" createVehicle [0,0,0];
_fence_1  attachTo [_VBIED, [-1.02, 1.2, -.8],"damagehide" ];_fence_1 setVectorDirAndUp [[1,1.91069e-015,4.37114e-008],[0,1,-4.37114e-008]];
fence_1 = _fence_1;
publicVariable "fence_1";

_fence_2 = [];
_fence_2 = "Land_BackAlley_02_l_1m_F" createVehicle [0,0,0];
_fence_2  attachTo [_VBIED, [1.02, 1.2, -.8],"damagehide" ];_fence_2 setVectorDirAndUp [[-1,1.42203e-016,1.19249e-008],[0,-1,1.19249e-008]];
fence_2 = _fence_2;
publicVariable "fence_2";

_fence_3 = [];
_fence_3 = "PRAA_statics_woodenramp2m15" createVehicle [0,0,0];
_fence_3  attachTo [_VBIED, [0, 2, -.2],"damagehide" ];
fence_3 = _fence_3;
publicVariable "fence_3";

_fence_4 = [];
_fence_4 = "PRAA_statics_woodenramp1x2m90" createVehicle [0,0,0];
_fence_4  attachTo [_VBIED, [0, 3, -.95],"damagehide" ];
fence_4 = _fence_4;
publicVariable "fence_4";

_fence_5 = [];
_fence_5 = "PRAA_statics_woodenramp2x3m90" createVehicle [0,0,0];
_fence_5  attachTo [_VBIED, [0, 0, 0.52],"damagehide" ];_fence_5 setVectorDirAndUp [[0,1.19249e-008,1],[-1,4.37114e-008,-5.21253e-016]];
fence_5 = _fence_5;
publicVariable "fence_5";

_fence_6 = [];
_fence_6 = "PRAA_statics_woodenramp2x3m90" createVehicle [0,0,0];
_fence_6  attachTo [_VBIED, [1, -1.3, -.5],"damagehide" ];_fence_6 setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
fence_6 = _fence_6;
publicVariable "fence_6";

_fence_7 = [];
_fence_7 = "PRAA_statics_woodenramp2x3m90" createVehicle [0,0,0];
_fence_7  attachTo [_VBIED, [-1, -1.3, -.5],"damagehide" ];_fence_7 setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
fence_7 = _fence_7;
publicVariable "fence_7";

_fence_8 = [];
_fence_8 = "PRAA_statics_woodenramp1x2m90" createVehicle [0,0,0];
_fence_8  attachTo [VBIED, [0, -2.85, -.95],"damagehide" ];
fence_8 = _fence_8;
publicVariable "fence_8";

_fence_9 = [];
_fence_9 = "PRAA_statics_woodenramp1x2m90" createVehicle [0,0,0];
_fence_9  attachTo [VBIED, [0, -2.85, 0],"damagehide" ];
fence_9 = _fence_9;
publicVariable "fence_9";

_fences = [fence_1, fence_2, fence_3, fence_4, fence_5, fence_6, fence_7, fence_8, fence_9];
fences = _fences;

players = playableunits;
publicVariable "players";
//create the trigger
_trg = createTrigger ["EmptyDetector", getPos VBIED];
_trg setTriggerArea [5, 5, 0, false];
_trg setTriggerActivation ["WEST", "PRESENT", false];
_trg setTriggerStatements ["((damage VBIED) > .01) or this", "bomb='Bo_GBU12_LGB' createVehicle (getPos VBIED);VBIED setDamage 100;{deleteVehicle _x} foreach fences;", ""];
_trg attachTo [vbied,[0,0,0]];
