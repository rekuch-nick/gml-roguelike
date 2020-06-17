var t = argument0;
var a = argument1;
var b = argument2;

if(ww.fmap[a, b] != noone){
	instance_destroy(ww.fmap[a, b]);
	ww.fmap[a, b] = noone;
}

ww.fmap[a, b] = instance_create_depth(a * 60, b * 60, -2000 - (b * 10), t);