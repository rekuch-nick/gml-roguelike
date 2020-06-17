draw_self();
for(var i=80; i<1120; i+= 40){
	draw_sprite_stretched(imgHackNumber, irandom_range(0, 3), i, 80, 40, 40);
	draw_sprite_stretched(imgHackNumber, irandom_range(0, 3), i, 590, 40, 40);
}

draw_set_color(c_green);
draw_rectangle(100, 300, 200, 400, false);
draw_rectangle(100, 450, 200, 550, false);

draw_set_font(fntPlain);
draw_set_color(c_gray);
draw_text(100, 240, "Current System Points: " + string(pc.systemPoints));

draw_set_font(fntSign);
draw_set_color(c_lime);

if(pc.system == ""){
	draw_text(100, 160, "Not currently hacked in to any system.");
}

if(pc.system == "temp"){
	draw_text(100, 160, "Connected to Environmental systems.");
	draw_text(100, 200, "Gain points by making fire.");
	costA = 50; costB = 100;
	
	draw_set_color(c_black);
	draw_text(110, 320, "-" + string(costA)); 
	draw_text(110, 480, "-" + string(costB)); 
}

if(pc.system == "clean"){
	draw_text(100, 160, "Connected to Cleaning systems.");
	draw_text(100, 200, "Gain points by defeating biological monsters.");
	costA = 50; costB = 100;
	
	draw_set_color(c_black);
	draw_text(110, 320, "-" + string(costA)); 
	draw_text(110, 480, "-" + string(costB)); 
}

if(pc.system == "build"){
	draw_text(100, 160, "Connected to Construction systems.");
	draw_text(100, 200, "Gain points by breaking walls.");
	costA = 50; costB = 100;
	
	draw_set_color(c_black);
	draw_text(110, 320, "-" + string(costA)); 
	draw_text(110, 480, "-" + string(costB)); 
}

if(pc.system == "comm"){
	draw_text(100, 160, "Connected to Communication systems.");
	draw_text(100, 200, "Gain points by ...");
	costA = 50; costB = 100;
	
	draw_set_color(c_black);
	draw_text(110, 320, "-" + string(costA)); 
	draw_text(110, 480, "-" + string(costB)); 
}

if(pc.system == "trans"){
	draw_text(100, 160, "Connected to Transport systems.");
	draw_text(100, 200, "Gain points by opening locks.");
	costA = 50; costB = 100;
	
	draw_set_color(c_black);
	draw_text(110, 320, "-" + string(costA)); 
	draw_text(110, 480, "-" + string(costB)); 
}




clickToClose = true;
clickA = false;
clickB = false;



	if(device_mouse_x_to_gui(0) >= 100 && device_mouse_x_to_gui(0) <= 200){
		if(device_mouse_y_to_gui(0) >= 300 && device_mouse_y_to_gui(0) <= 400){
			clickToClose = false;
			if(pc.systemPoints >= costA){
				
				clickA = true;
				draw_set_alpha(.3);
				draw_set_color(c_white);
				draw_rectangle(100, 300, 200, 400, false);
				draw_set_alpha(1);
				
			}
		}
	
		if(device_mouse_y_to_gui(0) >= 450 && device_mouse_y_to_gui(0) <= 550){
			clickToClose = false;
			if(pc.systemPoints >= costB){
				
				clickB = true;
				draw_set_alpha(.3);
				draw_set_color(c_white);
				draw_rectangle(100, 450, 200, 550, false);
				draw_set_alpha(1);
				
			}
		}
	
	}






