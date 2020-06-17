//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;


if(dir == "up" && ep >= cost3[0]){
	if(!hasStatus(imgStatusPowerAttack)){
		var s = instance_create_depth(0, 0, -6001, objStatus);
		s.isBuff = true; s.deeps = -1;
		ep -= cost3[0];
	}
}

if(dir == "right" && energyPower >= powToUse2 && ep >= cost3[1]){
	if(!hasStatus(imgStatusEvadeUp)){
		var s = instance_create_depth(0, 0, -6001, objStatus);
		s.sprite_index = imgStatusEvadeUp;
		s.isBuff = true; s.deeps = 0;
		ep -= cost3[1];
	}
}

if(dir == "right" && energyPower >= powToUse3 && ep >= cost3[2]){
	// create item code
	ep -= cost3[2];
}




if(dir == "left" && energyPower >= powToUse4 && ep >= cost3[3]){
	if(!hasStatus(imgStatusHackUp)){
		var s = instance_create_depth(0, 0, -6001, objStatus);
		s.sprite_index = imgStatusHackUp;
		s.isBuff = true; s.deeps = 0;
		ep -= cost3[3];
	}
}







//ep -= skillCost[1];
aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;