//scope: called from drawing object
var gear = argument0;

var tips = 0;
tipsToShow = ds_list_create();

if(gearHasSpec(gear, "Orb Calling")){ tips ++; ds_list_add(tipsToShow, "Orb Calling"); }
if(gearHasSpec(gear, "Proc Shield")){ tips ++; ds_list_add(tipsToShow, "Proc Shield"); }
if(gearHasSpec(gear, "Combo Chain")){ tips ++; ds_list_add(tipsToShow, "Combo Chain"); }

if(gear.isArm){
	tips ++; ds_list_add(tipsToShow, "wep" + string(gear.armType));
}

while(ds_list_size(tipsToShow) > 0){
	draw_set_font(fntPlain); 
	
	var b = 350 - (tips * 30);
	tips --;
	
	var t = ds_list_find_value(tipsToShow, 0);
	ds_list_delete(tipsToShow, 0);
	
	if(t == "wep0"){
		var s = "Attacks do 1 to STR damage.";
	}
	
	if(t == "wep1"){
		var s = "Attacks do (1 to STR/2)+(1 to STR/2) damage.";
	}
	
	if(t == "wep2"){
		var s = "Attacks do STR/3 to STR damage.";
	}
	
	if(t == "Orb Calling"){
		var s = "x2 chance that defeated foes drop an orb.";
	}
	if(t == "Proc Shield"){
		var s = "Melee procs give SP.";
	}
	if(t == "Combo Chain"){
		var s = "Using the [1] Lightning Cannon makes your next attack do more damage.";
	}
	
	draw_set_color(c_black);
	draw_rectangle(20, b, 860, b + 30, false);
	draw_set_color(c_white);
	draw_text(30, b - 5, s);
}