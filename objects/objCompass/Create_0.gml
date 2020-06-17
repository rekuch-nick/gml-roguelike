image_xscale = 3.9; image_yscale = 3.9;

scaleMod = 0;
pulseDir = .02;
pulseTime = 30;


with(objTile){
	if(object_index == objExit){
		other.tx = x + 30;
		other.ty = y + 30;
		break;
	}
}


image_alpha = .6;