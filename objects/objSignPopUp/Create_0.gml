image_xscale = 4; image_yscale = 4;
firstFrame = true;
page = pc.deep;
if(page > 50){ page = 50; }

words = stringToArray(signText(page));
if(ww.fmap[pc.xSpot, pc.ySpot].object_index == objSign){
	pc.page[page] = true;
}

while(!pc.page[page]){ page --; }