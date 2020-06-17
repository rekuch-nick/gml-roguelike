if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) ||
	(clickToClose && mouse_check_button_pressed(mb_left))
	){
	pc.mouseReleased = false;
	ww.popUp = noone;
	instance_destroy();
}




if(clickA && mouse_check_button_pressed(mb_left)){
	pc.systemPoints -= costA;
	pc.mouseReleased = false;
	ww.popUp = noone;
	instance_destroy();
	
}


if(clickB && mouse_check_button_pressed(mb_left)){
	pc.systemPoints -= costB;
	pc.mouseReleased = false;
	ww.popUp = noone;
	instance_destroy();
	
}