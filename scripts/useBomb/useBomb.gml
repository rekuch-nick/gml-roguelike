//scope: called from pc
var cx = argument0;
var cy = argument1;


for(var a = cx - 1; a <= cx + 1; a ++){
	for(var b = cy - 1; b <= cy + 1; b ++){
		if(!inBounds(a, b)){ continue; }
			
		instance_create_depth(a * 60 + 30, b * 60 + 30, -9000, objBombBlast);
			
			
		var t = ww.mmap[a, b];
		if(t != noone && t.foe){
			var damage = 10;				
			t.hp -= damage;
			
			var s = instance_create_depth(t.xSpot * 60 + 30, t.ySpot * 60 + 30, -9000, objEffect);
			s.text = string(damage);
			s.textColor = c_white;
		}
		
		impactTile(a, b, "bomb");
		
			

	}
}


pc.bombs --;
