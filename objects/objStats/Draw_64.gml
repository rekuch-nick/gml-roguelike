if(ww.titleScreen != noone){ return; }
if(ww.buildScreen != noone){ return; }
if(ww.popUp != noone){ return; }

	draw_self();
	
	draw_set_font(fntPlain);
	
	
	draw_set_color(c_black);
	draw_rectangle(908, 12, 1190, 72, false);
	
	draw_set_color(c_red);
	var n = (pc.hp / pc.mhp)
	draw_rectangle(908, 12, 910 + (280 * n), 31, false);
	
	draw_set_color(c_aqua);
	var n = (pc.sp / pc.msp)
	draw_rectangle(908, 32, 910 + (280 * n), 51, false);
	
	draw_set_color(c_yellow);
	var n = (pc.ep / pc.mep)
	draw_rectangle(908, 52, 910 + (280 * n), 71, false);
	
	
	draw_set_color(c_dkgray);
	draw_text(910, 0, string(pc.hp));
	draw_text(910, 20, string(pc.sp));
	draw_text(1100, 20, " (+" + string(pc.spCharge) + ")");
	draw_text(910, 40, string(pc.ep));
	draw_text(1100, 40, " (+" + string(pc.epCharge) + ")");
	
	
	draw_set_color(c_black);
	draw_rectangle(908, 91, 1190, 112, false);
	
	draw_set_color(c_lime);
	var n = (pc.ap / pc.map)
	draw_rectangle(908, 91, 910 + (280 * n), 112, false);
	
	draw_set_color(c_dkgray);
	draw_text(910, 80, string(pc.ap));
	
	
	draw_set_color(c_black);
	draw_rectangle(948, 113, 1190, 135, false);
	draw_set_color(c_white);
	var n = (pc.systemPoints / 100)
	draw_rectangle(948, 113, 950 + (240 * n), 135, false);
	draw_set_color(c_dkgray);
	draw_text(950, 102, string(pc.systemPoints));
	var n = 0;
	if(pc.system == "clean"){ n = 1; }
	if(pc.system == "build"){ n = 2; }
	if(pc.system == "temp"){ n = 3; }
	if(pc.system == "comm"){ n = 4; }
	if(pc.system == "trans"){ n = 5; }
	draw_sprite_stretched(imgSystem, n, 908, 116, 40, 20);
	
	
	
	draw_set_color(c_white);
	draw_text(910, 140, "Deep: " + string(pc.deep));
	
	var n = pc.deep; if(n > 50){ n = 50; }
	signFrame = pc.page[n] ? 1 : 0;
	draw_sprite_stretched(imgSignIcon, signFrame, 1140, 140, 40, 40);
	
	//draw_set_color(c_gray);
	//draw_text(910, 140, "Haz 1");
	//draw_text(910, 160, "Haz 2");
	//draw_text(910, 180, "Haz 3");
	//draw_text(910, 200, "Haz 4");
	//draw_text(910, 220, "Haz 5");
	//draw_text(910, 240, "Haz 6");
	//draw_text(910, 260, "Haz 7");
	//draw_text(910, 280, "Haz 8");
	
	
	//draw_text(910, 320, "[~][1][2][3][4][5][6]");
	for(var i=0; i<7; i++){
		var s = "";
		if(i == 0){s = "[~]"; } else { s = "[" + string(i) + "]"; }
		draw_set_color(c_gray);
		if(pc.ep >= pc.skillCost[i]){ draw_set_color(c_white); }
		if(pc.hasSkill[i]){
			draw_text(910 + i * 40, 320, s)	;
		}
	}
	
	draw_set_color(c_white);
	//draw_text(910, 360, "[K]x0 [B]x0 [E]x0");
	draw_text(910, 360, "   x" + string(pc.keys));
	draw_text(1005, 360, "   x" + string(pc.bombs));
	draw_text(1100, 360, "   x" + string(pc.etanks));
	
	draw_sprite_stretched(imgKey, 0, 910, 366, 30, 30);
	draw_sprite_stretched(imgBomb, 0, 1005, 366, 30, 30);
	draw_sprite_stretched(imgETank, 0, 1100, 366, 25, 30);
	
	
	draw_set_color(c_white);
	draw_text(910, 400, "EVADE");
	draw_text(910, 420, "T EVD");
	draw_text(910, 440, "DEF");
	draw_text(910, 460, "C DEF");
	draw_text(910, 480, "RES");
	draw_text(910, 500, "H RES");
	
	draw_text(910, 540, "STR");
	draw_text(910, 560, "POW");
	draw_text(910, 580, "AIM");
	draw_text(910, 600, "PROC");
	draw_text(910, 620, "P POW");
	
	draw_text(910, 660, "SPOT");
	draw_text(910, 680, "HACK");
	
	draw_set_color(c_gray);
	draw_text(1030, 400, pc._evade);
	draw_text(1030, 420, pc._evadeTrap);
	draw_text(1030, 440, pc._resistPhys);
	draw_text(1030, 460, pc._resistProc);
	draw_text(1030, 480, pc._resistEnergy);
	draw_text(1030, 500, pc._resistHeat);
	
	draw_text(1030, 540, pc._physPower);
	draw_text(1030, 560, pc._energyPower);
	draw_text(1030, 580, pc._aim);
	draw_text(1030, 600, pc._proc);
	draw_text(1030, 620, pc._procPower);
	
	draw_text(1030, 660, pc._see);
	draw_text(1030, 680, pc._hack);
	
	draw_set_color(c_green);
	draw_text(1110, 400, pc.evade);
	draw_text(1110, 420, pc.evadeTrap);
	draw_text(1110, 440, pc.resistPhys);
	draw_text(1110, 460, pc.resistProc);
	draw_text(1110, 480, pc.resistEnergy);
	draw_text(1110, 500, pc.resistHeat);
	
	draw_text(1110, 540, pc.physPower);
	draw_text(1110, 560, pc.energyPower);
	draw_text(1110, 580, pc.aim);
	draw_text(1110, 600, pc.proc);
	draw_text(1110, 620, pc.procPower);
	
	draw_text(1110, 660, pc.see);
	draw_text(1110, 680, pc.hack);
	
	/*
	draw_text(910, 520, "G1");
	draw_text(910, 540, "  ...");
	draw_text(910, 560, "G2");
	draw_text(910, 580, "  ...");
	draw_text(910, 600, "G3");
	draw_text(910, 620, "  ...");
	draw_text(910, 640, "G4");
	draw_text(910, 660, "  ...");
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	pc.clickToBomb = false;
	if( device_mouse_x_to_gui(0) > 1004 && device_mouse_x_to_gui(0) < 1036 &&
			device_mouse_y_to_gui(0) > 365 && device_mouse_y_to_gui(0) < 396 ){
		
		draw_set_color(c_white);
		draw_set_alpha(.3);
		draw_rectangle(1005, 365, 1035, 395, false);
		
		draw_set_alpha(1);
		pc.clickToBomb = true;
		pc.helpText = getHelpText("bomb");
	}
	
	
	//draw_sprite_stretched(imgETank, 0, 1100, 366, 25, 30);
	pc.clickToETank = false;
	if( device_mouse_x_to_gui(0) > 1099 && device_mouse_x_to_gui(0) < 1141 &&
			device_mouse_y_to_gui(0) > 365 && device_mouse_y_to_gui(0) < 396 ){
		
		draw_set_color(c_white);
		draw_set_alpha(.3);
		draw_rectangle(1100, 365, 1135, 395, false);
		
		draw_set_alpha(1);
		pc.clickToETank = true;
		pc.helpText = getHelpText("etank");
	}
	
	//draw_sprite_stretched(imgSystem, n, 908, 116, 40, 20);
	pc.clickSystem = false;
	if( device_mouse_x_to_gui(0) > 907 && device_mouse_x_to_gui(0) < 949 &&
			device_mouse_y_to_gui(0) > 115 && device_mouse_y_to_gui(0) < 137 ){
		
		draw_set_color(c_white);
		draw_set_alpha(.3);
		draw_rectangle(908, 112, 948, 138, false);
		
		draw_set_alpha(1);
		pc.clickSystem = true;
		pc.helpText = getHelpText("system");
	}
	
	//draw_sprite_stretched(imgSignIcon, signFrame, 1140, 140, 40, 40);
	pc.clickSign = false;
	if( device_mouse_x_to_gui(0) > 1139 && device_mouse_x_to_gui(0) < 1179 &&
			device_mouse_y_to_gui(0) > 139 && device_mouse_y_to_gui(0) < 179 ){
		
		draw_set_color(c_white);
		draw_set_alpha(.3);
		draw_rectangle(1140, 140, 1180, 180, false);
		
		draw_set_alpha(1);
		pc.clickSign = true;
		pc.helpText = getHelpText("sign");
	}
	
	
	if( device_mouse_x_to_gui(0) > 900 && device_mouse_y_to_gui(0) > 400 ){
		pc.helpText = getHelpText("stats");
	}
	
	
	
	
	pc.clickSkill = -1;
	if( device_mouse_x_to_gui(0) > 900 && device_mouse_y_to_gui(0) > 325 && device_mouse_y_to_gui(0) < 354 ){
		draw_set_color(c_white); draw_set_alpha(.3);
		var a = device_mouse_x_to_gui(0);
		if( a < 950){ 
			pc.helpText = getHelpText("skill0"); pc.clickSkill = 0;
			draw_rectangle(910, 325, 949, 353, false);
		}
		if( a >= 950 && a < 990){ 
			pc.helpText = getHelpText("skill1"); pc.clickSkill = 1;
			draw_rectangle(950, 325, 989, 353, false);
		}
		if( a >= 990 && a < 1030){ 
			pc.helpText = getHelpText("skill2"); pc.clickSkill = 2;
			draw_rectangle(990, 325, 1029, 353, false);
		}
		if( a >= 1030 && a < 1070){ 
			pc.helpText = getHelpText("skill3"); pc.clickSkill = 3;
			draw_rectangle(1030, 325, 1069, 353, false);
		}
		if( a >= 1070 && a < 1110){ 
			pc.helpText = getHelpText("skill4"); pc.clickSkill = 4;
			draw_rectangle(1070, 325, 1109, 353, false);
		}
		if( a >= 1110 && a < 1150){ 
			pc.helpText = getHelpText("skill5"); pc.clickSkill = 5;
			draw_rectangle(1110, 325, 1149, 353, false);
		}
		if( a >= 1150){ 
			pc.helpText = getHelpText("skill6"); pc.clickSkill = 6;
			draw_rectangle(1150, 325, 1189, 353, false);
		}
		draw_set_alpha(1);
	}
	
	
	
	
	
	
	
	if(pc.helpText != ""){
		draw_set_color(c_black);
		draw_set_font(fntPlain);
		draw_rectangle(0, 0, 900, 300, false);
		draw_set_color(c_white);
		draw_text(10, 10, pc.helpText);
	}
	
	
