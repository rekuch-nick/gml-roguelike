//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;

var sx = 0; var sy = 0;

if(dir == "right"){ sx = 15; }
if(dir == "left"){ sx = -15; }
if(dir == "down"){ sy = 15; }
if(dir == "up"){ sy = -15; }


			
var s = instance_create_depth(xSpot * 60 + 30, ySpot * 60 + 30, -9000, objLightningShot);
s.xSpeed = sx;
s.ySpeed = sy;
			
if(!hasStatus(imgStatusComboAttack) && hasPower("Combo Chain")){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusComboAttack;
	s.isBuff = true; s.deeps = -1;
}


ep -= skillCost[1];
aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;