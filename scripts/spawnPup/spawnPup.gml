var tNote = argument0;
var a = argument1;
var b = argument2;


if (tNote == "gear+"){
	var t = objGear;
} else {
	var t = tNote;	
}

if(t == "parts"){
	var r = irandom_range(1, 100);
	t = objParts01;
	if(r >= 55){ t = objParts02; }
	if(r >= 85){ t = objParts05; }
	if(r >= 96){ t = objParts10; }
	if(r >= 99){ t = objParts20; }
}

if(ww.pmap[a, b] != noone){
	instance_destroy(ww.pmap[a, b]);
	ww.pmap[a, b] = noone;
}

ww.pmap[a, b] = instance_create_depth(a * 60, b * 60, -2003 - (b * 10), t);
ww.pmap[a, b].xSpot = a;
ww.pmap[a, b].ySpot = b;
if(t == objGear){ ww.pmap[a, b].rollSelf = true; }
if(tNote == "gear+"){ ww.pmap[a, b].rollHigh = true; }

return ww.pmap[a, b];