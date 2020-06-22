if(ww.titleScreen != noone){ return; }
if(ww.buildScreen != noone){ return; }
if(ww.popUp != noone){ return; }
if(ww.pauseScreen != noone){ return; }


if(dyingTime > 0){
	dyingTime --;
	instance_create_depth(x + irandom_range(-20, 20), y + irandom_range(-20, 20), -9000, objGearEffect);
	image_angle = irandom_range(0, 3) * 90;
	if(dyingTime == 0){
		gameOver();
	}
	return;
}




if(checkStats){ setStats(); checkStats = false; }

aimAni ++;
if(aimAni > 39){ aimAni = 0; }

// debug input
if(keyboard_check_pressed(vk_backspace)){
	debugMode = !debugMode;
	if(debugMode){
		with(objHiddenChest){ sprite_index = imgHiddenChest; }
		with(objHiddenTrap){ sprite_index = imgNode; }
	}
}
if(debugMode){
	if(keyboard_check(vk_control)){
		if(keyboard_check_pressed(ord("1"))){
			ww.newStage = true;
			return;
		}
		
		if(keyboard_check_pressed(ord("2"))){
			if(hasStatus(imgStatusPowerAttack)){
				setStatusVal(imgStatusPowerAttack, 1);
			} else {
				var s = instance_create_depth(0, 0, -6001, objStatus);
				s.isBuff = true; s.deeps = -1;
			}
			return;
		}
		
		if(keyboard_check_pressed(ord("3"))){
			systemPoints = 100;
			scrap = 1000000;
		}
		
		if(keyboard_check_pressed(ord("4"))){
			_mhp = 1000;
			hp = 1000;
			_mep = 1000;
			ep = 1000;
			talent[9] = true;
			talent[10] = true;
			talent[11] = true;
			talent[12] = true;
			talent[13] = true;
			talent[25] = true;
			checkStats = true;
		}
		
		
	}
}

// play input

if(!moving && ap > 0 && aiming == -1 && !dontMoveUntilKeysReleased ){
	var tx = xSpot; var ty = ySpot;
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){ tx = xSpot-1; ty = ySpot; image_xscale = -4; }
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){ tx = xSpot+1; ty = ySpot; image_xscale = 4; }
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))){ tx = xSpot; ty = ySpot-1; }
	if(keyboard_check(vk_down) || keyboard_check(ord("S"))){ tx = xSpot; ty = ySpot+1; }
	
	if(mouse_check_button(mb_left) && mouseReleased && device_mouse_x_to_gui(0) <= 900){
	
		var a = floor(mouse_x / 60);
		var b = floor(mouse_y / 60);
		
		if(a == xSpot && b == ySpot){
			
		} else if ((a == xSpot || b == ySpot) && abs(a - xSpot) + abs(b - ySpot) == 1) {
			tx = a; ty = b;
		} else {
			
			xNext = -1; yNext = -1;
			pathFind(xSpot, ySpot, a, b, true);
			if( xNext == -1 ){
				pathFind(xSpot, ySpot, a, b, false);
			}
			tx = xNext; ty = yNext;
			mouseWalk = true;
		}
		
		if(tx > xSpot){ image_xscale = 4; }
		if(tx < xSpot){ image_xscale = -4; }
	}
	
	if(tx == xSpot && ty == ySpot){ canAttack = true; }
	
	if(inBounds(tx, ty) && (tx != xSpot || ty != ySpot)){
		var okay = true;
		
		if(ww.bmap[tx, ty] != noone && !debugMode){ 
			okay = false; 
			
			if(keys > 0 && (ww.bmap[tx, ty].object_index == objDoor || ww.bmap[tx, ty].object_index == objChest) ){
				keys --;
				if(talent[17] && irandom_range(0, 1) == 0){ keys ++; }
				bumpAt(pc, tx, ty);
				unlock(tx, ty);
			}
			
		}
		if(ww.mmap[tx, ty] != noone){
			
			if(ww.mmap[tx, ty].foe){
				
				
			
				okay = false;
				if(canAttack && (!mouseWalk || (floor(mouse_x / 60) == tx && floor(mouse_y / 60) == ty) )){ 
					//playerAttack(tx, ty); 
					mobAttack(pc, ww.mmap[tx, ty]);
					if(hasStatus(imgStatusZeroPing)){
						ap --;
					} else {
						ap = 0;
					}
					canAttack = false;
				}
				
			} else {
				
				var xx = xSpot; var yy = ySpot;
				ww.mmap[xx, yy] = ww.mmap[tx, ty];
				xSpot = tx; ySpot = ty;
				ww.mmap[tx, ty].xSpot = xx; ww.mmap[tx, ty].ySpot = yy;
				ww.mmap[tx, ty] = noone;
			}
		}	
		
		
		
		
		if(okay){ 
			var bugRoll = irandom_range(0, 99);
			if(talent[18] && bugRoll < 75){ onGrass = ""; }
			
			if(onGrass == "grass"){
				spawnMob(ww.bugMob, xSpot, ySpot);
			}
			
			
			triggeredTile = false;
			canAttack = false;
			ap -= 1;
			xSpot = tx; ySpot = ty; 
		}
	}
}



