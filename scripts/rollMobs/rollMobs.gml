

do {
	var r = irandom_range(0, 2) + floor(pc.deep / 10);
	if(r > 11){ r = irandom_range(0, 11); }
	if(r == 0){ commonMob = objMouth; }
	if(r == 1){ commonMob = objBulb; }
	if(r == 2){ commonMob = objMouth; }
	if(r == 3){ commonMob = objBulb; }
	if(r == 4){ commonMob = objMouth; }
	if(r == 5){ commonMob = objBulb; }
	if(r == 6){ commonMob = objMouth; }
	if(r == 7){ commonMob = objBulb; }
	if(r == 8){ commonMob = objMouth; }
	if(r == 9){ commonMob = objBulb; }
	if(r == 10){ commonMob = objMouth; }
	if(r == 11){ commonMob = objBulb; }
	
} until(commonMob != lastCommonMob)
lastCommonMob = commonMob;


do {
	var r = irandom_range(0, 2) + floor(pc.deep / 10);
	if(r > 11){ r = irandom_range(0, 11); }
	if(r == 0){ rareMob = objStriker; }
	if(r == 1){ rareMob = objFace; }
	if(r == 2){ rareMob = objStriker; }
	if(r == 3){ rareMob = objFace; }
	if(r == 4){ rareMob = objStriker; }
	if(r == 5){ rareMob = objFace; }
	if(r == 6){ rareMob = objStriker; }
	if(r == 7){ rareMob = objFace; }
	if(r == 8){ rareMob = objStriker; }
	if(r == 9){ rareMob = objFace; }
	if(r == 10){ rareMob = objStriker; }
	if(r == 11){ rareMob = objFace; }
	
} until(rareMob != lastRareMob)
lastRareMob = rareMob;

waterMob = objJelly;
bugMob = objBug;
huntMob = objKillbot;