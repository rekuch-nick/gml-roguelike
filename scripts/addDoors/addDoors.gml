var n = argument0;
var tries = 0;

while(tries < 1000 && n > 0){
	tries ++;
	var a = irandom_range(xStart + 1, xBounds - 2);
	var b = irandom_range(yStart + 1, yBounds - 2);
	
	if(bmap[a, b] != "wall"){ continue; }
	if(fmap[a, b] != "floor"){ continue; }
	var hWall = bmap[a+1, b] != "" && bmap[a-1, b] != "" ? true : false;
	var vWall = bmap[a, b+1] != "" && bmap[a, b-1] != "" ? true : false;
	if(hWall == vWall){ continue; }
	var adjWalls = 0;
	if(bmap[a+1, b] != ""){ adjWalls ++; }
	if(bmap[a-1, b] != ""){ adjWalls ++; }
	if(bmap[a, b+1] != ""){ adjWalls ++; }
	if(bmap[a, b-1] != ""){ adjWalls ++; }
	if(adjWalls != 2){ continue; }
	
	bmap[a, b] = "door";
	fmap[a, b] = "doorway";
	n --;
}