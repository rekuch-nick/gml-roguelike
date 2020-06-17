var a = argument0;
var b = argument1;

if(!inBounds(a, b)){ return; }
if(ww.bmap[a, b] == noone){ return; }

var t = ww.bmap[a, b].object_index;
if(t != objDoor && t != objChest){ return; }

if(t == objChest && ww.pmap[a, b] == noone){
	ww.pmap[a, b] = instance_create_depth(a * 60, b * 60, -2003 - (b * 10), objGear);
	ww.pmap[a, b].xSpot = a; ww.pmap[a, b].ySpot = b;
	ww.pmap[a, b].rollSelf = true;
}
	
instance_destroy(ww.bmap[a, b]);
ww.bmap[a, b] = noone;
pleaseSystem("trans", 2);
	
unlock(a-1, b);
unlock(a+1, b);
unlock(a, b-1);
unlock(a, b+1);