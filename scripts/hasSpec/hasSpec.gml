var spec = argument0;

for(var i=0; i<10; i++){
	if(pc.arm.spec[i] == spec){ return true; }
	if(pc.body.spec[i] == spec){ return true; }
	if(pc.core.spec[i] == spec){ return true; }
	if(pc.drive.spec[i] == spec){ return true; }
}

return false;