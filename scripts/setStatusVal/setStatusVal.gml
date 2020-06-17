var t = argument0;
var v = argument1;

with(objStatus){
	if(sprite_index == t){
		val += v;
		if(val < 1){ instance_destroy(); }
		break;
	}
}