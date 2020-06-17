if(rollSelf){
	var r = irandom_range(1, 4);
	if(r == 1){ 
		isArm = true;
		sprite_index = imgArm;
	}
	if(r == 2){ 
		isBody = true;
		sprite_index = imgBody;
	}
	if(r == 3){ 
		isCore = true;
		sprite_index = imgCore;
	}
	if(r == 4){ 
		isDrive = true;
		sprite_index = imgDrive;
	}
	
	
	rank = floor((irandom_range(1, 120) + pc.deep * 4) / 100);
	if(rollHigh){ rank ++; }
	var points = irandom_range(2, 3) + (rank * 2) + irandom_range(0, rank);
	rank = clamp(rank, 0, 5);
	if(rank == 0){ name = "Basic"; }
	if(rank == 1){ name = "Fine"; }
	if(rank == 2){ name = "Rare"; }
	if(rank == 3){ name = "Epic"; }
	if(rank == 4){ name = "Legend"; }
	if(rank == 5){ name = "Shiny"; }
	
	image_index = rank;
	
	while(points > 0){
		var r = irandom_range(1, 20);
		var allowRare = irandom_range(1, 10) == 1 ? true : false;
		
		if(r == 1 && points >= 1 && (isBody || allowRare)){
			hp += irandom_range(7, 13);
			points --;
		}
		
		if(r == 2 && points >= 1 && (isBody || allowRare)){
			sp += irandom_range(2, 5);
			points --;
		}
		
		if(r == 3 && points >= 1 && (isCore || allowRare)){
			ep += irandom_range(7, 13);
			points --;
		}
		
		if(r == 4 && points >= 2 && (isCore || allowRare)){
			ap ++;
			points -= 2;
		}
		
		if(r == 5 && points >= 2 && (isCore || allowRare)){
			spCharge ++;
			points -= 2;
		}
		
		if(r == 6 && points >= 2 && (isCore || allowRare)){
			epCharge ++;
			points -= 2;
		}
		
		if(r == 7 && points >= 1 && (isDrive || allowRare)){
			evade += irandom_range(2, 5);
			points --;
		}
		
		if(r == 8 && points >= 1 && (isDrive || allowRare)){
			evadeTrap += irandom_range(5, 15);
			points --;
		}
		
		if(r == 9 && points >= 2 && (isBody || allowRare)){
			resistPhys ++;
			points -= 2;
		}
		
		if(r == 10 && points >= 1 && (isBody || allowRare)){
			resistEnergy ++;
			points --;
		}
		
		if(r == 11 && points >= 1 && (isBody || allowRare)){
			resistHeat ++;
			points --;
		}
		
		if(r == 12 && points >= 1 && (isArm || allowRare)){
			physPower += irandom_range(1, 3);
			points --;
		}
		
		if(r == 13 && points >= 1 && (isArm || allowRare)){
			energyPower += irandom_range(1, 3); 
			points --;
		}
		
		if(r == 14 && points >= 1 && (isDrive || allowRare)){
			aim += irandom_range(7, 13);
			points --;
		}
		
		if(r == 15 && points >= 1 && (isArm || allowRare)){
			proc += irandom_range(3, 8);
			points --;
		}
		
		if(r == 16 && points >= 1 && (isDrive || allowRare)){
			procPower += 25 * irandom_range(1, 3);
			points --;
		}
		
		if(r == 17 && points >= 1 && (isDrive || allowRare)){
			see += irandom_range(7, 13);
			points --;
		}
		
		if(r == 18 && points >= 1 && (isDrive || allowRare)){
			hack += irandom_range(7, 13);
			points --;
		}
		
		if((r == 9 || r == 20) && spec[0] == ""){
			var rr = irandom_range(1, 3);
			if(rr == 1){ spec[0] = "Orb Calling"; }
			if(rr == 2){ spec[0] = "Proc Shield"; }
			if(rr == 3){ spec[0] = "Combo Chain"; }
			
			//points --;
		}
		
		

		
	}
	
	
	
	rollSelf = false;	
}