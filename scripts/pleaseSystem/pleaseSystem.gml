var system = argument0;
var val = argument1;



if(pc.system == system){
	
	
	pc.systemPoints = clamp(pc.systemPoints + val, 0, 100);
}