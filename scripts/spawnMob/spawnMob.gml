var t = argument0;
var a = argument1;
var b = argument2;

if(ww.mmap[a, b] != noone){
	instance_destroy(ww.mmap[a, b]);
	ww.mmap[a, b] = noone;
}

ww.mmap[a, b] = instance_create_depth(a * 60 + 30, b * 60 + 30, -2002 - (b * 10), t);
ww.mmap[a, b].xSpot = a;
ww.mmap[a, b].ySpot = b;