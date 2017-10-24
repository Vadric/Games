_p = player;

stuck=true;
_v = ((_this select 0) select 0);
_p attachTo [_v];

_yaw = 0;
_pitch =0;
_roll =0;

while{stuck}do
{	
	hint "Press Target or Eject to let go";
	if(inputAction "LockTarget" >0)then
	{
		detach _p;
		stuck=false;
	};
	if(inputAction "Eject" >0)then
	{
		detach _p;
		stuck=false;
	};
	if (inputAction "AimLeft" >0) then 
		{
			_yaw=_yaw-((inputAction "AimLeft"));
			_p setVectorDirAndUp [
				[ sin _yaw * cos _pitch,cos _yaw * cos _pitch,sin _pitch],
				[ [ sin _roll,-sin _pitch,cos _roll * cos _pitch],-_yaw] call BIS_fnc_rotateVector2D];
		};
		
	if (inputAction "AimRight" >0) then 
		{
			_yaw=_yaw+((inputAction "AimRight"));
			_p setVectorDirAndUp [
				[ sin _yaw * cos _pitch,cos _yaw * cos _pitch,sin _pitch],
				[ [ sin _roll,-sin _pitch,cos _roll * cos _pitch],-_yaw] call BIS_fnc_rotateVector2D];
		};
		
	if (inputAction "AimDown" >0 && _pitch >-20) then 
		{
			_pitch=_pitch-((inputAction "AimDown"));
			_p setVectorDirAndUp [
				[ sin _yaw * cos _pitch,cos _yaw * cos _pitch,sin _pitch],
				[ [ sin _roll,-sin _pitch,cos _roll * cos _pitch],-_yaw] call BIS_fnc_rotateVector2D];
		};
		
	if (inputAction "AimUp" >0 && _pitch <90) then 
		{
			_pitch=_pitch+((inputAction "AimUp"));
			_p setVectorDirAndUp [
				[ sin _yaw * cos _pitch,cos _yaw * cos _pitch,sin _pitch],
				[ [ sin _roll,-sin _pitch,cos _roll * cos _pitch],-_yaw] call BIS_fnc_rotateVector2D];
		};
	sleep 0.01;
};

stuck=nil;