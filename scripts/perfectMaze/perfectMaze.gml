var nodes = 0;


for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		bmap[a, b] = "wall";
	}
}

for(var a=xStart; a<xBounds; a+=2){
	for(var b=yStart; b<yBounds; b+=2){
		bmap[a, b] = "node";
		nodes ++;
	}
}

var cx = pc.xSpot; 
var cy = pc.ySpot;
var tx = cx; var ty = cy;
var xMid = cx; var yMid = cy;

xLast[0] = cx;
yLast[0] = cy;
var step = 1;
tried[1] = false;
tried[2] = false;
tried[3] = false;
tried[4] = false;

bmap[a, b] = "";
nodes --;

while(nodes >= 0){
	
	var d = irandom_range(1, 4);
	if(d == 1){ tx = cx; xMid = cx; ty = cy - 2; yMid = cy - 1; }
	if(d == 2){ tx = cx + 2; xMid = cx + 1; ty = cy; yMid = cy; }
	if(d == 3){ tx = cx; xMid = cx; ty = cy + 2; yMid = cy + 1; }
	if(d == 4){ tx = cx - 2; xMid = cx - 1; ty = cy; yMid = cy; }
	tried[d] = true;
	
	if(inBounds(tx, ty)){
		if(bmap[tx, ty] == "node"){
			nodes --;
			bmap[tx, ty] = "";
			bmap[xMid, yMid] = "";
			cx = tx; cy = ty;
			xLast[step] = cx; yLast[step] = cy;
			
			step ++;
			tried[1] = false; tried[2] = false; tried[3] = false; tried[4] = false;
		}
	}
	
	if(tried[1] && tried[2] && tried[3] && tried[4]){
		if(step > 0){			
			step --;
			cx = xLast[step];
			cy = yLast[step];
			
			tried[1] = false; tried[2] = false; tried[3] = false; tried[4] = false;
		} else {
			nodes = -1;
		}
	}
}
