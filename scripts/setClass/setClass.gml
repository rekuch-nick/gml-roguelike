for(var i=0; i<32; i++){ pc.talent[i] = false; }

var n = pc.talentPointsMax;



if(pc.class == 0){ //fighter
	if(n >= 1){ pc.talent[0] = true; }
	if(n >= 2){ pc.talent[1] = true; }
	if(n >= 3){ pc.talent[4] = true; }
	if(n >= 4){ pc.talent[5] = true; }
	if(n >= 5){ pc.talent[6] = true; }
	if(n >= 6){ pc.talent[13] = true; }
	
}

if(pc.class == 1){ //shocker ....[3]
	if(n >= 1){ pc.talent[8] = true; }
	if(n >= 2){ pc.talent[14] = true; }
	if(n >= 3){ pc.talent[15] = true; }
	if(n >= 4){ pc.talent[2] = true; }
	if(n >= 5){ pc.talent[6] = true; }
	if(n >= 6){ pc.talent[10] = true; }
	
}


if(pc.class == 2){ //explorer [3]
	if(n >= 1){ pc.talent[16] = true; }
	if(n >= 2){ pc.talent[20] = true; }
	if(n >= 3){ pc.talent[10] = true; }
	if(n >= 4){ pc.talent[18] = true; }
	if(n >= 5){ pc.talent[19] = true; }
	if(n >= 6){ pc.talent[17] = true; }
	
}

if(pc.class == 3){ //factotum [4]
	if(n >= 1){ pc.talent[24] = true; }
	if(n >= 2){ pc.talent[26] = true; }
	if(n >= 3){ pc.talent[11] = true; }
	if(n >= 4){ pc.talent[0] = true; }
	if(n >= 5){ pc.talent[21] = true; }
	if(n >= 6){ pc.talent[3] = true; }
	
}

if(pc.class == 4){ //pyro [2] [6]
	if(n >= 1){ pc.talent[9] = true; }
	if(n >= 2){ pc.talent[8] = true; }
	if(n >= 3){ pc.talent[13] = true; }
	if(n >= 4){ pc.talent[15] = true; }
	if(n >= 5){ pc.talent[1] = true; }
	if(n >= 6){ pc.talent[4] = true; }
	
}


if(pc.class == 5){ //shadow [5] [6]
	if(n >= 1){ pc.talent[27] = true; }
	if(n >= 2){ pc.talent[25] = true; }
	if(n >= 3){ pc.talent[12] = true; }
	if(n >= 4){ pc.talent[13] = true; }
	if(n >= 5){ pc.talent[6] = true; }
	if(n >= 6){ pc.talent[21] = true; }
	
}

