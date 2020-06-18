var t = argument0;
var dc = argument1;

for(var a = xStart; a < xBounds; a ++){
	for(var b = yStart; b < yBounds; b ++){
		if(fmap[a, b] == "floor" && bmap[a, b] == "" && irandom_range(0, 99) < dc){
			fmap[a, b] = t;
		}
	}
}