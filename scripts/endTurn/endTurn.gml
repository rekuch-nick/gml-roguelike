//score: called from pc

ww.timeInDeep ++;
pc.checkStats = true;

ap = map;

var unusedEP = 0;
var unusedSP = 0;

var f = ww.fmap[xSpot, ySpot].object_index;

if(!hasStatus(imgStatusNoSPC) && f != objPox && f != objPox2){
	var spGain = spCharge;
	if(sp < 1 && talent[24]){ spGain *= 4; }
	unusedSP = spGain - (msp - sp);
	sp = clamp(sp + spGain, 0, msp);
}

if(!hasStatus(imgStatusNoEPC) && f != objPox && f != objPox2){
	unusedEP = epCharge - (mep - ep);
	ep = clamp(ep + epCharge, 0, mep);
}

//while(sp < msp && talent[15] && unusedEP > 0){
//	unusedEP --;
//	sp ++;
//}

while(ep < mep && talent[15] && unusedSP > 0){
	unusedSP --;
	ep ++;
}





mobTurn();






spawnRandomMob();
if(hasStatus(imgStatusExtraMonsters)){ spawnRandomMob(); }



