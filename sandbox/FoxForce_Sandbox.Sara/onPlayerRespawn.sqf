player disableConversation true;
enableSentences false;
player setCustomAimCoef 0.5;
private "_player";
_player = (_this select 0);
[_player] call FF7_fnc_addToCurator;
