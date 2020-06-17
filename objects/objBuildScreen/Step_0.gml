//desc = "";






//960 60
if(mouse_check_button_pressed(mb_left) && device_mouse_x_to_gui(0) >= 960 && device_mouse_y_to_gui(0) <= 60){
	image_index = image_index == 0 ? 1 : 0;
}

if(keyboard_check_pressed(vk_tab) || keyboard_check_pressed(vk_space)){
	image_index = image_index == 0 ? 1 : 0;
}


//480 - 720, >660
if(mouse_check_button_pressed(mb_left) && device_mouse_x_to_gui(0) >= 480  && device_mouse_x_to_gui(0) <= 720 && device_mouse_y_to_gui(0) >= 660){
	if(image_index == 0){ setClass(); }
	if(image_index == 1){ for(var i=0; i<32; i++){ pc.lastTalent[i] = pc.talent[i]; }}
	ww.newRun = true;
}
if( (acceptEnter && keyboard_check(vk_enter)) ){ 
	if(image_index == 0){ setClass(); }
	if(image_index == 1){ for(var i=0; i<32; i++){ pc.lastTalent[i] = pc.talent[i]; }}
	ww.newRun = true; 
}

if(!keyboard_check(vk_enter)){ acceptEnter = true; }



if(image_index == 0){
	
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		if(pc.class == 0){ pc.class = 1; return; }
		if(pc.class == 1){ pc.class = 0; return; }
		if(pc.class == 2){ pc.class = 3; return; }
		if(pc.class == 3){ pc.class = 2; return; }
		if(pc.class == 4){ pc.class = 5; return; }
		if(pc.class == 5){ pc.class = 4; return; }
	}
	
	if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
		if(pc.class == 0){ pc.class = 2; return; }
		if(pc.class == 1){ pc.class = 3; return; }
		if(pc.class == 2){ pc.class = 4; return; }
		if(pc.class == 3){ pc.class = 5; return; }
		if(pc.class == 4){ pc.class = 0; return; }
		if(pc.class == 5){ pc.class = 1; return; }
	}
	
	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		if(pc.class == 0){ pc.class = 4; return; }
		if(pc.class == 1){ pc.class = 5; return; }
		if(pc.class == 2){ pc.class = 0; return; }
		if(pc.class == 3){ pc.class = 1; return; }
		if(pc.class == 4){ pc.class = 2; return; }
		if(pc.class == 5){ pc.class = 3; return; }
	}
	
	if(keyboard_check_pressed(ord("1"))){ pc.class = 0; }
	if(keyboard_check_pressed(ord("2"))){ pc.class = 1; }
	if(keyboard_check_pressed(ord("3"))){ pc.class = 2; }
	if(keyboard_check_pressed(ord("4"))){ pc.class = 3; }
	if(keyboard_check_pressed(ord("5"))){ pc.class = 4; }
	if(keyboard_check_pressed(ord("6"))){ pc.class = 5; }
}


if(image_index == 1){
	if(keyboard_check_pressed(ord("1"))){ pc.class = 0; setClass(); }
	if(keyboard_check_pressed(ord("2"))){ pc.class = 1; setClass(); }
	if(keyboard_check_pressed(ord("3"))){ pc.class = 2; setClass(); }
	if(keyboard_check_pressed(ord("4"))){ pc.class = 3; setClass(); }
	if(keyboard_check_pressed(ord("5"))){ pc.class = 4; setClass(); }
	if(keyboard_check_pressed(ord("6"))){ pc.class = 5; setClass(); }
}