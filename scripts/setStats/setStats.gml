
mhp = _mhp + arm.hp + body.hp + core.hp + drive.hp + bonusHP;

msp = _msp + arm.sp + body.sp + core.sp + drive.sp;

mep = _mep + arm.ep + body.ep + core.ep + drive.ep;

map = _map + arm.ap + body.ap + core.ap + drive.ap;
if(talent[27]){ map += 1; }

spCharge = _spCharge + arm.spCharge + body.spCharge + core.spCharge + drive.spCharge;

epCharge = _epCharge + arm.epCharge + body.epCharge + core.epCharge + drive.epCharge;
if(talent[8]){ epCharge ++; }

evade = _evade + arm.evade + body.evade + core.evade + drive.evade;
if(hasStatus(imgStatusEvadeUp)){ evade += 10; }
if(talent[6]){ evade += 10; }

resistProc = _resistProc + arm.resistProc + body.resistProc + core.resistProc + drive.resistProc;
resistPhys = _resistPhys + arm.resistPhys + body.resistPhys + core.resistPhys + drive.resistPhys;
resistHeat  = _resistHeat + arm.resistHeat + body.resistHeat + core.resistHeat + drive.resistHeat;
resistEnergy = _resistEnergy + arm.resistEnergy + body.resistEnergy + core.resistEnergy + drive.resistEnergy;

evadeTrap = _evadeTrap + arm.evadeTrap + body.evadeTrap + core.evadeTrap + drive.evadeTrap;
if(talent[21]){ evadeTrap += 50; }




physPower = _physPower + arm.physPower + body.physPower + core.physPower + drive.physPower;
if(talent[0]){ physPower += 2; }

energyPower = _energyPower + arm.energyPower + body.energyPower + core.energyPower + drive.energyPower;
if(talent[3] && _physPower >= 10){ energyPower += 10; }

aim = _aim + arm.aim + body.aim + core.aim + drive.aim;

proc = _proc + arm.proc + body.proc + core.proc + drive.proc;
proc += stackingCritBonus;

procPower = _procPower + arm.procPower + body.procPower + core.procPower + drive.procPower;
if(talent[4]){ procPower += 100; }

atkType = arm.armType;
atkRange = physPower;
atkMin = 1;
atkPlus = 0;
dmgType = "";

see = _see + arm.see + body.see + core.see + drive.see;
if(talent[20]){ see += 20; }

hack = _hack + arm.hack + body.hack + core.hack + drive.hack;
if(hasStatus(imgStatusHackUp)){ hack = floor(hack * 2); }

hasSkill[0] = true;
hasSkill[1] = true;
hasSkill[2] = false;
if(talent[9]){ hasSkill[2] = true; }

hasSkill[3] = false;
if(talent[10]){ hasSkill[3] = true; }

hasSkill[4] = false;
if(talent[11]){ hasSkill[4] = true; }

hasSkill[5] = false;
if(talent[12]){ hasSkill[5] = true; }

hasSkill[6] = false;
if(talent[13]){ hasSkill[6] = true; }


skillCost[0] = 12;
skillCost[1] = 6;
skillCost[2] = 10;
skillCost[3] = 1;
skillCost[4] = 1;
skillCost[5] = 6;
skillCost[6] = 15;

cost3[0] = 5;
cost3[1] = 10;
cost3[2] = 20;
cost3[3] = 20;

cost4[0] = 1;
cost4[1] = 10;
cost4[2] = 20;
cost4[3] = 20;

powToUse2 = 5;
powToUse3 = 10;
powToUse4 = 20;

keysMax = 99;
bombsMax = 4;
etanksMax = 2;



var a = 0; var b = 0;
with(objStatus){
	x = 905 + (a * 50);
	y = 185 + (b * 50);
	
	b ++;
	if(b > 2){b = 0; a ++; }
}


if(fill){
	fill = false;
	hp = mhp;
	sp = msp;
	ep = mep;
	ap = map;
}
