image_xscale = 4; image_yscale = 4;
depth = -3000;

xNext = -1;
yNext = -1;

mouseWalk = false;
mouseReleased = false;
onGrass = "";
triggeredTile = true;


deep = 0; ////////////////////////

greatestDeep = deep;

xSpot = 5;
ySpot = 5;
x = xSpot * 60 + 30; y = ySpot * 60 + 30;
moving = false;



setBaseStats();



lastSystem = 0;

foe = false;
canAttack = true;

checkStats = true;

clickSkill = -1;
aiming = -1;
aimAni = 0;

debugMode = false;
dontMoveUntilKeysReleased = false;
dontEnterUntilKeyReleased = false;

clickToBomb = false;
clickToETank = false;
clickSystem = false;
jumping = false;
jumpUpTime = 0;

page[1] = true;
for(var i=0; i<51; i++){
	page[i] = false;
}
for(var i=1; i<11; i++){
	page[i] = true;
}
clickSign = false;

///
talentPoints = 6;
talentPointsMax = 6;
for(var i=0; i<32; i++){
	talent[i] = false;
	lastTalent[i] = false;
}

class = 0;
fill = false;


