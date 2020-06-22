visible = true;




var a = device_mouse_x_to_gui(0);
var b = device_mouse_y_to_gui(0);

if(a >= x && a < x + 40 && b >= y && b < y + 40){
	
	if(sprite_index == imgStatusPowerAttack){
		pc.helpText = "Power Attack: Your next attack will deal 10 more damage.";
	}
	
	if(sprite_index == imgStatusComboAttack){
		pc.helpText = "Combo Attack: Your next attack will deal 4 more damage.";
	}
	
	if(sprite_index == imgStatusEvadeUp){
		pc.helpText = "Evade Up: +10% to dodge.";
	}
	
	if(sprite_index == imgStatusHackUp){
		pc.helpText = "Master Hacking: Double you HACK score.";
	}
	
	if(sprite_index == imgStatusDamageReduction){
		pc.helpText = "Damage Reduction: Take half damage from everything.";
	}
	
	if(sprite_index == imgStatusZeroPing){
		pc.helpText = "Zero Ping: Attacking costs 1 AP instead of all AP.";
	}
	
	if(sprite_index == imgStatusDangerousTraps){
		pc.helpText = "Dangerous Traps: Take double damage from traps.";
	}
	
	if(sprite_index == imgStatusHiddenTraps){
		pc.helpText = "Hidden Traps: are harder to find.";
	}
	
	if(sprite_index == imgStatusNoSPC){
		pc.helpText = "SP Leak: You won't recover SP.";
	}
	
	if(sprite_index == imgStatusNoEPC){
		pc.helpText = "SP Leak: You won't recover EP.";
	}
	
	if(sprite_index == imgStatusNo6){
		pc.helpText = "Low Ceilings : Unable to [6] Rocket Boost.";
	}
	
	if(sprite_index == imgStatusHardHack){
		pc.helpText = "Security: Hack chance reduced.";
	}
	
	if(sprite_index == imgStatusExtraMonsters){
		pc.helpText = "Alarm: Twice as many monsters spawn.";
	}
	
	
}