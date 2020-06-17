var a = argument0;
var b = argument1;

if(!inBounds(a, b)){ return; }

var chest = false;
var trap = false;


if(ww.bmap[a, b] != noone && ww.bmap[a, b].object_index == objHiddenChest && !ww.bmap[a, b].checked){
	chest = true;
}

if(ww.tmap[a, b] != noone && ww.tmap[a, b].object_index == objHiddenTrap && !ww.tmap[a, b].checked){
	trap = true;
}

if(!chest && !trap){ return; }

var roll = irandom_range(1, 100) + pc.see;
var dc = 49 + pc.deep;
if(hasStatus(imgStatusHiddenTraps) && trap){dc += 20; }

if(roll >= dc){
	var s = instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objEffect);
	s.text = string("<!>");
	s.textColor = c_lime;
	
	if(chest){
		instance_destroy(ww.bmap[a, b]);
		ww.bmap[a, b] = instance_create_depth(a * 60, b * 60, -2002 - (b * 10), objChest);
	}
	if(trap){
		instance_destroy(ww.tmap[a, b]);
		ww.tmap[a, b] = instance_create_depth(a * 60, b * 60, -2002 - (b * 10), ww.curTrap);
	}
} else {
	if(chest){ ww.bmap[a, b].checked = true; }
	if(trap){ ww.tmap[a, b].checked = true; }
}