_doc = (_this select 0);
_mes = (_this select 1);
_tit = (_this select 2);
_doc addAction [  
 "<t color='#cccccc' face='TahomaB'>Examine Device</t>",  
 { 
	[((_this select 3) select 0), ((_this select 3) select 1)] call FF7_fnc_globalHintStruct;
 },  
 [_mes,_tit],  
 2,  
 true,  
 true, 
 "", 
 "(typeOf player) in ['B_engineer_F']", 
 1.7 
 ];