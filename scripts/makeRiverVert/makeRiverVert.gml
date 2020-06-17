var w = 3;
var cy = yStart;
var cx = irandom_range(xStart, xBounds - w - 1);
var t = waterType;

while(cy < yBounds){
	
	fmap[cx, cy] = t; bmap[cx, cy] = "";
	for(var i=0; i<w; i++){
		if(inBounds(cx + i, cy)){
			fmap[cx + i, cy] = t; bmap[cx + i, cy] = "";
			
		}
	}
	
	if(irandom_range(0, 3) != 0){ cy ++; }
	cx = clamp(cx + irandom_range(-1, 1), xStart, xBounds);
}