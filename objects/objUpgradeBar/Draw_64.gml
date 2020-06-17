draw_self();

cost = upCost(note);
if(note == "hp"){ name = "HP"; num = pc._mhp; }
if(note == "sp"){ name = "SP"; num = pc._msp; }
if(note == "ep"){ name = "EP"; num = pc._mep; }
if(note == "ap"){ name = "AP"; num = pc._map; }
if(note == "evade"){ name = "EVADE"; num = pc._evade; }
if(note == "tevade"){ name = "T EVD"; num = pc._evadeTrap; }
if(note == "def"){ name = "DEF"; num = pc._resistPhys; }
if(note == "cdef"){ name = "C DEF"; num = pc._resistProc; }
if(note == "res"){ name = "RES"; num = pc._resistEnergy; }
if(note == "hres"){ name = "H RES"; num = pc._resistHeat; }
if(note == "str"){ name = "STR"; num = pc._physPower; }
if(note == "pow"){ name = "POW"; num = pc._energyPower; }
if(note == "aim"){ name = "AIM"; num = pc._aim; }
if(note == "proc"){ name = "PROC"; num = pc._proc; }
if(note == "procp"){ name = "P POW"; num = pc._procPower; }
if(note == "spot"){ name = "SPOT"; num = pc._see; }
if(note == "hack"){ name = "HACK"; num = pc._hack; }

draw_set_color(c_white);
if(name != ""){
	draw_text(x + 20, y + 1, name + " (" + string(num) + ") for " + string(cost) + " parts");
}

if(note == "exit"){
	draw_text(x + 20, y + 1, "[Exit]");
}


if(active){
	image_index = 1;
} else {
	image_index = 0;
}
