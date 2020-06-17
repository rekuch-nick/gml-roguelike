var a = argument0;
var b = argument1;

if(floor(mouse_x / 60) == a) {
	if(floor(mouse_y / 60) == b) {
		if(device_mouse_x_to_gui(0) <= 900){
			return true;	
		}
	}
}
return false;
