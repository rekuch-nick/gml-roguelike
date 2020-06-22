for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		if(irandom_range(0, 1)==0){
			bmap[a, b] = "wall";
		} else {
			bmap[a, b] = "";
		}
	}
}


var n = 4; ///

//smooth
for(var i=0; i<n; i++){
	for(var a=xStart; a<xBounds; a++){
		for(var b=yStart; b<yBounds; b++){
			adjWall = 0;
			adjFloor = 0;
			
			for(var d=1; d<5; d++){
				var tx = a; var ty = b;
				if(d == 1){ ty --; }
				if(d == 2){ tx ++; }
				if(d == 3){ ty ++; }
				if(d == 4){ tx --; }
				if(inBounds(tx, ty)){
					if(bmap[tx, ty] == "wall"){
						adjWall ++;
					} else {
						adjFloor ++;
					}
				}
			}
			
			if(adjWall >= 3){ bmap[a, b] = "wall"; }
			if(adjFloor >= 3){ bmap[a, b] = ""; }
			
		}
	}
	
}



for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		pointStatus[a, b] = "no";
	}
}

bmap[pc.xSpot, pc.ySpot] = "";

//find random free point
var okay = false;
while(!okay){
	xCarve = irandom_range(xStart, xBounds - 1);
	yCarve = irandom_range(yStart, yBounds - 1);
	if(bmap[xCarve, yCarve] == ""){ okay = true; }
}




var tries = 0;
while(tries < 1000 && !allPointsAccessable()){
	tries ++;
	//show_debug_message("!allPoints, " + string(tries));
	
	var a = xCarve;
	var b = yCarve;
	
	
	okay = false;
	while(!okay){
		
		//if(irandom_range(0, 1)==0){
		//	var tx = irandom_range(xStart, xBounds - 1);
		//	var ty = b;
		//} else {
		//	var tx = a;
		//	var ty = irandom_range(yStart, yBounds - 1);
		//}
		//if(bmap[tx, ty] == ""){ okay = true; }
		
		tx = irandom_range(xStart, xBounds - 1);
		ty = irandom_range(yStart, yBounds - 1);
		//tx = pc.xSpot; ty = pc.ySpot; //////
		if(bmap[tx, ty] == ""){ okay = true; }
		
	}
	
	//carve a path from [a, b] to [tx, ty]
	var cx = a; var cy = b;
	while(cx != tx && cy != ty){
		if(irandom_range(0, 1)==0){
			if(cx < tx){cx ++;}
			if(cx > tx){cx --;}
		} else {
			if(cy < ty){cy ++;}
			if(cy > ty){cy --;}
		}
		
		bmap[cx, cy] = "";
	}
	
	
}







