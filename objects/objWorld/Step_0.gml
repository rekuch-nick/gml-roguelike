if(newRun){
	with(objClassBox){ instance_destroy(); }
	with(objTalentBox){ instance_destroy(); }
	
	setBaseStats();
	startingGear();
	
	
	
	
	worldGen();
	newRun = false;
	instance_destroy(ww.buildScreen); 
	ww.buildScreen = noone;
	
	//playMovie
}

if(newStage){
	worldGen();
	newStage = false;
}



if(combatTextOffset > 0){ combatTextOffset -= 4; }