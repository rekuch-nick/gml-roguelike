event_inherited();

var sysNum = 0;
if(pc.system == "clean"){ sysNum = 1; }
if(pc.system == "build"){ sysNum = 2; }
if(pc.system == "temp"){ sysNum = 3; }
if(pc.system == "comm"){ sysNum = 4; }
if(pc.system == "trans"){ sysNum = 5; }

do {
	system = irandom_range(1, 5);
	if(system == 1){ sprite_index = imgSystemInClean; }
	if(system == 2){ sprite_index = imgSystemInBuild; }
	if(system == 3){ sprite_index = imgSystemInTemp; }
	if(system == 4){ sprite_index = imgSystemInComm; }
	if(system == 5){ sprite_index = imgSystemInTrans; }
	
} until (system != sysNum && system != pc.lastSystem)

pc.lastSystem = system;