if(keyboard_check_pressed(vk_space) && ap > 0){ 
	if(aiming == -1){
		ap = 0; 
	} else {
		aiming = -1;
	}
}

if(keyboard_check_pressed(vk_escape)){ 
	ww.pauseScreen = instance_create_depth(0, 0, -9999, objPauseScreen);
}




// move over time
moving = false;
if(x != xSpot * 60 + 30 || y != ySpot * 60 + 30){
	var steps = 6;
	if(debugMode){ steps = 15; }
	if(jumping){
		steps = 12;
		if(floor(y / 60) >= ySpot){ y -= 6; }
		jumpUpTime -= steps;
	}
	while(steps > 0 && (x != xSpot * 60 + 30 || y != ySpot * 60 + 30)){
		if(x < xSpot * 60 + 30){ x ++; }
		if(x > xSpot * 60 + 30){ x --; }
		if(y > ySpot * 60 + 30){ y --; }
		if(y < ySpot * 60 + 30 && jumpUpTime < 1){ y ++; }
		steps --;
	}
	moving = true;
}
if(!moving){ 
	if(jumping){
		jumping = false; 
		enterTile(xSpot, ySpot);
	}
}
if(!mouse_check_button(mb_left)){ mouseWalk = false; }


if(!mouseWalk){
	cam.x = x + 150;
	cam.y = y;
}



if(!triggeredTile && !moving){ enterTile(xSpot, ySpot); }


if(keyboard_check_pressed(vk_enter) || 
		(!moving && !mouseWalk && mouse_check_button_pressed(mb_left) && floor(mouse_x / 60) == xSpot && floor(mouse_y / 60) == ySpot)
		){
	mouseReleased = false;
	
	if(ww.fmap[xSpot, ySpot].object_index == objExit && !dontEnterUntilKeyReleased){
		ww.newStage = true;
		dontEnterUntilKeyReleased = true;
	}
	
	if(ww.fmap[xSpot, ySpot].object_index == objUpgradePod && !dontEnterUntilKeyReleased){
		ww.popUp = instance_create_depth(60, 60, -9000, objUpgradePopUp);
		dontEnterUntilKeyReleased = true;
	}
	
	if(ww.fmap[xSpot, ySpot].object_index == objSign && !dontEnterUntilKeyReleased){
		ww.fmap[xSpot, ySpot].image_speed = 0;
		ww.popUp = instance_create_depth(60, 60, -9000, objSignPopUp);
		dontEnterUntilKeyReleased = true;
	}
	
	if(ww.pmap[xSpot, ySpot] != noone && ww.pmap[xSpot, ySpot].object_index == objGear && !dontEnterUntilKeyReleased){
		if(ww.pmap[xSpot, ySpot].isArm){ 
			instance_destroy(arm);
			arm = ww.pmap[xSpot, ySpot]; 
		}
		if(ww.pmap[xSpot, ySpot].isBody){ 
			instance_destroy(body);
			body = ww.pmap[xSpot, ySpot]; 
		}
		if(ww.pmap[xSpot, ySpot].isCore){ 
			instance_destroy(core);
			core = ww.pmap[xSpot, ySpot]; 
		}
		if(ww.pmap[xSpot, ySpot].isDrive){ 
			instance_destroy(drive);
			drive = ww.pmap[xSpot, ySpot]; 
		}
		if(talent[26]){ hp ++; bonusHP ++; }
		checkStats = true;
		ww.pmap[xSpot, ySpot].xSpot = -1;
		ww.pmap[xSpot, ySpot].ySpot = -1;
		ww.pmap[xSpot, ySpot].visible = false;
		ww.pmap[xSpot, ySpot] = noone;
		dontEnterUntilKeyReleased = true;
	}
	
	
}







//bombs
if(!moving && bombs > 0){
	if(keyboard_check_pressed(ord("B")) || ( mouse_check_button_pressed(mb_left) && clickToBomb)){
		useBomb(xSpot, ySpot);
	}
}

