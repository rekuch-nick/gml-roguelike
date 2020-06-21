var unit = argument0;
var target = argument1;

bumpAt(unit, target.xSpot, target.ySpot);	

var isProc = false;


//dmgType = "";

//roll damage
var damage = 0;


switch(unit.atkType){
	case 2:
		damage = irandom_range(unit.atkRange / 3, unit.atkRange);
		break;
		
	case 1:
		damage = irandom_range(unit.atkMin, unit.atkRange / 2) + irandom_range(1, unit.atkRange / 2);
		break;
	
	default:
		damage = irandom_range(unit.atkMin, unit.atkRange);
}
damage += unit.atkPlus;




		

//roll for crit
if(irandom_range(0, 99) + target.resistProc < unit.proc){
	isProc = true;
	damage *= 1 + (unit.procPower / 100);
}
		
		
// reduce damage
	if(unit.dmgType == ""){ damage = max(1, damage - target.resistPhys); }
	if(unit.dmgType == "energy"){ damage = max(1, damage - target.resistEnergy); }
	if(unit.dmgType == "heat"){ damage = max(1, damage - target.resistHeat); }
		
	damage = floor(damage);
		
	//roll for hit
	if(irandom_range(0, 99) + unit.aim < target.evade){
		// miss condition
		if(target == pc){ 
			if(pc.talent[2] && irandom_range(0, 1) == 0){
				var sx = 0; var sy = 0;
				if(unit.xSpot == pc.xSpot && unit.ySpot < pc.ySpot){ sy = -15; }
				if(unit.xSpot > pc.xSpot && unit.ySpot == pc.ySpot){ sx = 15; }
				if(unit.xSpot == pc.xSpot && unit.ySpot > pc.ySpot){ sy = 15; }
				if(unit.xSpot < pc.xSpot && unit.ySpot == pc.ySpot){ sx = -15; }
				var s = instance_create_depth(pc.xSpot * 60 + 30, pc.ySpot * 60 + 30, -9000, objLightningShot);
				s.xSpeed = sx; s.ySpeed = sy;
				
			}
			harmPlayer(0, "miss"); 
		} else {
			
			var s = instance_create_depth(target.xSpot * 60 + 30, target.ySpot * 60 + 30, -9000, objEffect);
			if(target.foe){ s.text = string("Miss"); } else { s.text = string("Dodge"); }
			s.textColor = c_white;
			if(!target.foe){s.textColor = c_gray;}
			
		}
	} else {
		// attack connected
		if(target == pc){
			var note = "";
			if(isProc){ note = "crit"; }
			harmPlayer(damage, note);
		} else {
			if(unit == pc) {
				if(!isProc && pc.talent[1]){ pc.stackingCritBonus += 10; pc.checkStats = true; }
				if(isProc){
					if(hasPower("Proc Shield")){ pc.sp = clamp(pc.sp + 10, 0, pc.msp); }
					pc.stackingCritBonus = 0; pc.checkStats = true;
				}
				if(hasStatus(imgStatusPowerAttack)){ damage += 10; consumeStatus(imgStatusPowerAttack); }
				if(hasStatus(imgStatusComboAttack)){ damage += 4; consumeStatus(imgStatusComboAttack); }
				if(pc.talent[5]){
					target.resistPhys = clamp(target.resistPhys - 1, 0, 1000000);
					target.resistEnergy = clamp(target.resistEnergy - 1, 0, 1000000);
					target.resistHeat = clamp(target.resistHeat - 1, 0, 1000000);
					target.resistProc = clamp(target.resistProc - 1, 0, 1000000);
				}
			}
			
			target.hp -= damage;
			var s = instance_create_depth(target.xSpot * 60 + 30, target.ySpot * 60 + 30, -9000, objEffect);
			s.text = string(damage);
			if(isProc){ s.text = s.text + "!"; }
			s.textColor = c_white;
			if(!target.foe){s.textColor = c_gray;}
			
		}
		
		
		

	}
	