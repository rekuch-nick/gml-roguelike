var cx = argument0;
var cy = argument1;



while(ww.fmap[cx - 1, cy].object_index == objMysteryTile){ cx --; }
while(ww.fmap[cx, cy - 1].object_index == objMysteryTile){ cy --; }

for(var a=cx; a<cx+5; a++){ for(var b=cy; b<cy+5; b++){
	instance_destroy(ww.fmap[a, b]);
	ww.fmap[a, b] = instance_create_depth(a * 60, b * 60, -2000 - (b * 10), objFloor);
}}

var mx = cx + 2; var my = cy + 2;

var r = irandom_range(1, 5);
var i = pc.deep;
while(i >= 10){ i -= 10; }
if(i == 8){ r = 1; }

//r = 5; /////


if(r == 1){ // construction pod
	spawnFloor(objUpgradePod, mx, my);
}
if(r == 2){ // system room
	spawnBlock(objSystemIn, mx, my);
}
if(r == 3){ // gear room
	
	spawnPup("gear+", mx, my);
	
	spawnBlock(objBlock, mx - 1, my - 1);
	spawnBlock(objBlock, mx - 1, my + 1);
	spawnBlock(objBlock, mx + 1, my - 1);
	spawnBlock(objBlock, mx + 1, my + 1);
	
	
	if(irandom_range(0, 3) != 0){
		spawnTrap(false, mx - 1, my);
		spawnTrap(false, mx + 1, my);
		spawnTrap(false, mx, my + 1);
		spawnTrap(false, mx, my - 1);
	}
}

if(r == 4){ // part room
	for(var a=mx-2; a<mx+3; a++){
		for(var b=my-2; b<my+3; b++){
			spawnPup(rollParts(), a, b);
		}
	}
}

if(r == 5){ //walled in gear
	spawnBlock(objWall, mx-1, my-1);
	spawnBlock(objWall, mx, my-1);
	spawnBlock(objWall, mx+1, my-1);
	
	spawnBlock(objWall, mx-1, my);
	spawnPup("gear+", mx, my);
	spawnBlock(objWall, mx+1, my);
	
	spawnBlock(objWall, mx-1, my+1);
	spawnBlock(objWall, mx, my+1);
	spawnBlock(objWall, mx+1, my+1);
	
}




if(ww.bmap[pc.xSpot, pc.ySpot] != noone){
	instance_destroy(ww.bmap[pc.xSpot, pc.ySpot]);
	ww.bmap[pc.xSpot, pc.ySpot] = noone;
}