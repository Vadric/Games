private ["_type", "_title", "_msg", "_icon"];

_type	= (_this select 0);
_title	= (_this select 1);
_msg 	= (_this select 2);
_icon	= "";

switch (_type) do
{
	case "HQ":
	{
		_icon	= "";
	};

	case "SUPPLY":
	{
		_icon	= "";
	};

	case "ARMORY":
	{
		_icon	= "";
	};

	case "ROE":
	{
		_icon	= "";
	};
};

hint parseText (format ["<t align='center' font='PuristaMedium' size='1.2'><img size='1.7' image='%1' />&#160;&#160;<t size='1.7' color='#00EEB2'>%2</t><br/>-------------------------------------------------------<br/><t color='#00B2EE'>%3</t></t>", _icon, _title, _msg]);
