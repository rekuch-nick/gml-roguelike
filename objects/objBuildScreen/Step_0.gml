//desc = "";






//960 60
if(mouse_check_button_pressed(mb_left) && device_mouse_x_to_gui(0) >= 960 && device_mouse_y_to_gui(0) <= 60){
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
