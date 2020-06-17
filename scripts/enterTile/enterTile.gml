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
		var r = irandom_range(1, 17); var n = 1; var text = "";
		if(r == 1){pc._mhp ++; pc.hp ++; n = 1; text = "HP";}
		if(r == 2){pc._msp ++; n = 1; text = "SP";}
		if(r == 3){pc._mep ++; n = 1; text = "EP";}
		if(r == 4){pc._map ++; n = 1; text = "AP";}
		if(r == 5){pc._evade ++; n = 1; text = "EVADE";}
		if(r == 6){pc._evadeTrap +=2; n = 2; text = "T EVD";}
		if(r == 7){pc._resistPhys ++; n = 1; text = "DEF";}
		if(r == 8){pc._resistProc ++; n = 1; text = "C DEF";}
		if(r == 9){pc._resistEnergy ++; n = 1; text = "RES";}
		if(r == 10){pc._resistHeat ++; n = 1; text = "H RES";}
		if(r == 11){pc._physPower ++; n = 1; text = "STR";}
		if(r == 12){pc._energyPower ++; n = 1; text = "POW";}
		if(r == 13){pc._aim +=2; n = 2; text = "AIM";}
		if(r == 14){pc._proc ++; n = 1; text = "PROC";}
		if(r == 15){pc._procPower +=10; n = 10; text = "P POW";}
		if(r == 16){pc._see +=2; n = 2; text = "SPOT";}
		if(r == 17){pc._hack +=2; n = 2; text = "HACK";}
		pc.checkStats = true;
		var s = instance_create_depth(x, y, -9000, objEffect);
		s.text = "+" + string(ww.pmap[tx, ty].value) + " " + text;
		s.textColor = c_lime;
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




