if(ww.titleScreen != noone){ return; }
if(ww.buildScreen != noone){ return; }
if(ww.popUp != noone){ return; }
if(ww.pauseScreen != noone){ return; }
if(ww.newStage){ return; }

if(ww.pmap[xSpot, ySpot] != noone && ww.pmap[xSpot, ySpot].object_index == objGear){
	drawGearCompare(ww.pmap[xSpot, ySpot]);
}

if(dyingTime > 0){
	var n = 0;
	if(dyingTime < 90){ n = 1; }
	if(dyingTime < 60){ n = 2; }
	if(dyingTime < 30){ n = 3; }
	
	draw_sprite_stretched(imgScreenCrack, n, 0, 0, 900, 720);
	
	
}



	