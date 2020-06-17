draw_self();


//draw_set_color(c_gray);
//draw_set_font(fntSign);
//draw_text(x + 5, y, cost);



draw_set_color(c_white);
draw_set_font(fntPlain);
draw_text(x + 10, y + 8, name);




if(pc.talent[num]){
	
	
	
	draw_set_color(c_white);
	draw_set_alpha(.3);
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false);
	
	
	draw_set_alpha(1);	
}


if(desc != ""){
	draw_set_color(c_black);
	draw_rectangle(0, 600, 1200, 720, false);
	draw_set_font(fntPlain);
	draw_set_color(c_white);
	draw_text(30, 600, desc);
}
desc = "";



