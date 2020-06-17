draw_self();

draw_set_font(fntSign);
draw_set_color(c_white);

draw_text(60, 60, "Parts: " + string(pc.scrap));





draw_set_font(fntPlain);
draw_set_color(c_gray);

draw_sprite_stretched(pc.arm.sprite_index, pc.arm.rank, 20, 400, 60, 60);
draw_text(80, 390, pc.arm.name);
draw_text(80, 410, "Arm");
var b = 464;
if(pc.arm.armType == 0){ draw_text(24, b, "random dmg"); b += 25; }
if(pc.arm.armType == 1){ draw_text(24, b, "less random"); b += 25; }
if(pc.arm.armType == 2){ draw_text(24, b, "no low damage"); b += 25; }

for(var i=0; i<10; i++){
	if(pc.arm.spec[i] != ""){ draw_text(24, b, pc.arm.spec[i]); b += 25; }
}
if(pc.arm.hp > 0){ draw_text(24, b, "HP +" + string(pc.arm.hp)); b += 25; }
if(pc.arm.sp > 0){ draw_text(24, b, "SP +" + string(pc.arm.sp)); b += 25; }
if(pc.arm.ep > 0){ draw_text(24, b, "EP +" + string(pc.arm.ep)); b += 25; }
if(pc.arm.spCharge > 0){ draw_text(24, b, "SP Gain +" + string(pc.arm.spCharge)); b += 25; }
if(pc.arm.epCharge > 0){ draw_text(24, b, "EP Gain +" + string(pc.arm.epCharge)); b += 25; }
if(pc.arm.ap > 0){ draw_text(24, b, "AP +" + string(pc.arm.ap)); b += 25; }

if(pc.arm.evade > 0){ draw_text(24, b, "Evade +" + string(pc.arm.evade)); b += 25; }
if(pc.arm.evadeTrap > 0){ draw_text(24, b, "T Evd +" + string(pc.arm.evadeTrap)); b += 25; }
if(pc.arm.resistPhys > 0){ draw_text(24, b, "Def +" + string(pc.arm.resistPhys)); b += 25; }
if(pc.arm.resistProc > 0){ draw_text(24, b, "C Def +" + string(pc.arm.resistProc)); b += 25; }
if(pc.arm.resistEnergy > 0){ draw_text(24, b, "Res +" + string(pc.arm.resistEnergy)); b += 25; }
if(pc.arm.resistHeat > 0){ draw_text(24, b, "H Res +" + string(pc.arm.resistHeat)); b += 25; }

if(pc.arm.physPower > 0){ draw_text(24, b, "Str +" + string(pc.arm.physPower)); b += 25; }
if(pc.arm.energyPower > 0){ draw_text(24, b, "Pow +" + string(pc.arm.energyPower)); b += 25; }
if(pc.arm.aim > 0){ draw_text(24, b, "Aim +" + string(pc.arm.aim)); b += 25; }
if(pc.arm.proc > 0){ draw_text(24, b, "Proc +" + string(pc.arm.proc)); b += 25; }
if(pc.arm.procPower > 0){ draw_text(24, b, "P Pow +" + string(pc.arm.procPower)); b += 25; }
if(pc.arm.see > 0){ draw_text(24, b, "Spot +" + string(pc.arm.see)); b += 25; }
if(pc.arm.hack > 0){ draw_text(24, b, "Hack +" + string(pc.arm.hack)); b += 25; }




draw_sprite_stretched(pc.body.sprite_index, pc.body.rank, 240, 400, 60, 60);
draw_text(300, 390, pc.body.name);
draw_text(300, 410, "Case");
var b = 464;

for(var i=0; i<10; i++){
	if(pc.body.spec[i] != ""){ draw_text(244, b, pc.body.spec[i]); b += 25; }
}
if(pc.body.hp > 0){ draw_text(244, b, "HP +" + string(pc.body.hp)); b += 25; }
if(pc.body.sp > 0){ draw_text(244, b, "SP +" + string(pc.body.sp)); b += 25; }
if(pc.body.ep > 0){ draw_text(244, b, "EP +" + string(pc.body.ep)); b += 25; }
if(pc.body.spCharge > 0){ draw_text(244, b, "SP Gain +" + string(pc.body.spCharge)); b += 25; }
if(pc.body.epCharge > 0){ draw_text(244, b, "EP Gain +" + string(pc.body.epCharge)); b += 25; }
if(pc.body.ap > 0){ draw_text(244, b, "AP +" + string(pc.body.ap)); b += 25; }

