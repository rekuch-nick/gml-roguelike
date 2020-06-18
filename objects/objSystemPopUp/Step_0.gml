if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) ||
	(clickToClose && mouse_check_button_pressed(mb_left))
	){
	pc.mouseReleased = false;
	ww.popUp = noone;
	instance_destroy();
}




if(clickA && mouse_check_button_pressed(mb_left)){
	
	if(pc.system == "temp" && pc.etanks < pc.etanksMax){
		pc.etanks ++;
		pc.systemPoints -= costA; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	if(pc.system == "clean" && pc.hp < pc.mhp){
		pc.hp = clamp(pc.hp + 4, 1, pc.mhp);
		pc.systemPoints -= costA; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	if(pc.system == "build"){
		deltaStat();
		pc.systemPoints -= costA; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	if(pc.system == "comm"){
		with(objMob){
			ww.mmap[xSpot, ySpot] = noone;
			instance_destroy();
		}
		pc.systemPoints -= costA; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	if(pc.system == "trans"){
		//teleport adjacent to pup ... or something better
		pc.systemPoints -= costA; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	
}


if(clickB && mouse_check_button_pressed(mb_left)){
	
	if(pc.system == "temp"){
		with(objStatus){
			if(isDebuff || isHazard){ instance_destroy(); }
		}
		pc.systemPoints -= costB; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	
	if(pc.system == "clean"){
		with(objWall){
			ww.bmap[floor(x / 60), floor(y / 60)] = noone;
			instance_create_depth(x + 15, y + 15, -9000, objChip);
			instance_create_depth(x + 15, y + 45, -9000, objChip);
			instance_create_depth(x + 45, y + 15, -9000, objChip);
			instance_create_depth(x + 45, y + 45, -9000, objChip);
			instance_destroy();
		}
		pc.systemPoints -= costB; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	
	if(pc.system == "build"){
		with(objDoor){ ww.bmap[floor(x / 60), floor(y / 60)] = noone; instance_destroy(); }
		with(objChest){ spawnPup(objGear, floor(x / 60), floor(y / 60)); ww.bmap[floor(x / 60), floor(y / 60)] = noone; instance_destroy(); }
		with(objHiddenChest){ spawnPup(objGear, floor(x / 60), floor(y / 60)); ww.bmap[floor(x / 60), floor(y / 60)] = noone; instance_destroy(); }
		pc.systemPoints -= costB; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	if(pc.system == "comm"){
		// gain buff
		pc.systemPoints -= costB; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	if(pc.system == "trans"){
		// summon ally
		pc.systemPoints -= costB; pc.mouseReleased = false; ww.popUp = noone; instance_destroy();
	}
	
	
	
	
}