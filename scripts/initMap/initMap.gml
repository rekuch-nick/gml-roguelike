//scope: called from world

for(var a=0; a<xBounds; a++){
	for(var b=0; b<yBounds; b++){
		
		
		var ts = fmap[a, b];
		var t = noone;
		if(ts == "floor"){ t = objFloor; }
		if(ts == "doorway"){ t = objOpenDoor; }
		if(ts == "exit"){ t = objExit; }
		if(ts == "sign"){ t = objSign; }
		if(ts == "grass"){ t = objGrass; }
		if(ts == "pod"){ t = objUpgradePod; }
		if(ts == "mystery"){ t = objMysteryTile; }
		if(ts == "water"){ t = objWater; }
		if(ts == "acid"){ t = objAcid; }
		if(ts == "lava"){ t = objLava; }
		
		if(t != noone){
			fmap[a, b] = instance_create_depth(a * 60, b * 60, -2000 - (b * 10), t);
		} else {
			fmap[a, b] = noone;
		}
		
		
		
		
		
		var ts = bmap[a, b];
		var t = noone;
		if(ts == "node"){ t = objNode; }
		if(ts == "block"){ t = objBlock; }
		if(ts == "wall"){ t = objWall; }
		if(ts == "hchest"){ t = objHiddenChest; }
		if(ts == "door"){ t = objDoor; }
		if(ts == "chest"){ t = objChest; }
		if(ts == "system"){ t = objSystemIn; }
			
		if(t != noone){
			bmap[a, b] = instance_create_depth(a * 60, b * 60, -2002 - (b * 10), t);
		} else {
			bmap[a, b] = noone;	
		}
		
		var ts = tmap[a, b];
		var t = noone;
		if(ts == "trap"){ t = objHiddenTrap; }
		if(ts == "spike trap"){ t = objSpikeTrap; }
		if(ts == "fire trap"){ t = objFireTrap; }
		if(ts == "shock trap"){ t = objShockTrap; }
		if(t != noone){
			tmap[a, b] = instance_create_depth(a * 60, b * 60, -2001 - (b * 10), t);
		} else {
			tmap[a, b] = noone;
		}
		
		
		var ts = pmap[a, b];
		var t = noone;
		if(ts == "parts01"){ t = objParts01; }
		if(ts == "parts02"){ t = objParts02; }
		if(ts == "parts05"){ t = objParts05; }
		if(ts == "parts10"){ t = objParts10; }
		if(ts == "parts20"){ t = objParts20; }
		if(ts == "partsX"){ t = rollParts(); }
		if(ts == "key"){ t = objKey; }
		if(ts == "bomb"){ t = objBomb; }
		if(ts == "etank"){ t = objETank; }
		if(ts == "eball"){ t = objEBall; }
		if(ts == "hball"){ t = objHBall; }
		if(ts == "gear"){ t = objGear; }
		if(t != noone){
			pmap[a, b] = instance_create_depth(a * 60, b * 60, -2003 - (b * 10), t);
			pmap[a, b].xSpot = a; pmap[a, b].ySpot = b;
			if(ts == "gear"){ pmap[a, b].rollSelf = true; }
		} else {
			pmap[a, b] = noone;	
		}
		
		
		
		mmap[a, b] = noone;
				
		
		
		
	}
}