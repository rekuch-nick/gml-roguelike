//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;

var cx = xSpot;
var cy = ySpot;

var sx = 0; var sy = 0;

if(dir == "right"){ sx = 1; }
if(dir == "left"){ sx = -1; }
if(dir == "down"){ sy = 1; }
if(dir == "up"){ sy = -1; }


for(var i=0; i<3; i++){
	cx += sx; cy += sy;
}

var canLand = false;
while(!canLand){
	if(!inBounds(cx, cy)){ break; }
	if(ww.bmap[cx, cy] == noone && ww.mmap[cx, cy] == noone){
		canLand = true;
		break;
	}
	cx += sx; cy += sy;
	
}

fireStrike(xSpot+1, ySpot);
fireStrike(xSpot-1, ySpot);
fireStrike(xSpot, ySpot+1);
fireStrike(xSpot, ySpot-1);
fireStrike(xSpot, ySpot);

if(canLand){
	jumpUpTime = (abs(xSpot - cx) + abs(ySpot - cy)) * 30;
	xSpot = cx; ySpot = cy;
	jumping = true;
} else {
	
}






pleaseSystem("temp", 2);
moving = true;
ap = 0;
ep -= skillCost[6];
aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;