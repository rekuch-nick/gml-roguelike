var t = objParts01;
if(irandom_range(0, 1)==0){
	t = objParts02;
	if(irandom_range(0, 1)==0){
		t = objParts05;
		if(irandom_range(0, 1)==0){
			t = objParts10;
			if(irandom_range(0, 1)==0){
				t = objParts20;
				if(irandom_range(0, 1)==0 && pc.talent[28]){
					t = objDeltaChip;	
				}
			}
		}
	}
}

return t;