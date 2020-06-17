//image_alpha = .95;
draw_self();

draw_set_color(c_white);
draw_set_font(fntPlain);
draw_text(60, 15, "Viewing Page: " + string(page));

draw_set_color(c_yellow);
draw_set_alpha(random_range(.8, 1));

var line = 0;
var s = "";
for(var i=0; i<array_length_1d(words); i++){
	var linePlus = 1;
	var breakLine = 0;
	
	if (words[i] == "{system}") {
		draw_sprite_stretched(imgSystemInBuild, 0, 120, 130 + ((line + 1) * 35), 60, 60);
		draw_sprite_stretched(imgSystemInClean, 0, 320, 130 + ((line + 1) * 35), 60, 60);
		draw_sprite_stretched(imgSystemInComm, 0, 560, 130 + ((line + 1) * 35), 60, 60);
		draw_sprite_stretched(imgSystemInTemp, 0, 800, 130 + ((line + 1) * 35), 60, 60);
		draw_sprite_stretched(imgSystemInTrans, 0, 1020, 130 + ((line + 1) * 35), 60, 60);
		
		breakLine = 3;
	} 
	
	if(words[i] == "{break}" || breakLine > 0){
		s+= "                                                            ";
		linePlus = 2 + breakLine;
	} else if (words[i] == "{green}") {
		draw_set_color(c_lime);
	} else if (words[i] == "{yellow}") {
		draw_set_color(c_yellow);
	} else if (words[i] == "{white}") {
		draw_set_color(c_white);
	} else {
		s += words[i] + " ";
	}
	
	if(string_length(s) >= 60 || i == array_length_1d(words) - 1){
		draw_text(140, 90 + (line * 35), s);
		s = "";
		line += linePlus;
	}
}



draw_set_alpha(1);