//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;


if(dir == "up"){
	while(ep > 0 && sp < msp){
		ep --; sp ++;
	}
}

if(dir == "right" && energyPower >= powToUse2  && ep >= cost4[1]){
	//purge code
	ep -= cost4[1];
}

if(dir == "down" && energyPower >= powToUse3&& ep >= cost4[2]){
	with(objCompass){ instance_destroy(); }
	instance_create_depth(x, y, -8000, objCompass);
	ep -= cost4[2];
}




if(dir == "left" && energyPower >= powToUse4 && ep >= cost4[3]){
	if(!hasStatus(imgStatusDamageReduction)){
		var s = instance_create_depth(0, 0, -6001, objStatus);
		s.sprite_index = imgStatusDamageReduction;
		s.isBuff = true; s.deeps = 0;
		ep -= cost4[3];
	}
	
}







//ep -= skillCost[1];
aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;