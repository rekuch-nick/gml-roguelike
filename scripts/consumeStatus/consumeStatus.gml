var t = argument0;

with(objStatus){
	if(sprite_index == t){
		val --;
		if(val < 1){ instance_destroy(); }
		pc.checkStats = true;
		break;
	}
}