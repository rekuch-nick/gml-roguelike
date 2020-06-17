if(!visible){ return; }

if(pc.talent[num]){
	pc.talentPoints += cost;
	pc.talent[num] = false;
	
} else {
	if(pc.talentPoints >= cost){
		pc.talentPoints -= cost;
		pc.talent[num] = true;
	}
	
}