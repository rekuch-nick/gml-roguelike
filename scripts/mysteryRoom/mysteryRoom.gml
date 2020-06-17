

var tries = 0;


while(tries < 2000){
	tries ++;
	
	var a = irandom_range(xStart + 3, xBounds - 4);
	var b = irandom_range(yStart + 3, yBounds - 4);
	
	var disToP = abs(a - pc.xSpot) + abs(b - pc.ySpot);
	if(disToP < 10){ continue; }
	
	var overlap = false;
	for(var xx=a-3; xx<a+4; xx++){
		for(var yy=b-3; yy<b+4; yy++){
			if(!inBounds(xx, yy)){continue;}
			if(fmap[xx, yy] == "mystery"){ overlap = true; }
		}
	}
	if(overlap){ continue; }
	
	
	for(var xx=a-2; xx<a+3; xx++){
		for(var yy=b-2; yy<b+3; yy++){
			bmap[xx, yy] = "";
			tmap[xx, yy] = "";
			fmap[xx, yy] = "mystery";
		}
	}
	
	return;
}