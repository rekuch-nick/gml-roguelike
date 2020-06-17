if(argument0){
	var t = ww.curTrap;
} else {
	var t = objHiddenTrap;
}
var a = argument1;
var b = argument2;

if(ww.tmap[a, b] != noone){
	instance_destroy(ww.tmap[a, b]);
	ww.tmap[a, b] = noone;
}

ww.tmap[a, b] = instance_create_depth(a * 60, b * 60, -2001 - (b * 10), t);