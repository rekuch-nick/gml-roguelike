if(spawnTime > 0){
	image_alpha = 1 - ((spawnTime * 3) / 100);
	spawnTime --;
	
	if(spawnTime == 0){ image_alpha = 1; }
}



depth = -2004 - (ySpot * 10);

if(x != xSpot * 60 + 30 || y != ySpot * 60 + 30){
	var steps = 6;
	while(steps > 0 && (x != xSpot * 60 + 30 || y != ySpot * 60 + 30)){
		if(x < xSpot * 60 + 30){ x ++; }
		if(x > xSpot * 60 + 30){ x --; }
		if(y > ySpot * 60 + 30){ y --; }
		if(y < ySpot * 60 + 30){ y ++; }
		steps --;
		depth -= 10;
	}
}

if(pointAtPlayer){
	image_angle = point_direction(x, y, pc.x, pc.y);
}


if(hp < 1){
	if(!isRobot){ pleaseSystem("clean", 1); } 
	
	with(objEffect){ if(chasePlayer == ww.mmap[other.xSpot, other.ySpot]) {
		chasePlayer = noone;
		instance_destroy();
	}}
	
	if(foe){
		var t = noone;
		
		if(drop != 0){
			
			var orbRoll = irandom_range(1, 100);
			if(hasPower("Orb Calling")){ orbRoll *= 2; }
			if(orbRoll >= 90){
				t = objEBall;
				if(irandom_range(0, 3)==0){ t = objHBall; }
			}
			
			
		
		}
		
		
		
		if(t != noone && (drop >= 2 || ww.pmap[xSpot, ySpot] == noone)){
			spawnPup(t, xSpot, ySpot);
		}
	}
	
	
	
	ww.mmap[xSpot, ySpot] = noone;
	instance_destroy();
}