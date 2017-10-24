class CfgPatches
{
	class A3_Structures_F_Bridges
	{
		requiredAddons[]={};
		requiredVersion=0.1;
		units[]=
		{
			"Land_Bridge_Interstate_F",
			"Land_Bridge_Main_F",
			"Land_Bridge_Raisemain_F",
			"Land_Bridge_Wood_F"
		};
		weapons[]={};
	};
};
class CfgVehicles
{
	class Building;
	class Land_Bridge_Interstate_F: Building
	{
		author="vad";
		mapSize=56;
		scope=2;
		scopeCurator=2;
		displayName="Interstate Bridge";
		model="frankfort\buildings\bridges\interstatebridge.p3d";
		editorCategory="EdCat_Structures_Altis";
		editorSubcategory="EdSubcat_Transportation";
		vehicleClass="Structures_Infrastructure";
		icon="iconObject_1x1";
	};
	class Land_Bridge_Raisemain_F: Building
	{
		author="vad";
		mapSize=28;
		scope=2;
		scopeCurator=2;
		displayName="Bridge Ramp";
		model="frankfort\buildings\bridges\bridgeraisemain.p3d";
		editorCategory="EdCat_Structures_Altis";
		editorSubcategory="EdSubcat_Transportation";
		vehicleClass="Structures_Infrastructure";
		icon="iconObject_1x1";
	};		
	class Land_Bridge_Main_F: Building
	{
		author="vad";
		mapSize=56;
		scope=2;
		scopeCurator=2;
		displayName="Main Bridge";
		model="frankfort\buildings\bridges\mainbridge.p3d";
		editorCategory="EdCat_Structures_Altis";
		editorSubcategory="EdSubcat_Transportation";
		vehicleClass="Structures_Infrastructure";
		icon="iconObject_1x1";
	};	
	class Land_Bridge_Wood_F: Building
	{
		author="vad";
		mapSize=56;
		scope=2;
		scopeCurator=2;
		displayName="Wood Bridge";
		model="frankfort\buildings\bridges\woodrailbridge.p3d";
		editorCategory="EdCat_Structures_Altis";
		editorSubcategory="EdSubcat_Transportation";
		vehicleClass="Structures_Infrastructure";
		icon="iconObject_1x1";
	};		
};
