var t = argument0;
var rt = 0;

if(t == "hp"){ n = pc._mhp - 19; b = 2; rt = 10; }
if(t == "sp"){ n = pc._msp - 9; b = 10; rt = 10; }
if(t == "ep"){ n = pc._mep - 29; b = 2; rt = 10; }
if(t == "ap"){ n = pc._map - 3; b = 120; rt = 1; }
if(t == "evade"){ n = pc._evade + 1; b = 4; rt = 100; }
if(t == "tevade"){ n = pc._evadeTrap + 1; b = 3; rt = 100; }
if(t == "def"){ n = pc._resistPhys + 1; b = 120; rt = 1; }
if(t == "cdef"){ n = pc._resistProc + 1; b = 50; rt = 2; }
if(t == "res"){ n = pc._resistEnergy + 1; b = 50; rt = 2; }
if(t == "hres"){ n = pc._resistHeat + 1; b = 50; rt = 2; }
if(t == "str"){ n = pc._physPower - 3; b = 10; rt = 2; }
if(t == "pow"){ n = pc._energyPower - 3; b = 10; rt = 2; }
if(t == "aim"){ n = pc._aim + 1; b = 2; rt = 100; }
if(t == "proc"){ n = pc._proc - 4; b = 3; rt = 100; }
if(t == "procp"){ n = pc._procPower - 99; b = 3; rt = 100; }
if(t == "spot"){ n = pc._see + 1; b = 2; rt = 100; }
if(t == "hack"){ n = pc._hack + 1; b = 2; rt = 100; }



if(rt == 0){
	return 0;
} else if (rt == 1){
	f = 1;
	if(n > 2){ f ++; }
	if(n > 4){ f ++; }
	if(n > 6){ f ++; }
	if(n > 8){ f ++; }
	if(n > 10){ f ++; }
	return b * n * f;
} else if (rt == 2){
	f = 1;
	if(n > 4){ f ++; }
	if(n > 8){ f ++; }
	if(n > 16){ f ++; }
	if(n > 32){ f ++; }
	if(n > 64){ f ++; }
	return b * n * f;
} else if (rt == 10){
	f = 1;
	if(n > 5){ f ++; }
	if(n > 10){ f ++; }
	if(n > 15){ f ++; }
	if(n > 20){ f ++; }
	if(n > 25){ f ++; }
	if(n > 30){ f ++; }
	return b * n * f;
} else if (rt == 100){
	f = 1;
	if(n > 10){ f ++; }
	if(n > 40){ f ++; }
	if(n > 80){ f ++; }
	if(n > 120){ f ++; }
	if(n > 150){ f ++; }
	return b * n * f;
}