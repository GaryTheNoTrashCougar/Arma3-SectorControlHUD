countdown = -1;
friendlyTickets = 0;
enemyTickets = 0;

ticketCounter =
{
	while {true} do
	{
		if (SectorA getvariable "owner" isEqualTo east) then {friendlyTickets = friendlyTickets + 1;};
		if (SectorA getvariable "owner" isEqualTo west) then {enemyTickets = enemyTickets + 1;};
		if (SectorB getvariable "owner" isEqualTo east) then {friendlyTickets = friendlyTickets + 1;};
		if (SectorB getvariable "owner" isEqualTo west) then {enemyTickets = enemyTickets + 1;};
		if (SectorC getvariable "owner" isEqualTo east) then {friendlyTickets = friendlyTickets + 1;};
		if (SectorC getvariable "owner" isEqualTo west) then {enemyTickets = enemyTickets + 1;};
		sleep 5;
	};
};

missionTime =
{
	countdown = _this select 0;

	while {countdown > 0} do
	{
		if (countdown == 1)
		then
		{
			if (friendlyTickets < enemyTickets)
			then
			{
				playMusic "EndLose";
				["LOSETIME", false, true, false, false] remoteExec ["BIS_fnc_endMission"];
				{_x allowDamage false;} forEach allUnits;
				terminate ticketScript;
			};
			if (friendlyTickets > enemyTickets)
			then
			{
				playMusic "EndWin";
				["WINTIME", true, true, false, false] remoteExec ["BIS_fnc_endMission"];
				{_x allowDamage false;} forEach allUnits;
				terminate ticketScript;
			};
			if (friendlyTickets == enemyTickets)
			then
			{
				playMusic "EndDraw";
				["TIETIME", false, true, false, false] remoteExec ["BIS_fnc_endMission"];
				{_x allowDamage false;} forEach allUnits;
				terminate ticketScript;
			};
		};
		if (countdown > 1)
		then
		{
			if (enemyTickets == 200 && {friendlyTickets < 200}) then
			{
				playMusic "EndLose";
				["LOSE", false, true, false, false] remoteExec ["BIS_fnc_endMission"];
				{_x allowDamage false;} forEach allUnits;
				terminate timeScript;
				terminate ticketScript;
			};
			if (friendlyTickets == 200 && {enemyTickets < 200}) then
			{
				playMusic "EndWin";
				["WIN", true, true, false, false] remoteExec ["BIS_fnc_endMission"];
				{_x allowDamage false;} forEach allUnits;
				terminate timeScript;
				terminate ticketScript;
			};
			if (friendlyTickets == 200 && enemyTickets == 200)
			then
			{
				playMusic "EndDraw";
				["TIE", false, true, false, false] remoteExec ["BIS_fnc_endMission"];
				{_x allowDamage false;} forEach allUnits;
				terminate timeScript;
				terminate ticketScript;
			};
		};
		countdown = countdown - 1;  
		timeLeft = format ["%1", [countdown,"MM:SS"] call BIS_fnc_secondsToString];	
		sleep 1;
	};
};

ticketScript = [0] spawn ticketCounter;
timeScript = [timeLimit] spawn missionTime;
