var gear = argument0;
var spec = argument1;


for(var i=0; i<10; i++){
	if(gear.spec[i] == spec){ return true; }
}

return false;