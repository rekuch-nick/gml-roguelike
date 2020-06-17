//exit
var okay = false;
while(!okay){
	okay = true;
	var a = irandom_range(xStart, xBounds-1);
	var b = irandom_range(yStart, yBounds-1);
	
	var d = abs(pc.xSpot - a) + abs(pc.ySpot - b);
	var minD = ((xBounds - xStart) / 3) + ((yBounds - yStart) / 3);
	
	if(d < minD){ okay = false; }
	if(bmap[a, b] != ""){ okay = false; }
	if(fmap[a, b] == "mystery"){ okay = false; }
	var adjSpaces = 0;
	var tx = a; var ty = b - 1;
	for(var i=1; i<5; i++){
		if(i == 2){ tx = a + 1; ty = b; }
		if(i == 3){ tx = a; ty = b + 1; }
		if(i == 4){ tx = a - 1; ty = b; }
		if(inBounds(tx, ty) && bmap[tx, ty] == ""){ adjSpaces ++; }
	}
	if(adjSpaces < 1){ okay = false; }
}

tmap[a, b] = "";
fmap[a, b] = "exit";



//sign
okay = false;
while(!okay){
	okay = true;
	var a = irandom_range(xStart, xBounds-1);
	var b = irandom_range(yStart, yBounds-1);
	
	
	if(bmap[a, b] != ""){ okay = false; }
	if(fmap[a, b] != "floor"){ okay = false; }
}

tmap[a, b] = "";
fmap[a, b] = "sign";
