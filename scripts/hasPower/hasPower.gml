var t = argument0;

for(var i=0; i<10; i++){
	if(pc.arm.spec[i] == t){ return true; }
	if(pc.body.spec[i] == t){ return true; }
	if(pc.core.spec[i] == t){ return true; }
	if(pc.drive.spec[i] == t){ return true; }
}


return false;