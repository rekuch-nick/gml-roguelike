draw_self();

if(text != ""){
	draw_set_color(c_black);
	draw_set_alpha(.5);
	var w = string_length(text) * 15;
	draw_rectangle(x, y + 12, x + w, y + 34, false);
	
	
	draw_set_alpha(1);
	draw_set_color(textColor);
	draw_set_font(fntPlain);
	draw_text(x, y, text);
}