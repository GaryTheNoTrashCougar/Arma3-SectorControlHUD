# Arma3-SectorControlHUD
- Creates &amp; displays a new scoring system for Sector Control game mode, also ending the game when the score limit is reached.
- Includes a customizable game message HUD (title & description) displayed on initial spawn.

New scoring system adds 1 point to each team's score every 5 seconds for each sector they own.

Editor set-up will require 3 **Sector** modules with **Variable Name** `SectorA`, `SectorB` &amp; `SectorC`, along with **Designation** `A`, `B` & `C` accordingly. Each sector must be sync'd to it's own **Area** locations logic entity, then all sectors sync'd to both **Sides** logic entities `BLUFOR` &amp; `OPFOR`.

![Screenshot](https://github.com/GaryTheNoTrashCougar/Arma3-SectorControlHUD/blob/main/screenshots/SectorSetUp.jpg?raw=true)

Number of sectors can be changed however by editing the **ticketCounter** function in `Score_Bar_Sector.sqf` located in the `Score_Bar` folder & adding/removing the appropriate Sector modules in the editor.

![Screenshot](https://github.com/GaryTheNoTrashCougar/Arma3-SectorControlHUD/blob/main/screenshots/ticketCounter.jpg?raw=true)

Example of adding more sectors:

![Screenshot](https://github.com/GaryTheNoTrashCougar/Arma3-SectorControlHUD/blob/main/screenshots/ticketCounterAdd.jpg?raw=true)

Example of removing sectors:

![Screenshot](https://github.com/GaryTheNoTrashCougar/Arma3-SectorControlHUD/blob/main/screenshots/ticketCounterRemove.jpg?raw=true)

**INSTALLATION**

Install '_Required Addon_' (Instructions inside folder).
Place the remaining files & folders in your mission root folder.<br/>
You may have to copy & paste the contents of `initServer.sqf`, `initPlayerLocal.sqf` &amp; `description.ext` if you already have these files in your mission.<br/>
If so please make sure classes in `description.ext` are not already defined (e.g. class CfgMusic). 

Game settings can be changed in `GameSettings.sqf`.
