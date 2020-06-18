
var r = irandom_range(1, 17); var n = 1; var text = "";
		if(r == 1){pc._mhp ++; pc.hp ++; n = 1; text = "HP";}
		if(r == 2){pc._msp ++; n = 1; text = "SP";}
		if(r == 3){pc._mep ++; n = 1; text = "EP";}
		if(r == 4){pc._map ++; n = 1; text = "AP";}
		if(r == 5){pc._evade ++; n = 1; text = "EVADE";}
		if(r == 6){pc._evadeTrap +=2; n = 2; text = "T EVD";}
		if(r == 7){pc._resistPhys ++; n = 1; text = "DEF";}
		if(r == 8){pc._resistProc ++; n = 1; text = "C DEF";}
		if(r == 9){pc._resistEnergy ++; n = 1; text = "RES";}
		if(r == 10){pc._resistHeat ++; n = 1; text = "H RES";}
		if(r == 11){pc._physPower ++; n = 1; text = "STR";}
		if(r == 12){pc._energyPower ++; n = 1; text = "POW";}
		if(r == 13){pc._aim +=2; n = 2; text = "AIM";}
		if(r == 14){pc._proc ++; n = 1; text = "PROC";}
		if(r == 15){pc._procPower +=10; n = 10; text = "P POW";}
		if(r == 16){pc._see +=2; n = 2; text = "SPOT";}
		if(r == 17){pc._hack +=2; n = 2; text = "HACK";}
		pc.checkStats = true;
		var s = instance_create_depth(pc.x, pc.y, -9000, objEffect);
		s.text = "+" + string(n) + " " + text;
		s.textColor = c_lime;
		
		pc.checkStats = true;