image_xscale = 4; image_yscale = 4;
image_index = 0;
acceptEnter = false;


for(var a=0; a<3; a++){
	for(var b=0; b<2; b++){
		var tb = instance_create_depth(60 + (a * 360), 120 + (b * 240), -10002, objClassBox);
		tb.num = b + (a * 2);
		if(tb.num == 0){ 
			tb.desc = "Focused on melee \nfighting.";
			tb.name = "Fighter"; }
		if(tb.num == 1){ 
			tb.desc = "Focused on using the \nLigntning Cannon";
			tb.name = "Shocker"; }
		if(tb.num == 2){ 
			tb.desc = "Flexible and mobile";
			tb.name = "Explorer"; }
		if(tb.num == 3){ 
			tb.desc = "Tanky, all-purpose \nMech";
			tb.name = "Factotum"; }
		if(tb.num == 4){ 
			tb.desc = "Focused on fire \nattacks";
			tb.name = "Pyro"; }
		if(tb.num == 5){ 
			tb.desc = "Focused on stealth \nand hacking";
			tb.name = "Shadow"; }
	}
}

for(var a=0; a<4; a++){
	for(var b=0; b<8; b++){
		var tb = instance_create_depth((a * 300), 120 + (b * 60), -10002, objTalentBox);
		tb.num = b + (a * 8);
		
		if(tb.num == 0){ tb.name = "Pneumatic Press"; tb.image_index = 1; }
		if(tb.num == 1){ tb.name = "Inevitably Matrix"; tb.image_index = 1; }
		if(tb.num == 2){ tb.name = "Propulsion Dodging"; tb.image_index = 1; }
		if(tb.num == 3){ tb.name = "Magnetron Emitter"; tb.image_index = 1; }
		if(tb.num == 4){ tb.name = "Aphelion Strike"; tb.image_index = 1; }
		if(tb.num == 5){ tb.name = "Corrosive Nanites"; tb.image_index = 1; }
		if(tb.num == 6){ tb.name = "Linear Actuators"; tb.image_index = 1; }
		
		if(tb.num == 8){ tb.name = "Matter Siphoning"; tb.image_index = 0; }
		if(tb.num == 9){ tb.name = "[2] Flame Thrower"; tb.image_index = 0; }
		if(tb.num == 10){ tb.name = "[3] Adaptive Module"; tb.image_index = 0; }
		if(tb.num == 11){ tb.name = "[4] DefensiveModule"; tb.image_index = 0; }
		if(tb.num == 12){ tb.name = "[5] Build Drone"; tb.image_index = 0; }
		if(tb.num == 13){ tb.name = "[6] Rocket Boost"; tb.image_index = 0; }
		if(tb.num == 14){ tb.name = "Uncertainty Zenith"; tb.image_index = 0; }
		if(tb.num == 15){ tb.name = "ThermodynamicFluke"; tb.image_index = 0; }
		
		if(tb.num == 16){ tb.name = "Adventuring Kit"; tb.image_index = 2; }
		if(tb.num == 17){ tb.name = "Keywright"; tb.image_index = 2; }
		if(tb.num == 18){ tb.name = "Haptic Navigators"; tb.image_index = 2; }
		if(tb.num == 19){ tb.name = "Buoyant Plating"; tb.image_index = 2; }
		if(tb.num == 20){ tb.name = "Kalman Filter"; tb.image_index = 2; }
		if(tb.num == 21){ tb.name = "Servomechanism"; tb.image_index = 2; }
		
		if(tb.num == 24){ tb.name = "Resurgent Field"; tb.image_index = 4; }
		if(tb.num == 25){ tb.name = "Neural Mapping"; tb.image_index = 4; }
		if(tb.num == 26){ tb.name = "ComponentRecycling"; tb.image_index = 4; }
		if(tb.num == 27){ tb.name = "Degree of Freedom"; tb.image_index = 4; }
		if(tb.num == 28){ tb.name = "Delta Port"; tb.image_index = 4; }
		if(tb.num == 29){ tb.name = "Osmosis Logs"; tb.image_index = 4; }
		
	}
}


for(var i=0; i<32; i++){ 
	pc.talent[i] = pc.lastTalent[i]; 
}