if(pc.body.evade > 0){ draw_text(244, b, "Evade +" + string(pc.body.evade)); b += 25; }
if(pc.body.evadeTrap > 0){ draw_text(244, b, "T Evd +" + string(pc.body.evadeTrap)); b += 25; }
if(pc.body.resistPhys > 0){ draw_text(244, b, "Def +" + string(pc.body.resistPhys)); b += 25; }
if(pc.body.resistProc > 0){ draw_text(244, b, "C Def +" + string(pc.body.resistProc)); b += 25; }
if(pc.body.resistEnergy > 0){ draw_text(244, b, "Res +" + string(pc.body.resistEnergy)); b += 25; }
if(pc.body.resistHeat > 0){ draw_text(244, b, "H Res +" + string(pc.body.resistHeat)); b += 25; }

if(pc.body.physPower > 0){ draw_text(244, b, "Str +" + string(pc.body.physPower)); b += 25; }
if(pc.body.energyPower > 0){ draw_text(244, b, "Pow +" + string(pc.body.energyPower)); b += 25; }
if(pc.body.aim > 0){ draw_text(244, b, "Aim +" + string(pc.body.aim)); b += 25; }
if(pc.body.proc > 0){ draw_text(244, b, "Proc +" + string(pc.body.proc)); b += 25; }
if(pc.body.procPower > 0){ draw_text(244, b, "P Pow +" + string(pc.body.procPower)); b += 25; }
if(pc.body.see > 0){ draw_text(244, b, "Spot +" + string(pc.body.see)); b += 25; }
if(pc.body.hack > 0){ draw_text(244, b, "Hack +" + string(pc.body.hack)); b += 25; }



draw_sprite_stretched(pc.core.sprite_index, pc.core.rank, 460, 400, 60, 60);
draw_text(520, 390, pc.core.name);
draw_text(520, 410, "Core");
var b = 464;

for(var i=0; i<10; i++){
	if(pc.core.spec[i] != ""){ draw_text(464, b, pc.core.spec[i]); b += 25; }
}
if(pc.core.hp > 0){ draw_text(464, b, "HP +" + string(pc.core.hp)); b += 25; }
if(pc.core.sp > 0){ draw_text(464, b, "SP +" + string(pc.core.sp)); b += 25; }
if(pc.core.ep > 0){ draw_text(464, b, "EP +" + string(pc.core.ep)); b += 25; }
if(pc.core.spCharge > 0){ draw_text(464, b, "SP Gain +" + string(pc.core.spCharge)); b += 25; }
if(pc.core.epCharge > 0){ draw_text(464, b, "EP Gain +" + string(pc.core.epCharge)); b += 25; }
if(pc.core.ap > 0){ draw_text(464, b, "AP +" + string(pc.core.ap)); b += 25; }

if(pc.core.evade > 0){ draw_text(464, b, "Evade +" + string(pc.core.evade)); b += 25; }
if(pc.core.evadeTrap > 0){ draw_text(464, b, "T Evd +" + string(pc.core.evadeTrap)); b += 25; }
if(pc.core.resistPhys > 0){ draw_text(464, b, "Def +" + string(pc.core.resistPhys)); b += 25; }
if(pc.core.resistProc > 0){ draw_text(464, b, "C Def +" + string(pc.core.resistProc)); b += 25; }
if(pc.core.resistEnergy > 0){ draw_text(464, b, "Res +" + string(pc.core.resistEnergy)); b += 25; }
if(pc.core.resistHeat > 0){ draw_text(464, b, "H Res +" + string(pc.core.resistHeat)); b += 25; }

if(pc.core.physPower > 0){ draw_text(464, b, "Str +" + string(pc.core.physPower)); b += 25; }
if(pc.core.energyPower > 0){ draw_text(464, b, "Pow +" + string(pc.core.energyPower)); b += 25; }
if(pc.core.aim > 0){ draw_text(464, b, "Aim +" + string(pc.core.aim)); b += 25; }
if(pc.core.proc > 0){ draw_text(464, b, "Proc +" + string(pc.core.proc)); b += 25; }
if(pc.core.procPower > 0){ draw_text(464, b, "P Pow +" + string(pc.core.procPower)); b += 25; }
if(pc.core.see > 0){ draw_text(464, b, "Spot +" + string(pc.core.see)); b += 25; }
if(pc.core.hack > 0){ draw_text(464, b, "Hack +" + string(pc.core.hack)); b += 25; }




