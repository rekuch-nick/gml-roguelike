var a = argument0;
var b = argument1;
var tx = argument2;
var ty = argument3;


while(a != tx || b != ty){
	bmap[a, b] = "";
	if(a < tx){ a ++; }
	if(a > tx){ a --; }
	if(b > ty){ b --; }
	if(b < ty){ b ++; }
	bmap[a, b] = "";
}