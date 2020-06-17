image_xscale = 4; image_yscale = 4;
clickToClose = false;



//draw_rectangle(100, 181, 600, 230, false);
for(var a=0; a<2; a++){
	for(var b=0; b<9; b++){
		var s = instance_create_depth(100 + a * 500, 180 + b * 50, -9001, objUpgradeBar);
		if(a == 0 && b == 0){ s.note = "hp"; }
		if(a == 1 && b == 0){ s.note = "sp"; }
		if(a == 0 && b == 1){ s.note = "ep"; }
		if(a == 1 && b == 1){ s.note = "ap"; }
		if(a == 0 && b == 2){ s.note = "evade"; }
		if(a == 1 && b == 2){ s.note = "tevade"; }
		if(a == 0 && b == 3){ s.note = "def"; }
		if(a == 1 && b == 3){ s.note = "cdef"; }
		if(a == 0 && b == 4){ s.note = "res"; }
		if(a == 1 && b == 4){ s.note = "hres"; }
		if(a == 0 && b == 5){ s.note = "str"; }
		if(a == 1 && b == 5){ s.note = "pow"; }
		if(a == 0 && b == 6){ s.note = "aim"; }
		if(a == 1 && b == 6){ s.note = "proc"; }
		if(a == 0 && b == 7){ s.note = "procp"; }
		if(a == 1 && b == 7){ s.note = "spot"; }
		if(a == 0 && b == 8){ s.note = "hack"; }
		if(a == 1 && b == 8){ s.note = "exit"; }
		bars[a, b] = s;
	}
}

getOut = false;