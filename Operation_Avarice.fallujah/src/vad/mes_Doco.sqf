_doc = (_this select 0);
_mes = (_this select 1);
_tit = (_this select 2);
_doc addAction [  
 "<t color='#cccccc' face='TahomaB'>Read Documents</t>",  
 { 
	[((_this select 3) select 0), ((_this select 3) select 1)] call FF7_fnc_globalHintStruct;
 },  
 [_mes,_tit],  
 1.5,  
 true,  
 true, 
 "", 
 "(typeOf player) in ['B_Story_SF_Captain_F']", 
 1.7 
 ];