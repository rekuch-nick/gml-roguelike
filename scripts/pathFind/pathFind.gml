var xStart = argument0;
var yStart = argument1;
var xEnd = argument2;
var yEnd = argument3;
var avoidMobs = argument4;

xTemp = ds_list_create();
yTemp = ds_list_create();

///make array of all map locations set to unchecked
for(var a=ww.xStart; a<ww.xBounds; a++){
	for(var b=ww.yStart; b<ww.yBounds; b++){
		mapStatus[a, b] = "unchecked";
	}	
}

///make array of all map location's parent cords set to -1
for(var a=ww.xStart; a<ww.xBounds; a++){
	for(var b=ww.yStart; b<ww.yBounds; b++){
		xParent[a, b] = -1;
		yParent[a, b] = -1;
	}	
}

///make array of all map location's movement costs, can default to 0
for(var a=ww.xStart; a<ww.xBounds; a++){
	for(var b=ww.yStart; b<ww.yBounds; b++){
		costReal[a, b] = 0;
		costGuess[a, b] = 0;
	}	
}


//target bounds checks
while(xEnd < ww.xStart){ xEnd ++; }
while(yEnd < ww.yStart){ yEnd ++; }
while(xEnd >= ww.xBounds){ xEnd --; }
while(yEnd >= ww.yBounds){ yEnd --; }

if(xStart == xEnd && yStart == yEnd){ return; }
	
xCursor = xStart;
yCursor = yStart;
mapStatus[xStart, yStart] = "open";


status = "not done";
while(status == "not done"){
	
	pathFindPickCursor();
	
	if(xCursor == -1){
		status = "no path";
		break;
	}
	
	mapStatus[xCursor, yCursor] = "closed";
	
	if(xCursor == xEnd && yCursor == yEnd){
		status = "found path";
		break;
	}
	
	//look in all 4 adjacent spaces
	for(var dir=1; dir<=4; dir++){
		if(dir == 1){ cx = xCursor; cy = yCursor - 1; }
		if(dir == 2){ cx = xCursor + 1; cy = yCursor; }
		if(dir == 3){ cx = xCursor; cy = yCursor + 1; }
		if(dir == 4){ cx = xCursor - 1; cy = yCursor; }
		
		//bounds check
		if(cx < ww.xStart || cy < ww.yStart || cx >= ww.xBounds || cy >= ww.yBounds){ continue; }
		
		//block check
		if( ww.bmap[cx, cy] != noone){ continue; }
		if(avoidMobs && ww.mmap[cx, cy] != noone){ continue; }
		
		//assign movement cost and parrent values
		if(mapStatus[cx, cy] == "unchecked" || 
					costReal[cx, cy] > costReal[xCursor, yCursor] + 1) {
			mapStatus[cx, cy] = "open";
			costReal[cx, cy] = costReal[xCursor, yCursor] + 1;
			costGuess[cx, cy] = abs(cx - xEnd) + abs(cy - yEnd);
			xParent[cx, cy] = xCursor;
			yParent[cx, cy] = yCursor;
		}
		
	}
	
	
}



if(status == "found path"){
	
	//write the path to a list
	var xx = xEnd; var yy = yEnd;
	
	
	
	do {

		ds_list_add(xTemp, xx);
		ds_list_add(yTemp, yy);
	
		var xxx = xParent[xx, yy];
		var yyy = yParent[xx, yy];
	
		xx = xxx;
		yy = yyy;
		
	} until (xx == xStart && yy == yStart)
	
	//s = "found path of " + string(ds_list_size(xTemp));
	//s += " from " + string(xStart) + ", " + string(yStart);
	//s += " to " + string(xEnd) + ", " + string(yEnd);
	//show_debug_message(s);
	
	
	//for(var i=ds_list_size(xTemp)-1; i>=0; i--){
	//	ds_list_add(xPath, ds_list_find_value(xTemp, i));
	//	ds_list_add(yPath, ds_list_find_value(yTemp, i));
	//}
	
	//set calling object's next vals
	xNext = ds_list_find_value(xTemp, ds_list_size(xTemp) - 1);
	yNext = ds_list_find_value(yTemp, ds_list_size(xTemp) - 1);
	
	//show_debug_message(string(xSpot) + ", " + string(ySpot));
	//show_debug_message(string(xNext) + ", " + string(yNext));
	
	
} else {
	//exit without giving a path
	
	
}

ds_list_destroy(xTemp);
ds_list_destroy(yTemp);

