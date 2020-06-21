//adjust player to odd spaces after adjust for start

pc.checkStats = true;

// remove old statuses
with(objStatus){
	if(isHazard){ instance_destroy(); }
	if(deeps != -1){ if(deeps == 0){ instance_destroy(); } else { deeps --; }}
}
with(objCompass){ instance_destroy(); }


pc.deep ++;
var sizeMod = floor(pc.deep / 2);
sizeMod = clamp(sizeMod, 0, 20);

timeInDeep = 0;



xStart = 6;
yStart = 6;
xBounds = 15 + sizeMod;
yBounds = 13 + sizeMod;



waterType = "water";
hasWater = (pc.deep > 10 && irandom_range(0, 5) == 0) ? true : false;
hasWaterV = (pc.deep > 10 && irandom_range(0, 5) == 0) ? true : false;

rollHazards();



rollMobs();


//pick trapType
curTrap = objSpikeTrap;






//shift pc into place for mazemaking
if((pc.xSpot - xStart) % 2 != 0){
	pc.xSpot ++;
	if(pc.xSpot >= xBounds){ pc.xSpot -= 2; }
}
if((pc.ySpot - yStart) % 2 != 0){
	pc.ySpot ++;
	if(pc.ySpot >= yBounds){ pc.ySpot -= 2; }
}
pc.x = pc.xSpot * 60 + 30;
pc.y = pc.ySpot * 60 + 30;

clearMap();
perfectMaze();
removeWalls(15);


if(hasWater){ makeRiver(); }
if(hasWaterV){ makeRiverVert(); }

if(pc.deep >= 10){ mysteryRoom(); }

deadEnds();

var n = irandom_range(0, 6);
if(pc.deep < 9){ n = 0; }
addDoors(n);



var n = irandom_range(1, 4);
if(pc.deep < 3){ n = 0; }
hideChests(n);


var n = irandom_range(1, 4);
if(pc.deep < 11){ n = 0; }
hideTraps(n);



placeExit();


placeTreasure("");





if(pc.deep >= 11){ placeSystem(); }

//bmap[7, 7] = ""; fmap[7, 7] = "pod";

if(irandom_range(0, 9) == 0){ makeFloorByPercent("prisim", 10); }
//makeFloorByPercent("skillpod", 10);
//makeFloorByPercent("shovel", 10);
//makeFloorByPercent("scope", 10);
//makeFloorByPercent("pox", 10);

if(hazGrass){ makeGrass(); }

initMap();