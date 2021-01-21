enableDebugConsole[] = {
	"76561198277313876", 					
	"76561198024812575", 
	"76561198352564029", 
	"76561198051306330",
	"76561198168637308", 
	"76561198125701176"  //Maximum 
};


respawnVehicleDelay = 12;
respawndelay = 5;
respawnOnStart = 1;
aikills = 0;
disabledAI = 1
saving= 1;

corpseManagerMode = 1; //Type of removed bodies: 0 - none, 1 - all, 2 - only respawnable, 3 - only non-respawnable 
corpseLimit = 15; //Max number of bodies which can be available at the same time. When exceeded, start deleting immediately. 
corpseRemovalMinTime = 60; //Minimal time in seconds a body stays in the scene (can't be removed sooner). 
corpseRemovalMaxTime = 120; //Maximal time in seconds after which a dead body is removed (can't stay longer)
wreckManagerMode = 1;
wreckLimit = 10;
wreckRemovalMinTime = 300;
wreckRemovalMaxTime = 900;