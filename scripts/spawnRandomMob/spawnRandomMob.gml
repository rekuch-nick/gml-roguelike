
// spawn mob
var tries = 0;
var okay = false;
while(!okay && tries < 1000){
	tries ++;
	var a = irandom_range(ww.xStart, ww.xBounds - 1);
	var b = irandom_range(ww.yStart, ww.yBounds - 1);
	okay = true;
	
	if(!inBounds(a, b)){ okay = false; continue; }
	if(ww.bmap[a, b] != noone){ okay = false; }
	if(ww.mmap[a, b] != noone){ okay = false; }
	if(ww.fmap[a, b].object_index == objSign){ okay = false; }
	if(ww.fmap[a, b].object_index == objExit){ okay = false; }
	if(ww.fmap[a, b].object_index == objMysteryTile){ okay = false; }
	if(ww.fmap[a, b].object_index == objWater){ okay = false; }
	if(ww.fmap[a, b].object_index == objAcid){ okay = false; }
	if(ww.fmap[a, b].object_index == objLava){ okay = false; }
	if(a == pc.xSpot && b == pc.ySpot){ okay = false; }
	if(a == pc.xSpot && abs(b - pc.ySpot) <= 1){ okay = false; }
	if(b == pc.ySpot && abs(a - pc.xSpot) <= 1){ okay = false; }
	
	
	
}
if(okay){
	var t = ww.commonMob;
	if(irandom_range(0, 5) == 0){ t = ww.rareMob; }
	if(ww.timeInDeep % 15 == 0){
		ww.timeInDeep ++;
		t = ww.huntMob;
	}
	ww.mmap[a, b] = instance_create_depth(a * 60 + 30, b * 60 + 30, -2004 - (b * 10), t);
	ww.mmap[a, b].xSpot = a;
	ww.mmap[a, b].ySpot = b;
}