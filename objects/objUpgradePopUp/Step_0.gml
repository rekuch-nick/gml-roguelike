if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) ||
	(clickToClose && mouse_check_button_pressed(mb_left)) || getOut
	){
		
	for(var a=0; a<2; a++){	for(var b=0; b<9; b++){
		instance_destroy(bars[a, b]);
		bars[a, b] = noone;
	}}
	
		
	pc.mouseReleased = false;
	ww.popUp = noone;
	instance_destroy();
}