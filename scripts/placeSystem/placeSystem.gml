

var tries = 0;
while(tries < 1000){
	tries ++;
	var a = irandom_range(xStart + 1, xBounds - 2);
	var b = irandom_range(yStart + 1, yBounds - 2);
	
	if(bmap[a, b] != "wall"){ continue; }
	
	
	bmap[a, b] = "system";
	break;
}