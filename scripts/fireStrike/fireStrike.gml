var a = argument0;
var b = argument1;
if(!inBounds(a, b)){ return; }

instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objFireEffect);
			
impactTile(a, b, "fire");
			
var t = ww.mmap[a, b];
if(t != noone && t.foe){
				

	var damage = 0;
	var isProc = false;

	//roll damage for [2]
	damage += irandom_range(1, energyPower / 2) + irandom_range(1, energyPower / 2);
				

	//roll for crit proc
	var procRoll = irandom_range(0, 99);
	if(procRoll + t.resistProc < proc){
	
		isProc = true;
		damage *= 1 + (procPower / 100);
		
	}

	//reduce damage by t heat res
	damage = max(1, damage - t.resistHeat);

				
	damage = floor(damage);
	
	t.hp -= damage;

	var s = instance_create_depth(t.xSpot * 60 + 30, t.ySpot * 60 + 30, -9000, objEffect);
	s.text = string(damage);
	if(isProc){ s.text = s.text + "!"; }
	s.textColor = c_white;
				
				
				
}