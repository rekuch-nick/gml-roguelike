var cx = argument0;
var cy = argument1;

var tries = 0;

while(tries < 20){
	tries ++;
	var a = cx + irandom_range(-1, 1);
	var b = cy + irandom_range(-1, 1);
	if(!inBounds(a, b)){ continue; }
	if(a == cx && b == cy){ continue; }
	if(ww.bmap[a, b] != noone){ continue; }
	if(ww.mmap[a, b] != noone){ continue; }
	var t = ww.fmap[a, b].object_index;
	if(t != objWater && t != objAcid && t != objLava){ continue; }
	
	spawnMob(ww.waterMob, a, b);
	ww.mmap[a, b].skipTurn = true;
	return;
	
}

while(tries < 40){
	tries ++;
	var a = cx + irandom_range(-2, 2);
	var b = cy + irandom_range(-2, 2);
	if(!inBounds(a, b)){ continue; }
	if(a == cx && b == cy){ continue; }
	if(ww.bmap[a, b] != noone){ continue; }
	if(ww.mmap[a, b] != noone){ continue; }
	var t = ww.fmap[a, b].object_index;
	if(t != objWater && t != objAcid && t != objLava){ continue; }
	
	spawnMob(ww.waterMob, a, b);
	ww.mmap[a, b].skipTurn = true;
	return;
	
}