if (!isServer) exitWith {};
_tank1 = (_this select 0);

//hide all models but minigun
_tank1 setObjectTexture [0, ""];_tank1 setObjectTexture [1, ""];_tank1 setObjectTexture [2, ""];

//lock all but gunner
_tank1 lockturret [[1],true];_tank1 lockturret [[2],true];_tank1 lockturret [[3],true];_tank1 lockturret [[4],true];_tank1 lockturret [[5],true];_tank1 lockDriver true;

//set fuel
_tank1 setfuel 0;

//remove mags 
_tank1 removeMagazineTurret ["500Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 removeMagazineTurret ["500Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 removeMagazineTurret ["500Rnd_65x39_Belt_Tracer_Green_Splash",[0]];

//add mags


_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];
_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];


_5block1 = createSimpleObject ["Land_HBarrier_5_F",[0,0,0]];
_5block1 attachTo [_tank1, [0, 1, -1.3] ];
_5block2 = createSimpleObject ["Land_HBarrier_5_F",[0,0,0]];
_5block2 attachTo [_tank1, [0, 1.6, -1.3] ];
_5block3 = createSimpleObject ["Land_HBarrier_5_F",[0,0,0]];
_5block3 attachTo [_tank1, [0, -2, -1.3] ];
_5block4 = createSimpleObject ["Land_HBarrier_5_F",[0,0,0]];
_5block4 attachTo [_tank1, [0, -2.6, -1.3] ];

_block1 = createSimpleObject ["Land_HBarrier_1_F",[0,0,0]];
_block1 attachTo [_tank1, [0, -.5, -1.55] ]; 
_block2 = createSimpleObject ["Land_HBarrier_1_F",[0,0,0]];
_block2 attachTo [_tank1, [3.5, .8, -1.2] ];
_block3 = createSimpleObject ["Land_HBarrier_1_F",[0,0,0]];
_block3 attachTo [_tank1, [-3.5, .8, -1.2] ];
_block4 = createSimpleObject ["Land_HBarrier_1_F",[0,0,0]];
_block4 attachTo [_tank1, [-3.5, -1.85, -1.2] ];
_block5 = createSimpleObject ["Land_HBarrier_1_F",[0,0,0]];
_block5 attachTo [_tank1, [3.5, -1.85, -1.2] ];

_con1 = createSimpleObject ["Land_ConcreteKerb_01_8m_F",[0,0,0]];
_con1 attachTo [_tank1, [0, 0.1, .03] ]; 
_con2 = createSimpleObject ["Land_ConcreteKerb_01_8m_F",[0,0,0]];
_con2 attachTo [_tank1, [0, -1.15, .03] ]; 
_con3 = createSimpleObject ["Land_ConcreteKerb_01_8m_F",[0,0,0]];
_con3 attachTo [_tank1, [0, 0.1, -.85] ]; 
_con4 = createSimpleObject ["Land_ConcreteKerb_01_8m_F",[0,0,0]];
_con4 attachTo [_tank1, [0, -1.15, -.85] ];

_consmall1 = createSimpleObject ["Land_ConcreteKerb_01_2m_F",[0,0,0]];
_consmall1 attachTo [_tank1, [.4, -.6, .03] ]; _consmall1 setdir 90;
_consmall2 = createSimpleObject ["Land_ConcreteKerb_01_2m_F",[0,0,0]];
_consmall2 attachTo [_tank1, [-.7, -.6, .03] ];_consmall2 setdir 90;

_roof1 = createSimpleObject ["Land_WoodenShelter_01_F",[0,0,0]];
_roof1 attachTo [_tank1, [-.2, -1, .9] ];  

_pole1 = createSimpleObject ["Land_ConcreteWall_01_l_pole_F",[0,0,0]];
_pole1 attachTo [_tank1, [3.7, -1.27, -1.15] ];
_pole2 = createSimpleObject ["Land_ConcreteWall_01_l_pole_F",[0,0,0]];
_pole2 attachTo [_tank1, [3.7, .2, -1.15] ]; 
_pole3 = createSimpleObject ["Land_ConcreteWall_01_l_pole_F",[0,0,0]];
_pole3 attachTo [_tank1, [-3.7, .2, -1.15] ]; 
_pole4 = createSimpleObject ["Land_ConcreteWall_01_l_pole_F",[0,0,0]];
_pole4 attachTo [_tank1, [-3.7, -1.27, -1.15] ];

_wire1 = createSimpleObject ["Land_Razorwire_F",[0,0,0]];
_wire1 attachTo [_tank1, [.1, 1.4, 0] ];
_wire2 = createSimpleObject ["Land_Razorwire_F",[0,0,0]];
_wire2 attachTo [_tank1, [-.1, -2.5, 0] ];_wire2 setdir 180;


_ammo1 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo1 attachTo [_tank1, [.8, -.2, -1.5] ];
_ammo2 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo2 attachTo [_tank1, [.89, -.4, -1.5] ];
_ammo3 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo3 attachTo [_tank1, [.8, -.7, -1.5] ];
_ammo4 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo4 attachTo [_tank1, [.82, -.92, -1.5] ];
_ammo5 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo5 attachTo [_tank1, [-.8, -.2, -1.5] ];
_ammo6 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo6 attachTo [_tank1, [-1, -.4, -1.5] ];
_ammo7 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo7 attachTo [_tank1, [-.8, -.7, -1.5] ];
_ammo8 = createSimpleObject ["Land_Ammobox_rounds_F",[0,0,0]];
_ammo8 attachTo [_tank1, [-.82, -.97, -1.5] ];