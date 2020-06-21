var a = argument0;
var b = argument1;
var note = argument2;


if(ww.bmap[a, b] != noone){
	var t = ww.bmap[a, b].object_index;
	if(note == "bomb" || note == "shovel"){
		if(t == objWall){
			pleaseSystem("build", 2);
			instance_destroy(ww.bmap[a, b]);
			ww.bmap[a, b] = noone;
			
			instance_create_depth(a * 60 - 15, b * 60 - 15, -9000, objChip);
			instance_create_depth(a * 60 - 15, b * 60 + 15, -9000, objChip);
			instance_create_depth(a * 60 + 15, b * 60 - 15, -9000, objChip);
			instance_create_depth(a * 60 + 15, b * 60 + 15, -9000, objChip);
		}
		
		if(t == objHiddenChest){
			instance_destroy(ww.bmap[a, b]);
			ww.bmap[a, b] = noone;
			
			instance_create_depth(a * 60 - 15, b * 60 - 15, -9000, objChip);
			instance_create_depth(a * 60 - 15, b * 60 + 15, -9000, objChip);
			instance_create_depth(a * 60 + 15, b * 60 - 15, -9000, objChip);
			instance_create_depth(a * 60 + 15, b * 60 + 15, -9000, objChip);
			
			ww.bmap[a, b] = instance_create_depth(a * 60, b * 60, -2002 - (b * 10), objChest);
		}
		
	}
}



if(ww.fmap[a, b] != noone){
	var t = ww.fmap[a, b].object_index;
	if(note == "bomb" || note == "fire"){
		if(t == objGrass){
			instance_destroy(ww.fmap[a, b]);
			ww.fmap[a, b] = instance_create_depth(a * 60, b * 60, -2000 - (b * 10), objFloor);
		}
	}
	if(note == "bomb"){
		if(t == objPox || t == objPox2){
			instance_destroy(ww.fmap[a, b]);
			ww.fmap[a, b] = instance_create_depth(a * 60, b * 60, -2000 - (b * 10), objFloor);
		}
	}
	
	
}





if(ww.tmap[a, b] != noone){
	var t = ww.tmap[a, b].object_index;
	if(note == "bomb"){
		if(t == objTrap || objSpikeTrap || objFireTrap || objShockTrap){
			instance_destroy(ww.tmap[a, b]);
			ww.tmap[a, b] = noone;
		}
	}
	
	
}







