draw_self();

draw_set_font(fntSign);
draw_set_color(c_white);



//s = string(mouse_x) + ", " + string(mouse_y);
//draw_text(100, 100, s);




if(image_index == 0){
	draw_text(10, 10, "Choose a build for the next Mech:");
	draw_set_font(fntPlain);
	draw_text(990, -10, "Use Advanced");
	draw_text(990, 20, "Building Mode");
} else {
	draw_text(10, 10, "Choose talents for the next Mech:");
	draw_text(10, 40, "Points: " + string(pc.talentPoints) + " / " + string(pc.talentPointsMax));
	
	draw_set_font(fntPlain);
	draw_text(990, -10, "Use Normal");
	draw_text(990, 20, "Building Mode");
	
	draw_text(20, 600, "(Press [1], [2], [3], [4], [5], or [6] to copy one of the normal class templates.)");
}


draw_set_font(fntSign);
draw_text(520, 660, "LAUNCH");


