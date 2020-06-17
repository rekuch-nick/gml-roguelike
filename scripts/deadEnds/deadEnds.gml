for(var a=xStart + 1; a<xBounds - 1; a++){
	for(var b=yStart + 1; b<yBounds - 1; b++){
		
		if(bmap[a, b] == ""){
			var adjWalls = 0;
			var xOpen = 0; var yOpen = 0;
			if(bmap[a-1, b] != "" && bmap[a-1, b] != "chest"){ adjWalls ++; } else { xOpen = a-1; yOpen = b; }
			if(bmap[a+1, b] != "" && bmap[a+1, b] != "chest"){ adjWalls ++; } else { xOpen = a+1; yOpen = b; }
			if(bmap[a, b-1] != "" && bmap[a, b-1] != "chest"){ adjWalls ++; } else { xOpen = a; yOpen = b-1; }
			if(bmap[a, b+1] != "" && bmap[a, b+1] != "chest"){ adjWalls ++; } else { xOpen = a; yOpen = b+1; }
			
			if(adjWalls == 3){
				//is a dead end
				
				if(irandom_range(0, 1) == 0){
					bmap[a, b] = "chest";
					//if(irandom_range(0, 1)==0){ bmap[xOpen, yOpen] = "door"; }
				}
		
			
			}
		}
	}
}