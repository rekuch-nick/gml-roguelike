//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;





var t = objBot01; var cost = skillCost[5];

var roll = irandom_range(1, 100) + (energyPower * 3);

if(ep >= cost * 2 && roll >= 60){ cost *= 2; t = objBot02; }
if(ep >= cost * 2 && roll >= 100){ cost *= 2; t = objBot03; }
if(ep >= cost * 2 && roll >= 140){ cost *= 2; t = objBot04; }
if(ep >= cost * 2 && roll >= 180){ cost *= 2; t = objBot05; }





if(ww.bmap[xPoint, yPoint] == noone && ww.mmap[xPoint, yPoint] == noone){
	spawnMob(t, xPoint, yPoint);
	ww.mmap[xPoint, yPoint].foe = false;
	ww.mmap[xPoint, yPoint].allyRoam = dir;
	ww.mmap[xPoint, yPoint].dontStep = true;
	
	ep -= cost;
	ap = 0;
}





aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;