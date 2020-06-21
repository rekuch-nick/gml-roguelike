// scope: called from pc
var tx = argument0;
var ty = argument1;
triggeredTile = true;

onGrass = "";
if(ww.fmap[tx, ty].object_index == objGrass){ onGrass = "grass"; }

if(ww.fmap[tx, ty].object_index == objWater ||
		ww.fmap[tx, ty].object_index == objAcid ||
		ww.fmap[tx, ty].object_index == objLava){
	var waterRoll = irandom_range(1, 100);
	if(talent[19]){ waterRoll -= 75; }
	if(waterRoll > 0){
		ap = 0;
		waterSpawn(tx, ty);
	}
}

if(ww.fmap[tx, ty].object_index == objSkillPod){
	var tries = 0;
	while(tries < 100){
		tries ++;
		var i = irandom_range(9, 13);
		if(!pc.talent[i]){
			pc.talent[i] = true;
			
			var s = instance_create_depth(x, y, -9000, objEffect);
			s.text = "Learned [" + string(i - 7) + "]";
			s.textColor = c_yellow;
			pc.checkStats = true;
			break;
		}
	}
	
	spawnFloor(objFloor, tx, ty);
}

if(ww.fmap[tx, ty].object_index == objShovel){
	ww.fmap[tx, ty].image_index = 0;
	ww.fmap[tx, ty].image_speed = 0;
	for(var a=ww.xStart; a<ww.xBounds; a++){
		for(var b=ww.yStart; b<ww.yBounds; b++){
			if(ww.bmap[a, b] != noone && ww.bmap[a, b].object_index == objWall){
				impactTile(a, b, "shovel");
			}
		}
	}
}


if(ww.fmap[tx, ty].object_index == objScope){
	for(var a=ww.xStart; a<ww.xBounds; a++){
		for(var b=ww.yStart; b<ww.yBounds; b++){
			if(ww.bmap[a, b] != noone){
				if(ww.bmap[a, b].object_index == objHiddenChest){
					var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
					s.text = string("<!>");
					s.textColor = c_lime;
					
					spawnBlock(objChest, a, b);
				}
			}
			if(ww.tmap[a, b] != noone){
				if(ww.tmap[a, b].object_index = objHiddenTrap){
					var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
					s.text = string("<!>");
					s.textColor	= c_lime;
	
					instance_destroy(ww.tmap[a, b]);
					spawnTrap(true, a, b);
				}
			}
		}
	}
}

if(ww.fmap[tx, ty].object_index == objPox || ww.fmap[tx, ty].object_index == objPox2){
	pc.ep = max(0, pc.ep - 1); pc.sp = max(0, pc.sp - 1);
	if(ww.fmap[tx, ty].object_index == objPox2){
		pc.ep = max(0, pc.ep - 1); pc.sp = max(0, pc.sp - 1);
	}
	spawnFloor(objPox2, tx, ty);
	for(var i=1; i<5; i++){
		if(i == 1){ var a = xSpot, var b = ySpot - 1; }
		if(i == 2){ var a = xSpot + 1, var b = ySpot; }
		if(i == 3){ var a = xSpot, var b = ySpot + 1; }
		if(i == 4){ var a = xSpot - 1, var b = ySpot; }
		if(!inBounds(a, b)){ continue; }
		
		if(ww.fmap[a, b].object_index == objFloor && ww.bmap[a, b] == noone){
			spawnFloor(objPox, a, b);
		}
	}
}



if(ww.fmap[tx, ty].object_index == objMysteryTile){ spawnRoom(tx, ty); }

if(ww.pmap[tx, ty] != noone && ww.pmap[tx, ty].autoPickup){
	
	var o = ww.pmap[tx, ty].object_index;
	if(o == objParts01 || o == objParts02 || o == objParts05 || o == objParts10 || o == objParts20){
		var s = instance_create_depth(x, y, -9000, objEffect);
		s.text = "+" + string(ww.pmap[tx, ty].value) + " Parts";
		s.textColor = c_lime;
		
		scrap += ww.pmap[tx, ty].value;
		
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
	if(o == objDeltaChip){
		deltaStat();
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
	if(o == objEBall && (sp < msp || ep < mep)){
		sp = clamp(sp + 4, 0, msp);
		ep = clamp(ep + 4, 0, mep);
		
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
	if(o == objHBall && hp < mhp){
		hp ++;
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
	if(o == objKey && keys < keysMax){
		keys ++;
		var s = instance_create_depth(x, y, -9000, objEffect);
		s.text = "+1 Key";
		s.textColor = c_yellow;
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
	if(o == objBomb && bombs < bombsMax){
		bombs += 2;
		if(bombs > bombsMax){ bombs = bombsMax; }
		var s = instance_create_depth(x, y, -9000, objEffect);
		s.text = "+2 Bombs";
		s.textColor = c_yellow;
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
	if(o == objETank && etanks < etanksMax){
		etanks ++;
		var s = instance_create_depth(x, y, -9000, objEffect);
		s.text = "+1 ETank";
		s.textColor = c_yellow;
		instance_destroy(ww.pmap[tx, ty]); ww.pmap[tx, ty] = noone;
	}
	
}

for(var a=xSpot-3; a<=xSpot+3; a++){
	for(var b=ySpot-3; b<=ySpot+3; b++){
		if(a != xSpot || b != ySpot){ searchForTraps(a, b); }
	}
}


if(ww.tmap[xSpot, ySpot] != noone){
	triggerTrap(xSpot, ySpot);
}




