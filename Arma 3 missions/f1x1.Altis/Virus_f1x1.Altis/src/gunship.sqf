// nul = [this]execVM "gunship.sqf";
if (isServer) then {
_tank1 = (_this select 0);

_tank1 addEventHandler ["HandleDamage", {false}];

_fen1 = createSimpleObject ["Land_BackAlley_01_l_1m_F",[0,0,0]];
_fen1 attachTo [_tank1, [0, 3.51, .2] ];_fen1 setVectorDirAndUp [[5.43337e-009,-0.9,-0.455633],[1,0,1.19249e-008]];

_aa1 = createSimpleObject ["Land_CrashBarrier_01_end_L_F",[0,0,0]];
_aa1 attachTo [_tank1, [1.35, 3.6, 0.05] ];_aa1 setVectorDirAndUp [[-0.39,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_ab1 = createSimpleObject ["Land_CrashBarrier_01_end_R_F",[0,0,0]];
_ab1 attachTo [_tank1, [-1.35, 3.6, 0.05] ];_ab1 setVectorDirAndUp [[0.390731,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_aa2 = createSimpleObject ["Land_CrashBarrier_01_end_L_F",[0,0,0]];
_aa2 attachTo [_tank1, [1.35, 3.6003, -.24] ];_aa2 setVectorDirAndUp [[-0.39,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_ab2 = createSimpleObject ["Land_CrashBarrier_01_end_R_F",[0,0,0]];
_ab2 attachTo [_tank1, [-1.35, 3.6003, -.24] ];_ab2 setVectorDirAndUp [[0.390731,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_aa3 = createSimpleObject ["Land_CrashBarrier_01_end_L_F",[0,0,0]];
_aa3 attachTo [_tank1, [1.35, 3.6006, -.78] ];_aa3 setVectorDirAndUp [[-0.39,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_ab3 = createSimpleObject ["Land_CrashBarrier_01_end_R_F",[0,0,0]];
_ab3 attachTo [_tank1, [-1.35, 3.6006, -.78] ];_ab3 setVectorDirAndUp [[0.390731,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_aa4 = createSimpleObject ["Land_CrashBarrier_01_end_L_F",[0,0,0]];
_aa4 attachTo [_tank1, [1.35, 3.6009, -1] ];_aa4 setVectorDirAndUp [[-0.39,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];
_ab4 = createSimpleObject ["Land_CrashBarrier_01_end_R_F",[0,0,0]];
_ab4 attachTo [_tank1, [-1.35, 3.6009, -1] ];_ab4 setVectorDirAndUp [[0.390731,-0.9,8.04731e-008],[0,-8.74228e-008,-1]];

_WRE2 = createSimpleObject ["Land_HistoricalPlaneDebris_03_F",[0,0,0]];
_WRE2 attachTo [_tank1, [0.05, 4.1, -.85] ];_WRE2 setVectorDirAndUp [[0.849879,0.399341,-0.343849],[0.0199827,-0.676445,-0.736222]];

_a1 = createSimpleObject ["Land_GH_Platform_F",[0,0,0]];
_a1 attachTo [_tank1, [.8, -.7, 1.3] ];
_a2 = createSimpleObject ["Land_GH_Platform_F",[0,0,0]];
_a2 attachTo [_tank1, [-.7, -.7, 1.3] ];

_wl1 = "Land_Shoot_House_Wall_Long_Crouch_F" createVehicle [0,0,0];
_wl1 attachTo [_tank1, [-1.5, 1.18, 2.5] ];_wl1 setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];
_wl2 = "Land_Shoot_House_Wall_Long_Crouch_F" createVehicle [0,0,0];
_wl2 attachTo [_tank1, [-1.5, -2.5, 2.5] ];_wl2 setVectorDirAndUp [[-1,1.19249e-008,0],[0,0,1]];

_wla1 = "Land_Shoot_House_Wall_Long_Crouch_F" createVehicle [0,0,0];
_wla1 attachTo [_tank1, [1.6, 1.18, 2.5] ];_wla1 setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
_wla2 = "Land_Shoot_House_Wall_Long_Crouch_F" createVehicle [0,0,0];
_wla2 attachTo [_tank1, [1.6, -2.5, 2.5] ];_wla2 setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
//Land_BagFence_Long_F

_s1 = "Land_BagFence_Long_F" createVehicle [0,0,0];
_s1 attachTo [_tank1, [0, 3.2, 1.7] ];
_s2 = "Land_BagFence_Long_F" createVehicle [0,0,0];
_s2 attachTo [_tank1, [0, -4.5, 1.7] ]; _s2 setVectorDirAndUp [[-8.74228e-008,-1,0],[0,0,1]];

//Land_BackAlley_02_l_1m_F
_tw1 = createSimpleObject ["Land_BackAlley_02_l_1m_F",[0,0,0]];
_tw1 attachTo [_tank1, [1.4, 0.3, -.4] ];_tw1 setVectorDirAndUp [[1,-5.21253e-016,-4.37114e-008],[0,-1,1.19249e-008]];
_tw2 = createSimpleObject ["Land_BackAlley_02_l_1m_F",[0,0,0]];
_tw2 attachTo [_tank1, [1.4, -3.1, -.4] ];_tw2 setVectorDirAndUp [[1,-5.21253e-016,-4.37114e-008],[0,-1,1.19249e-008]];
_tw3 = createSimpleObject ["Land_BackAlley_02_l_1m_F",[0,0,0]];
_tw3 attachTo [_tank1, [-1.25, -3.1, -.4] ];_tw3 setVectorDirAndUp [[1,-5.21253e-016,-4.37114e-008],[0,-1,1.19249e-008]];
_tw4 = createSimpleObject ["Land_BackAlley_02_l_1m_F",[0,0,0]];
_tw4 attachTo [_tank1, [-1.25, 0.3, -.4] ];_tw4 setVectorDirAndUp [[1,-5.21253e-016,-4.37114e-008],[0,-1,1.19249e-008]];

//Land_Wall_Tin_Pole
_p1 = createSimpleObject ["Land_Wall_Tin_Pole",[0,0,0]];
_p1 attachTo [_tank1, [.8, 1, -.1] ];
_p2 = createSimpleObject ["Land_Wall_Tin_Pole",[0,0,0]];
_p2 attachTo [_tank1, [-.7, 1, -.1] ];
_p3 = createSimpleObject ["Land_Wall_Tin_Pole",[0,0,0]];
_p3 attachTo [_tank1, [-.7, -4.2, -.1] ];
_p4 = createSimpleObject ["Land_Wall_Tin_Pole",[0,0,0]];
_p4 attachTo [_tank1, [.8, -4.2, -.1] ];

//Land_HumanSkull_F
_sk1 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk1 attachTo [_tank1, [.55, 4.07, -.18] ];_sk1 setVectorDirAndUp [[-8.74228e-008,-1,0],[0,0,1]];
_sk2 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk2 attachTo [_tank1, [-.55, 4.07, -.18] ];_sk2 setVectorDirAndUp [[-8.74228e-008,-1,0],[0,0,1]];
_sk3 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk3 attachTo [_tank1, [-1.33, 3.5, .85] ];_sk3 setVectorDirAndUp  [[-8.74228e-008,-1,0],[0,0,1]];
_sk4 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk4 attachTo [_tank1, [1.33, 3.5, .85] ];_sk4 setVectorDirAndUp  [[-8.74228e-008,-1,0],[0,0,1]];
_sk5 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk5 attachTo [_tank1, [.7, 3.3, .9] ];_sk5 setVectorDirAndUp   [[-8.74228e-008,-1,0],[0,0,1]];
_sk6 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk6 attachTo [_tank1, [-.7, 3.3, .9] ];_sk6 setVectorDirAndUp    [[-8.74228e-008,-1,0],[0,0,1]];
_sk7 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk7 attachTo [_tank1, [.3, 3.3, .9] ];_sk7 setVectorDirAndUp     [[-8.74228e-008,-1,0],[0,0,1]];
_sk8 = createSimpleObject ["Land_HumanSkull_F",[0,0,0]];
_sk8 attachTo [_tank1, [-.3, 3.3, .9] ];_sk8 setVectorDirAndUp      [[-8.74228e-008,-1,0],[0,0,1]];

//Land_CrashBarrier_01_8m_F
_bar1 = createSimpleObject ["Land_CrashBarrier_01_8m_F",[0,0,0]];
_bar1 attachTo [_tank1, [-1.43, -2, -.9] ];_bar1 setVectorDirAndUp [[1,4.37114e-008,-1.74846e-007],[-1.74846e-007,-8.74228e-008,-1]];
_bar2 = createSimpleObject ["Land_CrashBarrier_01_8m_F",[0,0,0]];
_bar2 attachTo [_tank1, [1.55, -2, -.9] ];_bar2 setVectorDirAndUp [[-1,-1.19249e-008,1.04251e-015],[0,-8.74228e-008,-1]];

_bx1 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx1 attachTo [_tank1, [1.2, -3, 1.87] ];_bx1 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx2 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx2 attachTo [_tank1, [1.2, -1, 1.87] ];_bx2 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx3 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx3 attachTo [_tank1, [1.2, 1, 1.87] ];_bx3 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx4 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx4 attachTo [_tank1, [1.2, 2.7, 1.87] ];_bx4 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx5 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx5 attachTo [_tank1, [-1.1, 2.7, 1.87] ];_bx5 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx6 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx6 attachTo [_tank1, [-1.1, 1, 1.87] ];_bx6 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx7 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx7 attachTo [_tank1, [-1.1, -1, 1.87] ];_bx7 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx8 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx8 attachTo [_tank1, [-1.1, -3, 1.87] ];_bx8 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
_bx9 = createSimpleObject ["Land_MetalCase_01_medium_F",[0,0,0]];
_bx9 attachTo [_tank1, [0, -4.2, 1.88] ];_bx9 setVectorDirAndUp [[0,1.19249e-008,1],[0,-1,1.19249e-008]];
/*
sleep .1;
//_tank1 addAction ["Climb to roof",{[_this]execVM "tele.sqf" }];
sleep .1;
_s1 addAction ["Attach yourself",{[_this]execVM "attach.sqf" }];
sleep .1;
_s2 addAction ["Attach yourself",{[_this]execVM "attach.sqf" }];
sleep .1;
_wl1 addAction ["Attach yourself",{[_this]execVM "attach.sqf" }];
sleep .1;
_wl2 addAction ["Attach yourself",{[_this]execVM "attach.sqf" }];
sleep .1;
_wla1 addAction ["Attach yourself",{[_this]execVM "attach.sqf" }];
sleep .1;
_wla2 addAction ["Attach yourself",{[_this]execVM "attach.sqf" }];
sleep .1;
*/

_t10 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_t10 addEventHandler ["HandleDamage", {false}];
_t10 attachTo [_tank1, [-1, 2.8, 1.9] ];_t10 setVectorDirAndUp [[-0.383337,0.663236,-0.642783],[-0.321671,0.556505,0.766048]];
sleep .5;
_t11 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_t11 addEventHandler ["HandleDamage", {false}];
_t11 attachTo [_tank1, [1.2, 2.8, 1.9] ];_t11 setVectorDirAndUp [[0.38311,0.663369,-0.642782],[0.321456,0.556628,0.766049]];
sleep .5; 
_tl1 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tl1 addEventHandler ["HandleDamage", {false}];
_tl1 attachTo [_tank1, [-1.1, 1, 1.9] ];_tl1 setVectorDirAndUp [[-0.766044,-0.00046042,-0.642788],[-0.642788,-0.000387792,0.766044]];
sleep .5;
_tl2 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tl2 addEventHandler ["HandleDamage", {false}];
_tl2 attachTo [_tank1, [-1.1, -1, 1.9] ];_tl2 setVectorDirAndUp [[-0.766044,-0.00046042,-0.642788],[-0.642788,-0.000387792,0.766044]]; 
sleep .5;
_tl3 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tl3 addEventHandler ["HandleDamage", {false}];
_tl3 attachTo [_tank1, [-1.1, -3, 1.9] ];_tl3 setVectorDirAndUp [[-0.766044,-0.00046042,-0.642788],[-0.642788,-0.000387792,0.766044]];
sleep .5;
_tr1 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tr1 addEventHandler ["HandleDamage", {false}];
_tr1 attachTo [_tank1, [1.2, 1, 1.9] ];_tr1 setVectorDirAndUp [[0.766056,0.000102254,-0.642774],[0.642774,0.000106962,0.766056]]; 
sleep .5;
_tr2 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tr2 addEventHandler ["HandleDamage", {false}];
_tr2 attachTo [_tank1, [1.2, -1, 1.9] ];_tr2 setVectorDirAndUp [[0.766056,0.000102254,-0.642774],[0.642774,0.000106962,0.766056]];
sleep .5;
_tr3 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tr3 addEventHandler ["HandleDamage", {false}];
_tr3 attachTo [_tank1, [1.2, -3, 1.9] ];_tr3 setVectorDirAndUp [[0.766056,0.000102254,-0.642774],[0.642774,0.000106962,0.766056]];
sleep .5;
_tb1 =  "LOP_ISTS_OPF_Static_M2_MiniTripod" createVehicle [0,0,0];
_tb1 addEventHandler ["HandleDamage", {false}];
_tb1 attachTo [_tank1, [0, -4.5, 1.9] ];_tb1 setVectorDirAndUp [[-8.74228e-008,-0.766067,-0.642761],[0,-0.642761,0.766067]];  
sleep .5;

_gun = [_t11,_t10,_tl1,_tl2,_tl3,_tr1,_tr2,_tr3,_tb1];
{
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Green",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Yellow",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
_x addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
[_x, false] call ace_dragging_fnc_setDraggable;
[_x, false] call ace_dragging_fnc_setCarryable;
_x setVariable ["ace_cargo_canLoad", 0];
_x addEventHandler ["HandleDamage", {false}];
} foreach _gun;

sleep .5;
_lt1 =  "Land_PortableLight_single_F" createVehicle [0,0,0];
_lt1 addEventHandler ["HandleDamage", {false}];
_lt1 attachTo [_tank1, [1.1, -3.5, -.5] ];_lt1 setVectorDirAndUp [[-0.989058,1.19249e-008,0.147529],[0.147529,0,0.989058]];
sleep .5;
_lt2 =  "Land_PortableLight_single_F" createVehicle [0,0,0];
_lt2 addEventHandler ["HandleDamage", {false}];
_lt2 attachTo [_tank1, [.70, .85, -.1] ];_lt2 setVectorDirAndUp [[-0.732074,1.19249e-008,0.681225],[0.681225,0,0.732074]];
sleep .5;
_lt3 =  "Land_PortableLight_single_F" createVehicle [0,0,0];
_lt3 addEventHandler ["HandleDamage", {false}];
_lt3 attachTo [_tank1, [-.7, .9, -.3] ];_lt3 setVectorDirAndUp [[0.894029,-4.37114e-008,0.448009],[-0.448009,0,0.894029]];
sleep .5;
_lt4 =  "Land_PortableLight_single_F" createVehicle [0,0,0];
_lt4 addEventHandler ["HandleDamage", {false}];
_lt4 attachTo [_tank1, [-1, -3.42, -.5] ];_lt4 setVectorDirAndUp [[0.966497,-1.19646e-005,0.256677],[-0.256677,0,0.966497]];
sleep .5;
_lt5 =  "Land_PortableLight_single_F" createVehicle [0,0,0];
_lt5 addEventHandler ["HandleDamage", {false}];
_lt5 attachTo [_tank1, [0, -4.73, .74] ];_lt5 setVectorDirAndUp [[-2.72671e-005,0.967349,-0.253446],[0,-0.253446,-0.967349]];
sleep .5;
_lights = [_lt1,_lt2,_lt3,_lt4,_lt5];

_tank1 addAction ["Lights On",{{_x setHit ["light_1_hitpoint", 0];} foreach lights1}];
_tank1 addAction ["Lights Off",{{_x setHit ["light_1_hitpoint", 1];} foreach lights1}];

lights1 = _lights;
publicVariable "lights1";

};

