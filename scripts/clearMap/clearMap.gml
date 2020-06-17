with(objTile){ instance_destroy(); }
with(objTrap){ instance_destroy(); }
with(objPup){ 
	if(xSpot != -1){
		instance_destroy(); 
	}
}
with(objMob){ instance_destroy(); }
with(objEffect){ instance_destroy(); }

for(var a=0; a<xBounds; a++){
	for(var b=0; b<yBounds; b++){
		fmap[a, b] = "";
		tmap[a, b] = "";
		bmap[a, b] = "";
		pmap[a, b] = "";
		mmap[a, b] = "";
	}
}

for(var a=xStart; a<xBounds; a++){
	for(var b=yStart; b<yBounds; b++){
		fmap[a, b] = "floor";
	}
}