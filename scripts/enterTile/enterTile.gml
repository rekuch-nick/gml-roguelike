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




