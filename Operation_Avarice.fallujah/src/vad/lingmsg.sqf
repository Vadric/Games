_ling = (_this select 1);
_tar = (_this select 0);
_location = (_this select 3);
_dead = "Dead bodies don't talk";
_banter =
[
"El-Sheitan Alaykom!",
"Ibn himar",
"Airy Fic",
"Assam Alaykom!",
"Neek Hallak",
"Neek nafsek",
"Tel has tisee",
"Bala'a il a'air",
"Coos okt al laglesh",
"Kes en neck eighty",
"Muss zebby"
] call BIS_fnc_selectRandom;
_bantertrans =
[
"Satan be upon you!",
"Son of a donkey",
"Fuck Off",
"Death upon you!",
"Go Fuck Yourself",
"Fuck yourself",
"Kiss my ass",
"Cock sucker",
"Fuck all this shit",
"Go fuck your mother",
"Suck my dick"
] call BIS_fnc_selectRandom;
_ints = [];
{
	if ((typeOf _x) in ['B_CTRG_soldier_GL_LAT_F']) then
	{
		_ints pushBack _x;
	};
} forEach playableUnits;
_intsnear = false;
{
	if ((_x distance _tar) <3) then
	{
		_intsnear = true;
	};
} forEach _ints;

if (!alive _tar) then
	{
	hintsilent parseText (format ["<t align='center' font='etelkamonospaceprobold' size='1.3'><t color='#b30000'><br/>%1<br/></t></t>", _dead])
	}
else
{
if ((typeof _ling) in ['B_Story_Protagonist_F'])
	then
	{
		if 
			(
				_intsnear && (_tar getVariable ["ace_captives_isHandcuffed",false])
			)
		then 
			{
			hintsilent parseText (format ["<t align='center' font='etelkamonospacepro' size='1'><t color='#e6e600'><br/>%1<br/></t></t>", _location])	
			}
		else
			{
			hintsilent parseText (format ["<t align='center' font='etelkamonospacepro' size='1'><t color='#e6ffff'><br/>%1<br/></t></t>", _bantertrans])	
			};
	}
	else
	{
	hintsilent parseText (format ["<t align='center' font='etelkamonospacepro' size='1'><t color='#e6ffff'><br/>%1<br/></t></t>", _banter])
	};
};