draw_sprite_stretched(pc.drive.sprite_index, pc.drive.rank, 680, 400, 60, 60);
draw_text(740, 390, pc.drive.name);
draw_text(740, 410, "Drive");
var b = 464;

for(var i=0; i<10; i++){
	if(pc.drive.spec[i] != ""){ draw_text(684, b, pc.drive.spec[i]); b += 25; }
}
if(pc.drive.hp > 0){ draw_text(684, b, "HP +" + string(pc.drive.hp)); b += 25; }
if(pc.drive.sp > 0){ draw_text(684, b, "SP +" + string(pc.drive.sp)); b += 25; }
if(pc.drive.ep > 0){ draw_text(684, b, "EP +" + string(pc.drive.ep)); b += 25; }
if(pc.drive.spCharge > 0){ draw_text(684, b, "SP Gain +" + string(pc.drive.spCharge)); b += 25; }
if(pc.drive.epCharge > 0){ draw_text(684, b, "EP Gain +" + string(pc.drive.epCharge)); b += 25; }
if(pc.drive.ap > 0){ draw_text(684, b, "AP +" + string(pc.drive.ap)); b += 25; }

if(pc.drive.evade > 0){ draw_text(684, b, "Evade +" + string(pc.drive.evade)); b += 25; }
if(pc.drive.evadeTrap > 0){ draw_text(684, b, "T Evd +" + string(pc.drive.evadeTrap)); b += 25; }
if(pc.drive.resistPhys > 0){ draw_text(684, b, "Def +" + string(pc.drive.resistPhys)); b += 25; }
if(pc.drive.resistProc > 0){ draw_text(684, b, "C Def +" + string(pc.drive.resistProc)); b += 25; }
if(pc.drive.resistEnergy > 0){ draw_text(684, b, "Res +" + string(pc.drive.resistEnergy)); b += 25; }
if(pc.drive.resistHeat > 0){ draw_text(684, b, "H Res +" + string(pc.drive.resistHeat)); b += 25; }

if(pc.drive.physPower > 0){ draw_text(684, b, "Str +" + string(pc.drive.physPower)); b += 25; }
if(pc.drive.energyPower > 0){ draw_text(684, b, "Pow +" + string(pc.drive.energyPower)); b += 25; }
if(pc.drive.aim > 0){ draw_text(684, b, "Aim +" + string(pc.drive.aim)); b += 25; }
if(pc.drive.proc > 0){ draw_text(684, b, "Proc +" + string(pc.drive.proc)); b += 25; }
if(pc.drive.procPower > 0){ draw_text(684, b, "P Pow +" + string(pc.drive.procPower)); b += 25; }
if(pc.drive.see > 0){ draw_text(684, b, "Spot +" + string(pc.drive.see)); b += 25; }
if(pc.drive.hack > 0){ draw_text(684, b, "Hack +" + string(pc.drive.hack)); b += 25; }






if(device_mouse_y_to_gui(0) >= 400 && device_mouse_y_to_gui(0) <= 460){
	var showPart = 0;
	if(device_mouse_x_to_gui(0) >= 20 && device_mouse_x_to_gui(0) <= 80){ showPart = 1; }
	if(device_mouse_x_to_gui(0) >= 240 && device_mouse_x_to_gui(0) <= 300){ showPart = 2; }
	if(device_mouse_x_to_gui(0) >= 460 && device_mouse_x_to_gui(0) <= 520){ showPart = 3; }
	if(device_mouse_x_to_gui(0) >= 680 && device_mouse_x_to_gui(0) <= 740){ showPart = 4; }
	
	if(showPart != 0){
		if(showPart == 1){ showGearTooltips(pc.arm); }
		if(showPart == 2){ showGearTooltips(pc.body); }
		if(showPart == 3){ showGearTooltips(pc.core); }
		if(showPart == 4){ showGearTooltips(pc.drive); }
		
		
	}
}


