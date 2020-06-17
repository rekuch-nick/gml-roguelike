



active = false;

var a = device_mouse_x_to_gui(0);
var b = device_mouse_y_to_gui(0);

if(a >= x + 4 && a <= x + 498 && b >= y && b <= y + 48){
	active = true;
}




if(mouse_check_button_pressed(mb_left) && active && pc.scrap >= cost){
	pc.scrap -= cost;
	pc.checkStats = true;
	addOneByNote(note);
}

if(mouse_check_button_pressed(mb_left) && active && note == "exit"){
	ww.popUp.getOut = true;
}