draw_self();

draw_set_color(c_white);
draw_set_font(fntSmall);

if(val == 1 && deeps > 0){
	draw_text(x, y + 23, string(deeps + 1) );
} else if (val > 1) {
	draw_text(x, y + 23, string(val) );
}