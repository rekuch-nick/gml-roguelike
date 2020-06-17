var unit = argument0;
var target = argument1;

var s = instance_create_depth(x, y, -9000, objEffect);
s.sprite_index = shotType;
s.chasePlayer = target;
			
var isProc = false;


//roll damage
var damage = irandom_range(1, unit.shotDamageRange) + unit.shotPlus;
		
//roll for crit
if(irandom_range(0, 99) + target.resistProc < unit.proc){
	isProc = true;
	damage *= 1 + (unit.procPower / 100);
}
		
		
			// reduce damage
			if(unit.shotElement == ""){ damage = max(1, damage - target.resistPhys); }
			if(unit.shotElement == "energy"){ damage = max(1, damage - target.resistEnergy); }
			if(unit.shotElement == "heat"){ damage = max(1, damage - target.resistHeat); }
		
			damage = floor(damage);
		
			//roll for hit
			if(irandom_range(0, 99) + unit.aim < target.evade){
				// miss condition
				s.afterNote = "miss"; s.afterDamage = 0;
			} else {
				if(isProc){
					s.afterNote = "crit"; s.afterDamage = damage;
				} else {
					s.afterNote = ""; s.afterDamage = damage;
				}
			}
		
			
		
			if(shootOnce){
				unit.image_index ++;
				unit.shotType = noone;
			}