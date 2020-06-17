var n = argument0;

if(n == "hp"){ pc._mhp ++; pc.hp ++; }
if(n == "sp"){ pc._msp ++; }
if(n == "ep"){ pc._mep ++; }
if(n == "ap"){ pc._map ++; }
if(n == "evade"){ pc._evade ++; }
if(n == "tevade"){ pc._evadeTrap ++; }
if(n == "def"){ pc._resistPhys ++; }
if(n == "cdef"){ pc._resistProc ++; }
if(n == "res"){ pc._resistEnergy ++; }
if(n == "hres"){ pc._resistHeat ++; }
if(n == "str"){ pc._physPower ++; }
if(n == "pow"){ pc._energyPower ++; }
if(n == "aim"){ pc._aim ++; }
if(n == "proc"){ pc._proc ++; }
if(n == "procp"){ pc._procPower ++; }
if(n == "spot"){ pc._see ++; }
if(n == "hack"){ pc._hack ++; }