//scope: called from world
var note = argument0;

var n = irandom_range(1, 4);
var tries = 0;



while(n > 0 && tries < 2000){
	tries ++;
	var a = irandom_range(xStart, xBounds - 1);
	var b = irandom_range(yStart, yBounds - 1);
	var okay = true;
	
	if(!inBounds(a, b)){ okay = false; continue; }
	
	if(a == pc.xSpot && b == pc.ySpot){ okay = false; }
	if(bmap[a, b] != ""){ okay = false; }
	if(pmap[a, b] != ""){ okay = false; }
	if(fmap[a, b] == "exit" || fmap[a, b] == "sign" || fmap[a, b] == "mystery"){ okay = false; }
	
	
	
	if(okay){
		t = "parts01";
		if(irandom_range(0, 2)==0){
			t = "parts02";
			if(irandom_range(0, 2)==0){
				t = "parts05";
				if(irandom_range(0, 2)==0){
					t = "parts10";
					if(irandom_range(0, 2)==0){
						t = "parts20";
					}
				}
			}
		}
		t = "partsX";
		
		//if(irandom_range(0, 3) == 0){
		//	t = "eball";
		//	if(irandom_range(0, 3) == 0){ t = "hball"; }
		//}
		
		if(irandom_range(0, 9) == 0){ t = "key"; }
		if(irandom_range(0, 9) == 0){ t = "bomb"; }
		if(irandom_range(0, 19) == 0){ t = "etank"; }
		if(irandom_range(0, 49) == 0){ t = "gear"; }
		//if(irandom_range(0, 1) == 0){ t = "gear"; }
		
		
		if(n == 1 && pc.deep % 2 == 0){ t = "gear"; }
		
		
		pmap[a, b] = t;
		n --;
	}
}