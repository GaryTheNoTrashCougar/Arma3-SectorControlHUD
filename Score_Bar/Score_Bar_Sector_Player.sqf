enemySide = [];

if (side player == west)
then
{
	enemySide = east;
}
else
{
	if (side player == east)
	then
	{
		enemySide = west;
	};
};

[] spawn
{
	waitUntil {sleep 0.5; alive player;};
	disableSerialization;
	_friendlyFlag = gettext (configfile >> "cfgfactionclasses" >> playerSide call bis_fnc_playerSideFaction >> "flag");
	_rscLayer = "RscGameTitle" call BIS_fnc_rscLayer;
	_rscLayer cutRsc ["RscGameTitle", "PLAIN", 1, false];
	((uiNamespace getVariable "RscGameTitle") displayCtrl 55557) ctrlSetStructuredText parseText format ["<img align='center' shadow='0' size='2' image='%1'/>", _friendlyFlag];
	((uiNamespace getVariable "RscGameTitle") displayCtrl 55556) ctrlSetStructuredText parseText format ["<t align='center' shadow='2' shadowColor='#000000' color='#FBFCFE'>%1</t>", gameTitle];
	((uiNamespace getVariable "RscGameTitle") displayCtrl 55555) ctrlSetStructuredText parseText format ["<t align='center' shadow='2' shadowColor='#000000' color='#FBFCFE'>%1</t>", gameDescription];
};

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

[] spawn
{
	_uid = getPlayerUID player;

	while {true} do
	{
		
		sleep 1;
		
		_rscLayer = "RscScoreBar" call BIS_fnc_rscLayer;
		_rscLayer cutRsc ["RscScoreBar","PLAIN",1,false];
		
		
		if(isNull ((uiNamespace getVariable "RscScoreBar") displayCtrl 55559)) then
		{
		diag_log "scorebar is null create";
		disableSerialization;
		_rscLayer = "RscScoreBar" call BIS_fnc_rscLayer;
		_rscLayer cutRsc ["RscScoreBar","PLAIN",1,false];
		
		};
		
		_colour = parseText "#FBFCFE";
		_friendlyFaction = playerSide call bis_fnc_playerSideFaction;
		_enemyFaction = enemySide call TDM_fnc_SideFactions;
		_friendlyIcon = gettext (configfile >> "cfgfactionclasses" >> _friendlyFaction >> "icon");
		_enemyIcon = gettext (configfile >> "cfgfactionclasses" >> _enemyFaction >> "icon");
		
		((uiNamespace getVariable "RscScoreBar") displayCtrl 55559) ctrlSetStructuredText parseText format
		["
			<t shadow='1' shadowColor='#000000' color='%3'>%1&#160;&#160;<img size='1.5' image='%4'/></t>
			<t shadow='1' shadowColor='#000000' color='%3'><img size='1.5' image='Score_Bar\images\icon_Player_CA.paa'/></t>
			<img size='1.5' image='%5'/><t shadow='1' shadowColor='#000000' color='%3'>&#160;&#160;%2</t>
			</t>",
			friendlyTickets,		//1
			enemyTickets,			//2
			_colour,				//3
			_friendlyIcon,			//4
			_enemyIcon				//5
		];
		((uiNamespace getVariable "RscScoreBar") displayCtrl 55558) ctrlSetStructuredText parseText format
		["
			<t align='center' shadow='1' shadowColor='#000000' color='%3'>%1</t>
			</t>",
			timeLeft
		];
	};
};