//etanks
if(!moving && etanks > 0 && (sp < msp || ep < mep)){
	if(keyboard_check_pressed(ord("E")) || ( mouse_check_button_pressed(mb_left) && clickToETank)){
		etanks --;
		sp = msp; ep = mep;
		
		var s = instance_create_depth(x, y, -9000, objEffect);
		s.text = "E-Tank Used";
		s.textColor = c_orange;
		checkStats = true;
	}
}

//



if(keyboard_check_pressed(ord("I")) || ( mouse_check_button_pressed(mb_left) && clickSystem)){
	ww.popUp = instance_create_depth(60, 60, -9000, objSystemPopUp);	
}
if(( mouse_check_button_pressed(mb_left) && clickSign)){
	ww.popUp = instance_create_depth(60, 60, -9000, objSignPopUp);	
}


//skill input
if(!moving){
	if(ep >= skillCost[0] && (keyboard_check_pressed(192) || keyboard_check_pressed(ord("H")) || (mouse_check_button_pressed(mb_left) && clickSkill == 0)) ){ aiming = 0; }
	if(ep >= skillCost[1] && (keyboard_check_pressed(ord("1")) || mouse_check_button_pressed(mb_left) && clickSkill == 1) ){ aiming = 1; }
	if(ep >= skillCost[2] && hasSkill[2] && (keyboard_check_pressed(ord("2")) || mouse_check_button_pressed(mb_left) && clickSkill == 2) ){ aiming = 2; }
	if(hasSkill[3] && (keyboard_check_pressed(ord("3")) || mouse_check_button_pressed(mb_left) && clickSkill == 3) ){ aiming = 3; }
	if(hasSkill[4] && (keyboard_check_pressed(ord("4")) || mouse_check_button_pressed(mb_left) && clickSkill == 4) ){ aiming = 4; }
	if(ep >= skillCost[5] && hasSkill[5] && (keyboard_check_pressed(ord("5")) || mouse_check_button_pressed(mb_left) && clickSkill == 5) ){ aiming = 5; }
	if(ep >= skillCost[6] && hasSkill[6] && (keyboard_check_pressed(ord("6")) || mouse_check_button_pressed(mb_left) && clickSkill == 6) ){ aiming = 6; }
	
}

if(aiming == 6 && hasStatus(imgStatusNo6)){ aiming = -1; }

if(aiming != -1 && !moving){
	tx = xSpot; ty = ySpot; var dir = "";
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){ tx = xSpot-1; ty = ySpot; dir = "left"; image_xscale = -4; }
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){ tx = xSpot+1; ty = ySpot; dir = "right"; image_xscale = 4; }
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))){ tx = xSpot; ty = ySpot-1; dir = "up";}
	if(keyboard_check(vk_down) || keyboard_check(ord("S"))){ tx = xSpot; ty = ySpot+1; dir = "down";}
	
	if(mouse_check_button_pressed(mb_left)){
		if(mouseOverTile(xSpot, ySpot)){ aiming = -1; mouseReleased = false; }
		if(mouseOverTile(xSpot+1, ySpot)){ tx = xSpot+1; ty = ySpot; dir = "right"; image_xscale = 4; }
		if(mouseOverTile(xSpot-1, ySpot)){ tx = xSpot-1; ty = ySpot; dir = "left"; image_xscale = -4; }
		if(mouseOverTile(xSpot, ySpot+1)){ tx = xSpot; ty = ySpot+1; dir = "down"; }
		if(mouseOverTile(xSpot, ySpot-1)){ tx = xSpot; ty = ySpot-1; dir = "up"; }
	}
	
	if(tx != xSpot || ty != ySpot){
		if(aiming == 0){ useHack(tx, ty); }
		if(aiming == 1){ useSkill1(tx, ty, dir); }
		if(aiming == 2){ useSkill2(tx, ty, dir); }
		if(aiming == 3){ useSkill3(tx, ty, dir); }
		if(aiming == 4){ useSkill4(tx, ty, dir); }
		if(aiming == 5){ useSkill5(tx, ty, dir); }
		if(aiming == 6){ useSkill6(tx, ty, dir); }
		
		pc.checkStats = true;
	}
}





if( !keyboard_check(vk_left) && !keyboard_check(ord("A")) &&
			!keyboard_check(vk_right) && !keyboard_check(ord("D")) &&
			!keyboard_check(vk_up) && !keyboard_check(ord("W")) &&
			!keyboard_check(vk_down) && !keyboard_check(ord("S"))
			){
	dontMoveUntilKeysReleased = false;
}


if(!mouse_check_button(mb_left)){ mouseReleased = true; }
if(!keyboard_check(vk_enter)){ dontEnterUntilKeyReleased = false; }


if(!moving && ap <= 0){ endTurn(); }