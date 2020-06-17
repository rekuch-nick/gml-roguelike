//scope: called form pc
var tx = argument0;
var ty = argument1;

var t = ww.mmap[tx, ty];



var damage = 0;
var isProc = false;

//roll damage by arm type
switch(arm.armType){
	case 2:
		damage += irandom_range(physPower / 3, physPower);
		break;
		
	case 1:
		damage += irandom_range(1, physPower / 2) + irandom_range(1, physPower / 2);
		break;
	
	default:
		damage += irandom_range(1, physPower);
}

//roll for crit proc
var procRoll = irandom_range(0, 99);
if(procRoll + t.resistProc < proc){
	
	isProc = true;
	damage *= 1 + (procPower / 100);
	
	
}

//reduce damage by t def
damage = max(1, damage - t.resistPhys);


//roll for hit
hitRoll = irandom_range(0, 99) + aim;
if(hitRoll < t.evade){
	// miss condition
	var s = instance_create_depth(t.xSpot * 60 + 30, t.ySpot * 60 + 30, -9000, objEffect);
	s.text = string("Miss");
	s.textColor = c_white;
	
} else {
	if(hasStatus(imgStatusPowerAttack)){ damage += 10; consumeStatus(imgStatusPowerAttack); }
	
	if(isProc && hasPower("Proc Shield")){
		pc.sp = clamp(pc.sp + 10, 0, pc.msp);
	}
	
	damage = floor(damage);
	t.hp -= damage;
	
	var s = instance_create_depth(t.xSpot * 60 + 30, t.ySpot * 60 + 30, -9000, objEffect);
	s.text = string(damage);
	if(isProc){ s.text = s.text + "!"; }
	s.textColor = c_white;
	
}




ap = 0;
canAttack = false;
bumpAt(pc, tx, ty);



