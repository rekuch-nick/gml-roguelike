var w = 3;
var cx = xStart;
var cy = irandom_range(yStart, yBounds - w - 1);
var t = waterType;

while(cx < xBounds){
	
	fmap[cx, cy] = t; bmap[cx, cy] = "";
	for(var i=0; i<w; i++){
		if(inBounds(cx, cy + i)){
			fmap[cx, cy + i] = t; bmap[cx, cy + i] = "";
			
		}
	}
	
	if(irandom_range(0, 3) != 0){ cx ++; }
	cy = clamp(cy + irandom_range(-1, 1), yStart, yBounds);
}