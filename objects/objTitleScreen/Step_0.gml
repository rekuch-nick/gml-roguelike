



if(keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left) ){
	pc.mouseReleased = false;
	//ww.newRun = true;
	
	ww.buildScreen = instance_create_depth(0, 0, -9000, objBuildScreen);
	
	instance_destroy();
	ww.titleScreen = noone;
	
	
	
	
}
