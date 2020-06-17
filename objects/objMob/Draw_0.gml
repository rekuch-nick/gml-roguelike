draw_self();

if(hp < mhp && hp >= 0){
	var n = hp / mhp;
	draw_set_color(c_red);
	draw_rectangle(x - 30, y - 25, x - 30 + (60 * n), y - 30, false);
}


if(!foe){
	draw_set_alpha(.5);
	draw_sprite_stretched(imgAlly, 0, x-30, y-26, 20, 24);
	draw_set_alpha(1);
}