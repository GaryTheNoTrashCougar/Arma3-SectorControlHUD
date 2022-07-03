
private _nul = [] spawn {

	//Wait for mission to start and original RscMissionStatus is shown
	waitUntil{ time > 0 && !isNil { uiNamespace getVariable "RscMissionStatus" } };

	//Close original RscMissionStatus UI
	uiNamespace getVariable "RscMissionStatus" closeDisplay 1;

	//Cancel Original draw3d sector icons event
	removeMissionEventHandler[ "draw3D", missionNamespace getVariable "RscMissionStatus_draw3D" ];

	//Copy new function to uinamespace
	uiNamespace setVariable[ "RscMissionStatus_SC_script", SC_fnc_RscMissionStatus ];

	//Show new version of RscMPProgress
	[ "RscMissionStatus_SC" ] call BIS_fnc_rscLayer cutRsc["RscMPProgress_SC","PLAIN"];
};