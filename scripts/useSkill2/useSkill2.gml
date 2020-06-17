//scope: called from pc
var xPoint = argument0;
var yPoint = argument1;
var dir = argument2;

var cx = xSpot; var cy = ySpot;

if(dir == "right"){ cx += 2; }
if(dir == "left"){ cx -= 2; }
if(dir == "down"){ cy += 2; }
if(dir == "up"){ cy -= 2; }

for(var a = cx - 1; a <= cx + 1; a ++){
	for(var b = cy - 1; b <= cy + 1; b ++){
		if(inBounds(a, b)){
			
			fireStrike(a, b);
			
			
			
			
			
		}
	}
}

pleaseSystem("temp", 2);
ap = 0;
ep -= skillCost[2];
aiming = -1;
dontMoveUntilKeysReleased = true;
mouseReleased = false;