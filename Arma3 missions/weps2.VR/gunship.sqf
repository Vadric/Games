_tank1 = (_this select 0);

//hide all models but minigun
//_tank1 setObjectTexture [0, ""];_tank1 setObjectTexture [1, ""];_tank1 setObjectTexture [2, ""];

//lock all but gunner
//_tank1 lockturret [[1],true];_tank1 lockturret [[2],true];_tank1 lockturret [[3],true];_tank1 lockturret [[4],true];_tank1 lockturret [[5],true];_tank1 lockDriver true;

//set fuel
//_tank1 setfuel 0;

//remove mags 
//_tank1 removeMagazineTurret ["500Rnd_65x39_Belt_Tracer_Green_Splash",[0]];


//add mags


//_tank1 addMagazineTurret ["2000Rnd_65x39_Belt_Tracer_Green_Splash",[0]];



//_5block1 = createSimpleObject ["Land_HBarrier_5_F",[0,0,0]];
//_5block1 attachTo [_tank1, [0, 1, -1.3] ];

_tank1 addEventHandler ["HandleDamage", {false}];


a1 attachTo [tank1, [0, -2, .5] ];
a2 attachTo [tank1, [1.5, -2, .5] ];
a3 attachTo [tank1, [-1.5, -2, .5] ];
a4 attachTo [tank1, [0, -7, .5] ];
a5 attachTo [tank1, [1.5, -7, .5] ];
a6 attachTo [tank1, [-1.5, -7, .5] ];

b1 attachTo [tank1, [0.25, -1.25, .4] ];
b2 attachTo [tank1, [0.25, -.55, .4] ];
b3 attachTo [tank1, [-0.25, -.55, .4] ];
b4 attachTo [tank1, [-0.25, -1.25, .4] ];

c1 attachTo [tank1, [1, 1, -.5] ];c1 setdir 90;
c2 attachTo [tank1, [1, -1.6, -.5] ];c2 setdir 90;
c3 attachTo [tank1, [-1, -1.6, -.5] ];c3 setdir 90;
c4 attachTo [tank1, [-1, 1, -.5] ];c4 setdir 90;

s1 attachTo [tank1, [-.8, 1.7, 1] ];
s2 attachTo [tank1, [.8, 1.7, 1] ];
s3 attachTo [tank1, [2.1, .4, 1] ];s3 setdir 90;
s4 attachTo [tank1, [-2.1, .4, 1] ];s4 setdir 90;

p1 attachTo [tank1, [1, 1.7, .4] ];
p2 attachTo [tank1, [-1, 1.7, .4] ];
p3 attachTo [tank1, [.82, -10.6, -.1] ];
p4 attachTo [tank1, [-.97, -10.6, -.1] ];

wheel1 attachTo [tank1, [.9, -10.6, -1.55] ];
wheel2 attachTo [tank1, [-.9, -10.6, -1.55] ];