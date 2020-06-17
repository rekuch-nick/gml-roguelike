//scope: called from player draw gui
var pup = argument0;
var worn = undefined;
if(pup.isArm){ worn = pc.arm; }
if(pup.isBody){ worn = pc.body; }
if(pup.isCore){ worn = pc.core; }
if(pup.isDrive){ worn = pc.drive; }


draw_set_font(fntPlain);

draw_set_color(c_black);
draw_rectangle(60, 60, 360, 660, false);
draw_set_color(c_white);
draw_rectangle(60, 60, 360, 660, true);
draw_rectangle(61, 61, 359, 659, true);

draw_set_color(c_black);
draw_rectangle(540, 60, 840, 660, false);
draw_set_color(c_white);
draw_rectangle(540, 60, 840, 660, true);
draw_rectangle(541, 61, 839, 659, true);


draw_set_font(fntSign);
draw_set_color(c_white);
draw_text(130, 600, "-WORN-");
draw_text(595, 600, "-FOUND-");


draw_set_font(fntPlain);
draw_set_color(c_gray);




	draw_sprite_stretched(pup.sprite_index, pup.rank, 560, 80, 60, 60);
	draw_text(620, 70, pup.name);
	if(pup.isArm){ draw_text(620, 90, "Arm"); }
	if(pup.isBody){ draw_text(620, 90, "Case"); }
	if(pup.isCore){ draw_text(620, 90, "Core"); }
	if(pup.isDrive){ draw_text(620, 90, "Drive"); }
	var b = 144;
	if(pup.isArm){
		if(pup.armType == 0){ draw_text(564, b, "random dmg"); b += 25; }
		if(pup.armType == 1){ draw_text(564, b, "less random"); b += 25; }
		if(pup.armType == 2){ draw_text(564, b, "no low damage"); b += 25; }
	}

	for(var i=0; i<10; i++){
		if(pup.spec[i] != ""){ draw_text(564, b, pup.spec[i]); b += 25; }
	}
	if(pup.hp > 0){ draw_text(564, b, "HP +" + string(pup.hp)); b += 25; }
	if(pup.sp > 0){ draw_text(564, b, "SP +" + string(pup.sp)); b += 25; }
	if(pup.ep > 0){ draw_text(564, b, "EP +" + string(pup.ep)); b += 25; }
	if(pup.spCharge > 0){ draw_text(564, b, "SP Gain +" + string(pup.spCharge)); b += 25; }
	if(pup.epCharge > 0){ draw_text(564, b, "EP Gain +" + string(pup.epCharge)); b += 25; }
	if(pup.ap > 0){ draw_text(564, b, "AP +" + string(pup.ap)); b += 25; }

	if(pup.evade > 0){ draw_text(564, b, "Evade +" + string(pup.evade)); b += 25; }
	if(pup.evadeTrap > 0){ draw_text(564, b, "T Evd +" + string(pup.evadeTrap)); b += 25; }
	if(pup.resistPhys > 0){ draw_text(564, b, "Def +" + string(pup.resistPhys)); b += 25; }
	if(pup.resistProc > 0){ draw_text(564, b, "C Def +" + string(pup.resistProc)); b += 25; }
	if(pup.resistEnergy > 0){ draw_text(564, b, "Res +" + string(pup.resistEnergy)); b += 25; }
	if(pup.resistHeat > 0){ draw_text(564, b, "H Res +" + string(pup.resistHeat)); b += 25; }

	if(pup.physPower > 0){ draw_text(564, b, "Str +" + string(pup.physPower)); b += 25; }
	if(pup.energyPower > 0){ draw_text(564, b, "Pow +" + string(pup.energyPower)); b += 25; }
	if(pup.aim > 0){ draw_text(564, b, "Aim +" + string(pup.aim)); b += 25; }
	if(pup.proc > 0){ draw_text(564, b, "Proc +" + string(pup.proc)); b += 25; }
	if(pup.procPower > 0){ draw_text(564, b, "P Pow +" + string(pup.procPower)); b += 25; }
	if(pup.see > 0){ draw_text(564, b, "Spot +" + string(pup.see)); b += 25; }
	if(pup.hack > 0){ draw_text(564, b, "Hack +" + string(pup.hack)); b += 25; }
	
	
	
	
	
	
	
	
	
	
	draw_sprite_stretched(worn.sprite_index, worn.rank, 80, 80, 60, 60);
	draw_text(140, 70, worn.name);
	if(worn.isArm){ draw_text(140, 90, "Arm"); }
	if(worn.isBody){ draw_text(140, 90, "Case"); }
	if(worn.isCore){ draw_text(140, 90, "Core"); }
	if(worn.isDrive){ draw_text(140, 90, "Drive"); }
	var b = 144;
	if(worn.isArm){
		if(worn.armType == 0){ draw_text(84, b, "random dmg"); b += 25; }
		if(worn.armType == 1){ draw_text(84, b, "less random"); b += 25; }
		if(worn.armType == 2){ draw_text(84, b, "no low damage"); b += 25; }
	}

	for(var i=0; i<10; i++){
		if(worn.spec[i] != ""){ draw_text(84, b, worn.spec[i]); b += 25; }
	}
	if(worn.hp > 0){ draw_text(84, b, "HP +" + string(worn.hp)); b += 25; }
	if(worn.sp > 0){ draw_text(84, b, "SP +" + string(worn.sp)); b += 25; }
	if(worn.ep > 0){ draw_text(84, b, "EP +" + string(worn.ep)); b += 25; }
	if(worn.spCharge > 0){ draw_text(84, b, "SP Gain +" + string(worn.spCharge)); b += 25; }
	if(worn.epCharge > 0){ draw_text(84, b, "EP Gain +" + string(worn.epCharge)); b += 25; }
	if(worn.ap > 0){ draw_text(84, b, "AP +" + string(worn.ap)); b += 25; }

	if(worn.evade > 0){ draw_text(84, b, "Evade +" + string(worn.evade)); b += 25; }
	if(worn.evadeTrap > 0){ draw_text(84, b, "T Evd +" + string(worn.evadeTrap)); b += 25; }
	if(worn.resistPhys > 0){ draw_text(84, b, "Def +" + string(worn.resistPhys)); b += 25; }
	if(worn.resistProc > 0){ draw_text(84, b, "C Def +" + string(worn.resistProc)); b += 25; }
	if(worn.resistEnergy > 0){ draw_text(84, b, "Res +" + string(worn.resistEnergy)); b += 25; }
	if(worn.resistHeat > 0){ draw_text(84, b, "H Res +" + string(worn.resistHeat)); b += 25; }

	if(worn.physPower > 0){ draw_text(84, b, "Str +" + string(worn.physPower)); b += 25; }
	if(worn.energyPower > 0){ draw_text(84, b, "Pow +" + string(worn.energyPower)); b += 25; }
	if(worn.aim > 0){ draw_text(84, b, "Aim +" + string(worn.aim)); b += 25; }
	if(worn.proc > 0){ draw_text(84, b, "Proc +" + string(worn.proc)); b += 25; }
	if(worn.procPower > 0){ draw_text(84, b, "P Pow +" + string(worn.procPower)); b += 25; }
	if(worn.see > 0){ draw_text(84, b, "Spot +" + string(worn.see)); b += 25; }
	if(worn.hack > 0){ draw_text(84, b, "Hack +" + string(worn.hack)); b += 25; }




