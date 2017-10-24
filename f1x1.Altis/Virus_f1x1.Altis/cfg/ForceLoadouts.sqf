private "_this";
_this = _this select 0;

{ 
if (typeof _this == "rhsusf_usmc_marpat_wd_rifleman_m4") then { [_this] execVM "cfg\m4.sqf"};

} forEach units group _this;

{

if (typeof _this == "rhsusf_usmc_marpat_wd_rifleman") then { [_this] execVM "cfg\m16.sqf"};

} forEach units group _this;
