var t = argument0;
var a = argument1;
var b = argument2;

if(ww.bmap[a, b] != noone){
	instance_destroy(ww.bmap[a, b]);
	ww.bmap[a, b] = noone;
}

ww.bmap[a, b] = instance_create_depth(a * 60, b * 60, -2002 - (b * 10), t);