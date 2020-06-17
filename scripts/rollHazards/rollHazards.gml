var hp = irandom_range(-1, 0) + floor(pc.deep / 10);

hazDangerousWater = false; // waterType == "water";
hazDangerousTraps = false;
hazHiddenTraps = false;
hazGrass = false;
hazExtraMonsters = false;
hazNo6 = false;
hazNoEPCharge = false;
hazNoSPCharge = false;
hazHardHack = false;




while(hp > 0){
	var r = irandom_range(1, 10);
	if(r == 1 && pc.deep > 25 && !hazDangerousWater && hasWater){ hazDangerousWater = true; waterType = "acid"; hp --; }
	if(r == 2 && pc.deep > 50 && !hazDangerousWater && hasWater){ hazDangerousWater = true; waterType = "lava"; hp --; }
	if(r == 3 && !hazDangerousTraps){ hazDangerousTraps = true; hp --; }
	if(r == 4 && !hazHiddenTraps){ hazHiddenTraps = true; hp --; }
	if(r == 5 && !hazGrass){ hazGrass = true; hp --; }
	if(r == 6 && hp >= 2 && !hazExtraMonsters){ hazExtraMonsters = true; hp -= 2; }
	if(r == 7 && !hazNo6){ hazNo6 = true; hp --; }
	if(r == 8 && !hazNoEPCharge){ hazNoEPCharge = true; hp --; }
	if(r == 9 && !hazNoSPCharge){ hazNoSPCharge = true; hp --; }
	if(r == 10 && !hazHardHack){ hazHardHack = true; hp --; }
	
	
}

if(hazDangerousTraps){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusDangerousTraps;
	s.isHazard = true; s.deeps = 0;
}
if(hazHiddenTraps){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusHiddenTraps;
	s.isHazard = true; s.deeps = 0;
}
if(hazNoSPCharge){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusNoSPC;
	s.isHazard = true; s.deeps = 0;
}
if(hazNoEPCharge){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusNoEPC;
	s.isHazard = true; s.deeps = 0;
}
if(hazNo6){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusNo6;
	s.isHazard = true; s.deeps = 0;
}
if(hazHardHack){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusHardHack;
	s.isHazard = true; s.deeps = 0;
}
if(hazExtraMonsters){
	var s = instance_create_depth(0, 0, -6001, objStatus);
	s.sprite_index = imgStatusDangerousTraps;
	s.isHazard = true; s.deeps = 0;
}





