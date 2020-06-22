
//var foundOne = true;
//while(foundOne){
	for(var a=xStart; a<xBounds; a++){
		for(var b=yStart; b<yBounds; b++){
			if(bmap[a, b] == ""){
				var adjWalls = 0;
				
				if(!inBounds(a-1, b) || bmap[a-1, b] != ""){ adjWalls ++; }
				if(!inBounds(a+1, b) || bmap[a+1, b] != ""){ adjWalls ++; }
				if(!inBounds(a, b-1) || bmap[a, b-1] != ""){ adjWalls ++; }
				if(!inBounds(a, b+1) || bmap[a, b+1] != ""){ adjWalls ++; }
				
				if(adjWalls == 4){
					bmap[a, b] = "wall";
				}
			}
		}
	}
//}
