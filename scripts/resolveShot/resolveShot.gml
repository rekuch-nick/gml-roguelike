//scope: called from effect.. ew
var type = argument0;
var tx = argument1;
var ty = argument2;
var t = ww.mmap[tx, ty];

remove = true;





			


if(t != noone && t.foe){
	

	var damage = 0;
	var isProc = false;

	//roll damage
	if(type == objLightningShot){
		damage += irandom_range(1, pc.energyPower);
	}
				

	//roll for crit proc
	var procRoll = irandom_range(0, 99);
	if(procRoll + t.resistProc < pc.proc){
	
		isProc = true;
		damage *= 1 + (pc.procPower / 100);
	}

	//reduce damage by t energy res
	damage = max(1, damage - t.resistEnergy);

				
				
	//roll for hit
	hitRoll = irandom_range(0, 99) + pc.aim;
	if(hitRoll < t.evade){
		// miss condition
		var s = instance_create_depth(t.xSpot * 60 + 30, t.ySpot * 60 + 30, -9000, objEffect);
		s.text = string("Miss");
		s.textColor = c_white;
	
	} else {
		damage = floor(damage);
		t.hp -= damage;

		var s = instance_create_depth(t.xSpot * 60 + 30, t.ySpot * 60 + 30, -9000, objEffect);
		s.text = string(damage);
		if(isProc){ s.text = s.text + "!"; }
		s.textColor = c_white;

	}
				
}
			

			
