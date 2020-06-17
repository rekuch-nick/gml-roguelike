var d = argument0;
var note = argument1;

var spLost = 0;
var hpLost = 0;


if(hasStatus(imgStatusDamageReduction)){
	d = ceil(d / 2);
}

while(pc.sp > 0 && d > 0){
	pc.sp --;
	d --;
	spLost ++;
}

while(d > 0){
	pc.hp --;
	d --;
	hpLost ++;
}

var s = instance_create_depth(pc.xSpot * 60 + 30, pc.ySpot * 60 + 30, -9000, objEffect);
s.text = "-" + string(spLost);
s.textColor = c_orange;

if(note == "miss"){
	s.text = "Dodge";
	s.textColor = c_aqua;
}

if(hpLost > 0){
	s.text = "-" + string(hpLost);
	s.textColor = c_red;
}

if(note == "proc" || note == "crit"){
	s.text = s.text + "!";
}

if(pc.hp < 1){
	
	
	pc.dyingTime = 150;
}