draw_self();

draw_set_color(c_white);
draw_set_font(fntSign);
draw_text(x + 110, y + 10, name);


draw_set_font(fntPlain);
draw_text(x + 20, y + 60, desc);

if(pc.class == num){
	draw_set_color(c_white);
	draw_set_alpha(.3);
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false);
	
	
	draw_set_alpha(1);
}