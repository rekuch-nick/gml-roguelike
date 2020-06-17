var g = "grass";

for(var a = xStart; a < xBounds; a ++){
	for(var b = yStart; b < yBounds; b ++){
		if(fmap[a, b] == "floor" && bmap[a, b] == "" && irandom_range(0, 1) == 0){
			fmap[a, b] = g;
		}
	}
}