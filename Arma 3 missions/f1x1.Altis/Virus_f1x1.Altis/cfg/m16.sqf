if (!isServer) exitwith {};
this = (_this select 0);

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "TRYK_U_B_PCUHsW6";
for "_i" from 1 to 2 do {this addItemToUniform "30Rnd_9x21_Mag_SMG_02_Tracer_Green";};
this addGoggles "rhs_googles_clear";

comment "Add weapons";
this addWeapon "SMG_02_F";
this addPrimaryWeaponItem "optic_Aco";
this addWeapon "rhsusf_weap_glock17g4";

comment "Add items";
this linkItem "ItemWatch";
this linkItem "tf_anprc152";

comment "Set identity";
this setFace "WhiteHead_15";
this setSpeaker "male01eng";
sleep .1;