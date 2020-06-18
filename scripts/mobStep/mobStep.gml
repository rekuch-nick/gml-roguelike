//scope : called from stepping mob
var tx = argument0;
var ty = argument1;
var trade = argument2;
var canSwap = false;

if(!inBounds(tx, ty) ){ return false; }
if(ww.bmap[tx, ty] != noone ){ return false; }


if(ww.mmap[tx, ty] != noone && trade){
	if(ww.mmap[tx, ty].foe == foe && !ww.mmap[tx, ty].huntPlayer){
		canSwap = true;	
	}
}


if(ww.mmap[tx, ty] != noone && !canSwap){ return false; }

if( tx == pc.xSpot && ty == pc.ySpot){ return false; }


if(ww.mmap[tx, ty] == noone){
	var xx = xSpot; var yy = ySpot;
	xSpot = tx; ySpot = ty;
	ww.mmap[tx, ty] = ww.mmap[xx, yy];
	ww.mmap[xx, yy] = noone;
} else {
	mTemp = ww.mmap[xSpot, ySpot]; xTemp = xSpot; yTemp = ySpot;
	
	ww.mmap[xSpot, ySpot] = ww.mmap[tx, ty]; 
	ww.mmap[xSpot, ySpot].xSpot = xSpot;
	ww.mmap[xSpot, ySpot].ySpot = ySpot;
	
	xSpot = tx; ySpot = ty;
	ww.mmap[tx, ty] = mTemp; 
	
}



return true;
