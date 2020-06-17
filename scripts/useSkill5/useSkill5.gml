//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;





var t = objBot01;

if(ww.bmap[xPoint, yPoint] == noone && ww.mmap[xPoint, yPoint] == noone){
	spawnMob(t, xPoint, yPoint);
	ww.mmap[xPoint, yPoint].foe = false;
	ww.mmap[xPoint, yPoint].allyRoam = dir;
	ww.mmap[xPoint, yPoint].dontStep = true;
	
	ep -= skillCost[1];
	ap = 0;
}





aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;