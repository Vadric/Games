// [this]execVM "src\vad\sb1.sqf";
// nul = [this]execVM "src\vad\sb1.sqf";



_IED = (_this select 0);
IED1 = _IED;
publicVariable "IED1";

//dress the terry
removeVest _IED;
removeHeadgear _IED;
removeAllWeapons _IED;
removeAllItems _IED;
removeAllAssignedItems _IED;
removeUniform _IED;
removeBackpack _IED;
removeGoggles _IED;
_IED forceAddUniform "ff7_suit_heli_blk";
_IED addHeadgear "LOP_H_Pakol";
_IED addVest "V_TacVestIR_blk";
_IED setFace "PersianHead_A3_01";
_IED setSpeaker "male01per";
_IED addGoggles "G_Balaclava_blk";



//attach some bombs to him
_bombblock_1 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_1  attachTo [_IED, [.15, .15, .26],"Pelvis" ];_bombblock_1 setVectorDirAndUp [[-0.801786,0.596458,-0.0370951],[0.596808,0.802382,0.00201371]];
bombblock_11 = _bombblock_1;
publicVariable "bombblock_11";


_bombblock_2 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_2  attachTo [_IED, [.05, .2, .25],"Pelvis" ];_bombblock_2 setVectorDirAndUp [[-0.964924,0.26253,5.34113e-007],[0.262451,0.964637,0.0243878]];
bombblock_21 = _bombblock_2;
publicVariable "bombblock_21";

_bombblock_3 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_3  attachTo [_IED, [-.05, .2, .26],"Pelvis" ];_bombblock_3 setVectorDirAndUp [[-0.826428,-0.563039,0.00206394],[-0.562943,0.826207,-0.021873]];
bombblock_31 = _bombblock_3;
publicVariable "bombblock_31";

_bombblock_4 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_4  attachTo [_IED, [-.15, .15, .24],"Pelvis" ];_bombblock_4 setVectorDirAndUp [[-0.602022,-0.797257,0.0441707],[-0.796406,0.603523,0.0387028]];
bombblock_41 = _bombblock_4;
publicVariable "bombblock_41";

_bombblock_5 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_5  attachTo [_IED, [-.15, -.2, .26],"Pelvis" ];_bombblock_5 setVectorDirAndUp [[0.761053,-0.64869,-3.45334e-006],[-0.647463,-0.759613,-0.0614765]];
bombblock_51 = _bombblock_5;
publicVariable "bombblock_51";

_bombblock_6 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_6  attachTo [_IED, [-.05, -.2, .27],"Pelvis" ];_bombblock_6 setVectorDirAndUp [[0.979449,-0.201691,-7.80402e-006],[-0.201643,-0.97922,-0.0216476]];
bombblock_61 = _bombblock_6;
publicVariable "bombblock_61";

_bombblock_7 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_7  attachTo [_IED, [.05, -.2, .26],"Pelvis" ];_bombblock_7 setVectorDirAndUp [[-0.941281,-0.337623,2.40579e-005],[0.337177,-0.940035,0.051437]];
bombblock_71 = _bombblock_7;
publicVariable "bombblock_71";

_bombblock_8 = "DemoCharge_F" createVehicle [0,0,0];
_bombblock_8  attachTo [_IED, [.15, -.18, .26],"Pelvis" ];_bombblock_8 setVectorDirAndUp [[-0.263246,-0.964094,0.0349808],[0.964335,-0.261929,0.0381069]];
bombblock_81 = _bombblock_8;
publicVariable "bombblock_81";


_satch_1 = "SatchelCharge_F" createVehicle [0,0,0];
_satch_1  attachTo [_IED, [0, .11, -.05],"Pelvis" ];_satch_1 setVectorDirAndUp [[0.030465,-0.0358921,-0.998891],[-0.0203317,0.999126,-0.0365206]];
satch_11 = _satch_1;
publicVariable "satch_11";


_satch_2 = "SatchelCharge_F" createVehicle [0,0,0];
_satch_2  attachTo [_IED, [0, -.2, -.05],"Pelvis" ];_satch_2 setVectorDirAndUp [[-0,0.0883309,-0.996091],[0,-0.996091,-0.0883309]];
satch_21 = _satch_2;
publicVariable "satch_21";


_cell_1 = "Land_MobilePhone_old_F" createVehicle [0,0,0];
_cell_1  attachTo [_IED, [0.06, .255, .2],"Pelvis" ];_cell_1 setVectorDirAndUp [[0.030465,-0.0358921,-0.998891],[-0.0203317,0.999126,-0.0365206]];
cell_11 = _cell_1;
publicVariable "cell_11";
_cell_1 addaction ["Examine Phone",{hintsilent "555-135-1114"}];

_wire_1 = "Land_MetalWire_F" createVehicle [0,0,0];
_wire_1  attachTo [_IED, [0.08, .12, .2],"Pelvis"];
wire_11 = _wire_1;
publicVariable "wire_11";


_wire_2 = "Land_MetalWire_F" createVehicle [0,0,0];
_wire_2  attachTo [_IED, [-0.08, .12, .2],"Pelvis"];
wire_21 = _wire_2;
publicVariable "wire_21";


_wire_3 = "Land_MetalWire_F" createVehicle [0,0,0];
_wire_3  attachTo [_IED, [-0.08, -.12, .2],"Pelvis"];
wire_31 = _wire_3;
publicVariable "wire_31";


_wire_4 = "Land_MetalWire_F" createVehicle [0,0,0];
_wire_4  attachTo [_IED, [0.07, -.15, .2],"Pelvis"];
wire_41 = _wire_4;
publicVariable "wire_41";


_ieditems = [bombblock_11, bombblock_21, bombblock_31, bombblock_41, bombblock_51, bombblock_61, bombblock_71, bombblock_81, satch_11, satch_21, wire_11, wire_21, wire_31, wire_41];
ieditems1 = _ieditems;

//create the trigger
_trg = createTrigger ["EmptyDetector", getPos IED1];
_trg setTriggerArea [5, 5, 0, false];
_trg setTriggerActivation ["WEST", "PRESENT", false];
_trg setTriggerStatements ["((damage IED1) > .01) or this", "bomb='Bo_GBU12_LGB' createVehicle (getPos IED1);IED1 setDamage 100;{deleteVehicle _x} foreach fences;", ""];
_trg attachTo [IED1,[0,0,0]];
