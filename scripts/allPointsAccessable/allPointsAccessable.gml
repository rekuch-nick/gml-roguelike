//find an initial accessile point
//var xx = xStart; var yy = yStart;
//while(bmap[xx, yy] != ""){
//	xx ++;
//	if(xx >= xBounds){
//		xx = xStart;
//		yy ++;
//	}
//}

var xx = pc.xSpot; var yy = pc.ySpot;


noPath = false;

for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		
		if(xx == a && yy == b){ continue; }
		if(bmap[a, b] != ""){ continue; }
		if(abs(xx - a) + abs(yy - b) == 1){ continue; }
		
		if(pointStatus[a, b] == "no"){
			pathFind(a, b, xx, yy, false);
			if(!noPath){ pointStatus[a, b] = "yes"; }
		} else {
			noPath = false;
		}
		
		if(noPath){ 
			//show_debug_message("can't reach " + string(a) + ", " + string(b));
			xCarve = a;
			yCarve = b;
			return false; 
		}
		
	}
}
//show_debug_message("all clear");
return true;