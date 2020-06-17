var a = argument0;
var b = argument1;

if(ww.tmap[a, b].object_index == objHiddenTrap){
	instance_destroy(ww.tmap[a, b]);
	ww.tmap[a, b] = instance_create_depth(a * 60, b * 60, -2002 - (b * 10), ww.curTrap);
}


var roll = irandom_range(1, 100) + evadeTrap;
var dc = 74 + pc.deep;

if(ww.curTrap == objSpikeTrap){
	instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objSpike);
	pc.y -= 15;
}

if(roll >= dc){
	//dodge
	var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
	s.text = string("Dodged Trap");
	s.textColor = c_aqua;
} else {
	
	var damageRange = 2 + floor(pc.deep / 5);
	var damage = irandom_range(floor(damageRange / 2), damageRange);
	
	if(hasStatus(imgStatusDangerousTraps)){ damage *= 2; }
	
	if(ww.curTrap == objSpikeTrap){ damage -= pc.resistPhys; }
	if(ww.curTrap == objFireTrap){ damage -= pc.resistHeat; }
	if(ww.curTrap == objShockTrap){ damage -= pc.resistEnergy; }
	
	if(damage < 1){ damage = 1; }
	
	harmPlayer(damage, "");
	
	
}