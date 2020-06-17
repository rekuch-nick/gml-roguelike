xBest = -1;
yBest = -1;

for(var a=ww.xStart; a<ww.xBounds; a++){
	for(var b=ww.yStart; b<ww.yBounds; b++){
		
		if(mapStatus[a, b] == "open"){
			if(xBest == -1 || costReal[a, b] + costGuess[a, b] < costReal[xBest, yBest] + costGuess[xBest, yBest]){
				xBest = a;
				yBest = b;
			}
			
		}
		
	}
}

xCursor = xBest;
yCursor = yBest;