for(var oop = 0; oop<2; oop++){

	with(objMob){
		var ap = 1;
		if(oop == 0 && foe){ continue; }
		if(oop == 1 && !foe){ continue; }
		if(hp < 1){ continue; }
		if(skipTurn){
			skipTurn = false;
			continue;
		}
	
		//melee attack player is top priority
		if( foe && ((pc.xSpot == xSpot && abs(pc.ySpot - ySpot) == 1)
				|| (pc.ySpot == ySpot && abs(pc.xSpot - xSpot) == 1))
				){
		
			mobAttack(ww.mmap[xSpot, ySpot], pc);
			ap --;
			continue;				
		}
		
		if(ap < 1){ continue; }
		
		//test to melee attack player allies next
		for(var d=1; d<5; d++){
			if(d == 1){var tx = xSpot; var ty = ySpot - 1; }
			if(d == 2){var tx = xSpot + 1; var ty = ySpot; }
			if(d == 3){var tx = xSpot; var ty = ySpot + 1; }
			if(d == 4){var tx = xSpot - 1; var ty = ySpot; }
			if(!inBounds(tx, ty)){ continue; }
			if(ww.mmap[tx, ty] != noone && ww.mmap[tx, ty].foe != foe){
				mobAttack(ww.mmap[xSpot, ySpot], ww.mmap[tx, ty]);
				ap --;
				d = 5;
				continue;
			}
		}
		
		
		if(ap < 1){ continue; }
	
	
	
		// shooting
		if(shotType != noone){
			var shotTarget = noone;
			var bestDis = 10000;
			for(var a=xSpot-shotRange; a<=xSpot+shotRange; a++){
				for(var b=ySpot-shotRange; b<=ySpot+shotRange; b++){
					var dis = abs(xSpot - a) + abs(ySpot - b);
					if(!inBounds(a, b)){ continue; }
					var target = noone;
					if(ww.mmap[a, b] != noone && ww.mmap[a, b].foe != foe ||
							(foe && pc.xSpot == a && pc.ySpot == b)
							){
						var target = ww.mmap[a, b];
						if(pc.xSpot == a && pc.ySpot == b){ target = pc; }
				
					}
					if(target == noone){ continue; }
				
					var okay = true;
					var d = abs(target.xSpot - xSpot) + abs(target.ySpot - ySpot);
					if(xSpot != target.xSpot && ySpot != target.ySpot){ okay = false; continue; }
		
					var cx = xSpot; var cy = ySpot;
					while(cx != target.xSpot || cy != target.ySpot){
						if(ww.bmap[cx, cy] != noone){ okay = false; break; }
						if(cx < target.xSpot){ cx ++; }
						if(cx > target.xSpot){ cx --; }
						if(cy > target.ySpot){ cy --; }
						if(cy < target.ySpot){ cy ++; }
					}
					if(okay && dis < bestDis){ 
						shotTarget = target; 
						bestDis = dis;
					}
				}
			} // end of for
			if(shotTarget != noone){
				mobShot(ww.mmap[xSpot, ySpot], shotTarget);
				ap --;
				continue;
			}
		

		}
	
		if(ap < 1){ continue; }
		
		
		if(allyRoam != "" && !dontStep){
			
			var tx = xSpot; var ty = ySpot;
			if(allyRoam == "up"){ ty --; }
			if(allyRoam == "right"){ tx ++; }
			if(allyRoam == "down"){ ty ++; }
			if(allyRoam == "left"){ tx --; }
			ap --;
			
			if(!mobStep(tx, ty, false)){
				var newDir = "";
				do {
					var r = irandom_range(1, 4);
					if(r == 1){ newDir = "up"; }
					if(r == 2){ newDir = "right"; }
					if(r == 3){ newDir = "down"; }
					if(r == 4){ newDir = "left"; }
				} until (newDir != allyRoam)
				allyRoam = newDir;	
			}
			
		}
		dontStep = false;
	
		if(ap < 1){ continue; }
	
		if(huntPlayer && !dontStep){
			
			pathFind(xSpot, ySpot, pc.xSpot, pc.ySpot, false);
			if(!noPath){
				mobStep(xNext, yNext, true);
				ap --;
			}
			
		}
		
		if(ap < 1){ continue; }
		
		
		
	}
	
}