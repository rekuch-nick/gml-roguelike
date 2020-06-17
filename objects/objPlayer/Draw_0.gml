if(ww.titleScreen != noone){ return; }
if(ww.buildScreen != noone){ return; }
if(ww.popUp != noone){ return; }
if(ww.pauseScreen != noone){ return; }
if(ww.newStage){ return; }

draw_self();
if(debugMode){
	image_yscale = random_range(3.5, 4.5);
} else {
	image_yscale = 4;
}

if(sp > 0 && aiming == -1){ draw_sprite_stretched_ext(imgShield, irandom_range(1, 2), x-29, y-29, 61, 61, c_white, sp / msp); }

if(aiming == 0){
	draw_sprite_stretched_ext(imgAimHack, floor(aimAni / 10), x-45, y-45, 90, 90, c_white, 1);
}

if(aiming == 1){
	draw_sprite_stretched_ext(imgAim, floor(aimAni / 10), x-45, y-45, 90, 90, c_white, 1);
}

if(aiming == 2){
	draw_sprite_stretched_ext(imgAimFire, floor(aimAni / 10), x-45, y-45, 90, 90, c_white, 1);
}
if(aiming == 6){
	draw_sprite_stretched_ext(imgAimJump, floor(aimAni / 10), x-45, y-45, 90, 90, c_white, 1);
}

if(aiming == 5){
	draw_sprite_stretched_ext(imgBuildAlly, floor(aimAni / 10), x-45, y-45, 90, 90, c_white, 1);
}

if(aiming == 3 || aiming == 4){
	draw_set_color(c_black);
	draw_rectangle( (xSpot)*60, (ySpot - 1)*60, (xSpot)*60 + 60, (ySpot - 1)*60 + 60 , false);
	draw_rectangle( (xSpot + 1)*60, (ySpot)*60, (xSpot + 1)*60 + 60, (ySpot)*60 + 60 , false);
	draw_rectangle( (xSpot)*60, (ySpot + 1)*60, (xSpot)*60 + 60, (ySpot + 1)*60 + 60 , false);
	draw_rectangle( (xSpot - 1)*60, (ySpot)*60, (xSpot - 1)*60 + 60, (ySpot)*60 + 60 , false);
	
}

if(aiming == 3){
	var n = ep >= cost3[0] ? 1 : .4; draw_set_alpha(n);
	draw_sprite_stretched(imgUsePowerAttack, floor(aimAni / 10), (xSpot)*60, (ySpot - 1)*60, 60, 60);
	
	if(energyPower >= powToUse2){
		var n = ep >= cost3[1] ? 1 : .4; draw_set_alpha(n);
		draw_sprite_stretched(imgUseEvadeUp, floor(aimAni / 10), (xSpot + 1)*60, (ySpot)*60, 60, 60);
	}
	
	if(energyPower >= powToUse3){
		var n = ep >= cost3[2] ? 1 : .4; draw_set_alpha(n);
		draw_sprite_stretched(imgUseTeleportSupplies, floor(aimAni / 10), (xSpot)*60, (ySpot + 1)*60, 60, 60);
	}
	
	if(energyPower >= powToUse4){
		var n = ep >= cost3[3] ? 1 : .4; draw_set_alpha(n);
		draw_sprite_stretched(imgUseHackUp, floor(aimAni / 10), (xSpot - 1)*60, (ySpot)*60, 60, 60);
	}
	
	draw_set_alpha(1);
}


if(aiming == 4){
	var n = ep >= 1 ? 1 : .4; draw_set_alpha(n);
	draw_sprite_stretched(imgUseSPCharge, floor(aimAni / 10), (xSpot)*60, (ySpot - 1)*60, 60, 60);
	
	if(energyPower >= powToUse2){
		var n = ep >= cost4[1] ? 1 : .4; draw_set_alpha(n);
		draw_sprite_stretched(imgUsePurge, floor(aimAni / 10), (xSpot + 1)*60, (ySpot)*60, 60, 60);
	}
	
	if(energyPower >= powToUse3){
		var n = ep >= cost4[2] ? 1 : .4; draw_set_alpha(n);
		draw_sprite_stretched(imgUseCompass, floor(aimAni / 10), (xSpot)*60, (ySpot + 1)*60, 60, 60);
	}
	
	if(energyPower >= powToUse4){
		var n = ep >= cost4[3] ? 1 : .4; draw_set_alpha(n);
		draw_sprite_stretched(imgUseDamageReduction, floor(aimAni / 10), (xSpot - 1)*60, (ySpot)*60, 60, 60);
	}
	
	draw_set_alpha(1);
}







draw_set_font(fntPlain);

draw_set_color(c_lime);
var n = ap;
if(ap > 9){
	n = chr(ap - 9 + 65);
}
draw_text(x - 5, y - 38, n);

if(ww.fmap[xSpot, ySpot] != noone){
	if(ww.fmap[xSpot, ySpot].object_index == objExit
			|| ww.fmap[xSpot, ySpot].object_index == objSign
			|| ww.fmap[xSpot, ySpot].object_index == objUpgradePod
			){
		var c = irandom_range(0, 1) == 0 ? c_lime : c_white;
		draw_set_color(c);
		draw_text(x - 50, y, "[Enter]")
	}
}
















if(ww.pmap[xSpot, ySpot] != noone && ww.pmap[xSpot, ySpot].object_index == objGear){
	var c = irandom_range(0, 1) == 0 ? c_lime : c_white;
	draw_set_color(c);
	draw_text(x - 50, y, "Replace?")
	draw_text(x - 45, y + 22, "[Enter]")
}







