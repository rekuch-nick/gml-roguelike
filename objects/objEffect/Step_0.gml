if(firstFrame){
	if(text != ""){
		ySpeed = -5;
		timeCD = 300;
		y += ww.combatTextOffset;
		ww.combatTextOffset += 30;
		
		if(text == "<!>"){ y -= 30; ySpeed = -1; ww.combatTextOffset -= 30; timeCD = 60;}
	}
	
	if(tx != -1 || ty != -1){
		var angle = arctan2(ty - y, tx - x);
		xSpeed = cos(angle) * moveSpeed;
		ySpeed = sin(angle) * moveSpeed;
	}
	
	
	firstFrame = false;	
}

if(chasePlayer != noone){
	
	
	timeCD ++;
	var angle = arctan2(chasePlayer.y - y, chasePlayer.x - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	
	if(point_distance(x, y, chasePlayer.x, chasePlayer.y) < 14){ remove = true; }
	
}

x += xSpeed;
y += ySpeed;
ySpeed += grav;
image_alpha -= fade;

if(requireBounds){
	var a = floor(x / 60);
	var b = floor(y / 60);
	
	if(a < ww.xStart){ x += 60; remove =  true; }
	if(b < ww.yStart){ y += 60; remove =  true; }
	if(a >= ww.xBounds){ x -= 60; remove =  true; }
	if(b >= ww.yBounds){ y -= 60; remove =  true; }
}

if(randomRotate){ image_angle += irandom_range(0, 359); }
if(flicker){ image_alpha = random_range(.5, 1); }




if(!timeless){ timeCD --; }
if(timeCD < 1){ remove = true; }


if(!passwall){
	if(ww.bmap[floor(x / 60), floor(y / 60)] != noone){ remove = true; }
}

if(usePris && prisCD == 0){
	if(ww.fmap[floor(x / 60), floor(y / 60)] != noone && ww.fmap[floor(x / 60), floor(y / 60)].object_index == objPrisim){
		
		prisCD = 5;
	
		if(xSpeed == 0){
			show_debug_message(123)
			
			var s = instance_create_depth(floor(x / 60) * 60 + 30, floor(y / 60) * 60 + 30, -9000, object_index);
			s.xSpeed = -15; s.ySpeed = 0; s.prisCD = 5;
			var s = instance_create_depth(floor(x / 60) * 60 + 30, floor(y / 60) * 60 + 30, -9000, object_index);
			s.xSpeed = 15; s.ySpeed = 0; s.prisCD = 5;
		}
		if(ySpeed == 0){
			var s = instance_create_depth(floor(x / 60) * 60 + 30, floor(y / 60) * 60 + 30, -9000, object_index);
			s.xSpeed = 0; s.ySpeed = 15; s.prisCD = 5;
			var s = instance_create_depth(floor(x / 60) * 60 + 30, floor(y / 60) * 60 + 30, -9000, object_index);
			s.xSpeed = 0; s.ySpeed = -15; s.prisCD = 5;
		}
	}
}
if(prisCD > 0){prisCD --; }


if(resolveOnHit && ww.mmap[floor(x / 60), floor(y / 60)] != noone && ww.mmap[floor(x / 60), floor(y / 60)].foe){
	resolveShot(object_index, floor(x / 60), floor(y / 60));
	remove = true;
}






if(remove){
	if(afterNote != "-"){ 
		if(chasePlayer == pc){ harmPlayer(afterDamage, afterNote);  }
		if(chasePlayer != noone && chasePlayer != pc){
			
			chasePlayer.hp -= afterDamage;
			
			var s = instance_create_depth(chasePlayer.xSpot * 60 + 30, chasePlayer.ySpot * 60 + 30, -9000, objEffect);
			s.text = string(afterDamage);
			s.textColor = c_white;

			if(afterNote == "miss"){ s.text = "Miss"; }
	
			if(afterNote == "proc" || afterNote == "crit"){
				s.text = s.text + "!";
			}
			
			if(!chasePlayer.foe){ s.textColor = c_gray; }
			
		}
	}
	
	
	instance_destroy();
}