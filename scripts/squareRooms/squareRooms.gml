for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		bmap[a, b] = "wall";
	}
}

var tries = 0;
while(tries < 100){
	tries ++;

	x0 = irandom_range(xStart, xBounds - 3);
	y0 = irandom_range(yStart, yBounds - 3);
	
	xR = irandom_range(3, 7);
	yR = irandom_range(3, 6);
	
	var spots = 0;

	for(var a=x0; a<x0+xR; a++){
		for(var b=y0; b<y0+yR; b++){
			if(!inBounds(a, b)){ continue; }
			if(bmap[a, b] != "wall"){ continue; }
			if(inBounds(a-1, b) && bmap[a-1, b] == ""){ continue; }
			if(inBounds(a+1, b) && bmap[a+1, b] == ""){ continue; }
			if(inBounds(a, b-1) && bmap[a, b-1] == ""){ continue; }
			if(inBounds(a, b+1) && bmap[a, b+1] == ""){ continue; }
			
			bmap[a, b] = "node";
			spots ++;
		}
	}
	
	//if(spots > 0){
	//	var xD = x0 - 1;
	//	var yD = y0 + irandom_range(0, yR);
	//	if(inBounds(xD, yD)){ bmap[xD, yD] = "door"; }
	//}
	
	
	
	
	for(var a=x0; a<x0+xR; a++){
		for(var b=y0; b<y0+yR; b++){
			if(!inBounds(a, b)){ continue; }
			
			if(bmap[a, b] == "node"){ bmap[a, b] = ""; }
		}
	}
	
	
	/*
	for(var a=xStart; a<xBounds; a++){
		for(var b=yStart; b<yBounds; b++){
			pointStatus[a, b] = "no";
		}
	}
	var tries = 0;
	while(!allPointsAccessable() && tries < 1000){
		tries ++;
		show_debug_message("__" + string(tries));
		
		var okay = false;
		var tries2 = 0;
		while(!okay && tries2 < 100){
			tries2 ++;
			show_debug_message("looking for door: " + string(tries2));
			
			okay = false;
			var a = irandom_range(xStart + 1, xBounds - 2);
			var b = irandom_range(yStart + 1, yBounds - 2);
			
			if(bmap[a, b] != ""){
				if(bmap[a-1, b] == "" && bmap[a+1, b] == "" && bmap[a, b-1] != "" && bmap[a, b+1] != ""){ okay = true; }
				if(bmap[a-1, b] != "" && bmap[a+1, b] != "" && bmap[a, b-1] == "" && bmap[a, b+1] == ""){ okay = true; }
			}
		}
		
		bmap[a, b] = "";
	}
	*/
	
	
	
	
	
	
	
	
}

removeSingleSpaces();

bmap[pc.xSpot, pc.ySpot] = "";

