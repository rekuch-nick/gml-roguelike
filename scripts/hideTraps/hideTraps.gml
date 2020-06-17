var n = argument0;

var tries = 0;
while(n > 0 && tries < 1000){
	tries ++;
	var a = irandom_range(xStart, xBounds-1);
	var b = irandom_range(yStart, yBounds-1);
	
	if(bmap[a, b] == "" && fmap[a, b] == "floor" && tmap[a, b] == ""){
		n --;
		tmap[a, b] = "trap";
	}
}