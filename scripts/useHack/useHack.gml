//scope: called from pc
var a = argument0;
var b = argument1;


aiming = -1;
var gotSystem = false;
dontMoveUntilKeysReleased = true;
mouseReleased = false;

if(!inBounds(a, b)){ return; }

var lockToHack = false;
var systemToHack = false
var robotToHack = false;
var trapToHack = false;

if(ww.bmap[a, b] != noone && (ww.bmap[a, b].object_index == objDoor || ww.bmap[a, b].object_index == objChest )){ lockToHack = true; }
if(ww.bmap[a, b] != noone && (ww.bmap[a, b].object_index == objSystemIn && ww.bmap[a, b].system != 0)){ systemToHack = true; }
if(ww.mmap[a, b] != noone && ww.mmap[a, b].isRobot){ robotToHack = true; }
if(ww.tmap[a, b] != noone && ww.tmap[a, b].canHack){ trapToHack = true; }

if(!lockToHack && !systemToHack && !robotToHack && !trapToHack){ return; }


bumpAt(pc, a, b);

var hackRoll = irandom_range(1, 100) + hack;
var dc = 49 + deep;

if(lockToHack){ dc += 25; }
if(robotToHack){ dc += 25; }


if(hackRoll >= dc){
	if(!inBounds(a, b)){ return; }
	
	if(ww.bmap[a, b] != noone){
		if(ww.bmap[a, b].object_index == objDoor || ww.bmap[a, b].object_index == objChest){
			
			var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
			s.text = "Hacked";
			s.textColor = c_lime;
	
			unlock(a, b);
		}
		
		
		if(ww.bmap[a, b] != noone && ww.bmap[a, b].object_index == objSystemIn){
			if(pc.talent[29]){ pc.ep = pc.mep; }
			var i = ww.bmap[a, b].system;
			if(i == 1){
				var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
				s.text = "Hacked Cleaning";
				s.textColor = c_lime;
				pc.system = "clean";
				gotSystem = true;
			}
			if(i == 2){
				var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
				s.text = "Hacked Construction";
				s.textColor = c_lime;
				pc.system = "build";
				gotSystem = true;
			}
			if(i == 3){
				var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
				s.text = "Hacked Enviroments";
				s.textColor = c_lime;
				pc.system = "temp";
				gotSystem = true;
			}
			if(i == 4){
				var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
				s.text = "Hacked Communications";
				s.textColor = c_lime;
				pc.system = "comm";
				gotSystem = true;
			}
			if(i == 5){
				var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
				s.text = "Hacked Transportation";
				s.textColor = c_lime;
				pc.system = "trans";
				gotSystem = true;
			}
			
			
			if(gotSystem){
				//instance_destroy(ww.bmap[a, b]);
				ww.bmap[a, b].system = 0;
				ww.bmap[a, b].sprite_index = imgSystemIn;
				
				//var c = instance_create_depth(a * 60 + 30, b * 60 + 30, 2002 - (b * 10), objBlock);
				//c.sprite_index = imgSystemIn;
				//ww.bmap[a, b] = c;
			}
		}
	}
	
	if(ww.tmap[a, b] != noone){
		var t = ww.tmap[a, b].object_index;
		if(t.canHack){
			
			var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
			s.text = "Hacked";
			s.textColor = c_lime;
	
			instance_destroy(ww.tmap[a, b]);
			ww.tmap[a, b] = noone;
		}
	}
	
	
	
} else {
	
	var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
	s.text = "Hack Failed";
	s.textColor = c_lime;
		
}

ep -= skillCost[0];
ap = 0;

