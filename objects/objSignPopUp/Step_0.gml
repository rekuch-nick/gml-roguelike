if(firstFrame){
	firstFrame = false;
	return;
}

if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
	do {
		page --;
		if(page < 1){ page = 50; }
	} until (pc.page[page])
	words = stringToArray(signText(page));
}

if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
	do {
		page ++;
		if(page > 50){ page = 1; }
	} until (pc.page[page])
	words = stringToArray(signText(page));
}

if(keyboard_check_pressed(vk_enter)){
	ww.popUp = noone;
	instance_destroy();
}

if(mouse_check_button_pressed(mb_left)){
	pc.mouseReleased = false;
	ww.popUp = noone;
	instance_destroy();
}