for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		if(irandom_range(0, 2)!=0){
			bmap[a, b] = "wall";
		} else {
			bmap[a, b] = "";
		}
	}
}

for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		if(bmap[a, b] == "wall"){
			bmap[a, b] = "weakWall";
		}
	}
}

for(var a=xStart + 1; a<xBounds; a+=2){
	for(var b=yStart + 1; b<yBounds; b+=2){
		if(irandom_range(0, 1)==0){
			bmap[a, b] = "wall";
		}
	}
}











bmap[pc.xSpot, pc.ySpot] = "";