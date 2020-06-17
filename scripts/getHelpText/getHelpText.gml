var t = argument0;
var s = "";

if(t == "bomb"){
	s += "Press B or click here to use a bomb. Bombs deal 10 damage to \n";
	s += "all nearby monsters, break walls, and break traps. You can only \n"
	s += "hold 4 at a time.";
	return s;
}

if(t == "etank"){
	s += "Press E or click here to use an E-Tank. It will refill all your \n";
	s += "SP and EP.";
	return s;
}

if(t == "system"){
	s += "Press I or click here to view the system menu. When you hack \n";
	s += "into one of  Maze-World's systems, you fool it into thinking \n";
	s += "that you work for it. Doing things it views as helpful will \n";
	s += "award you points which can be spent in the menu.";
	return s;
}

if(t == "sign"){
	s += "Someone has been leaving messages for you all over Maze-World.\n";
	s += "Click here then use left and right to view them."
	return s;
}

if(t == "skill0"){
	s += "Hacking [~] is a special way to interract with elements of \n";
	s += "Maze-World. It gives you a chance to disarm a trap, open a \n";
	s += "locked door or chest, or connect to a system at a terminal. \n";
	s += "Hacking will end your turn, successful or not.";
	return s;
}

if(t == "skill1"){
	s += "The Lightning Cannon [1] is a ranged energy attack that \n";
	s += "deals 1 to POW damage. It is a unique attack in that it \n";
	s += "costs no AP to use, and so will never end your turn.";
	return s;
}

if(t == "skill2"){
	s += "The Flame Thrower [2] is a AoE heat attack that deals from \n";
	s += "(1 to POW/2)+(1 to POW/2) damage in a 3x3 area.\n";
	s += "";
	return s;
}

if(t == "skill3"){
	s += "The  [3]  \n";
	s += "\n";
	s += ".";
	return s;
}

if(t == "skill4"){
	s += "The ?? [4] \n";
	s += " \n";
	s += ".";
	return s;
}

if(t == "skill5"){
	s += "Build Drone [5] lets you make an ally robot to fight for you. \n";
	s += "The more POW you have, the greater the chance that you'll spend \n";
	s += "extra EP to make a better drone. ";
	return s;
}

if(t == "skill6"){
	s += "The Rocket Boost [6] lets you jump over walls 3 or more spaces\n";
	s += "in one direction. You'll leave behind a small fire attack similar\n";
	s += "the the [2] skill.";
	return s;
}

if(t == "stats"){
	var b = device_mouse_y_to_gui(0);
	if(b >= 400 && b < 430){
		s += "EVADE is your % chance to dodge an enemy's attack. It \n";
		s += "applies to both ranged and melee attacks. Your foe's AIM\n";
		s += "stat will reduce your dodge chance at a 1 : 1 ratio.";
	} else if (b >= 430 && b < 450){
		s += "T EVD is a bonus to your % chance to dodge a trap's\n";
		s += "attack. When no other factors are present, you have\n";
		s += "a (51 - the current DEEP)% chance to dodge traps.";
	} else if (b >= 450 && b < 470){
		s += "DEF is a flat amount of damage you'll ignore each\n";
		s += "time you take physical damage. It will not lower the\n";
		s += "damage taken below 1.";
	} else if (b >= 470 && b < 490){
		s += "C DEF reduces the chance you take a critical hit by\n";
		s += "one percent per point.";
	} else if (b >= 490 && b < 510){
		s += "RES is a flat amount of damage you'll ignore each\n";
		s += "time you take energy damage. It will not lower the\n";
		s += "damage taken below 1.";
	} else if (b >= 510 && b < 530){
		s += "H RES is a flat amount of damage you'll ignore each\n";
		s += "time you take heat damage. It will not lower the\n";
		s += "damage taken below 1.";
	} else if (b >= 530 && b < 550){
		s = "";
	} else if (b >= 550 && b < 570){
		s += "STR is the value used to determine how much damage\n";
		s += "your attacks do. While the exact formula depends on\n";
		s += "what arm part you are using, STR is typically the \n";
		s += "max amount of damage you may roll.";
	} else if (b >= 570 && b < 590){
		s += "POW is the value used to determine how much damage\n";
		s += "your special Energy and Heat attacks do. \n";
	} else if (b >= 590 && b < 610){
		s += "AIM reduces the chance your foe will dodge an\n";
		s += "attack by one percent per point.";
	} else if (b >= 610 && b < 630){
		s += "PROC is the % chance your attack will deal extra\n";
		s += "damage and trigger any of your proc abilities. Both\n";
		s += "melee and special attacks can proc, but not all proc\n";
		s += "abilities trigger on every type of attack.";
	} else if (b >= 630 && b < 650){
		s += "P POW, or Proc Power, is the % of bonus damage an \n";
		s += "attack will do on a successful Proc.";
	} else if (b >= 650 && b < 670){
		s = "";
	} else if (b >= 670 && b < 690){
		s += "SPOT is a bonus to your % chance to find a hidden\n";
		s += "trap or chest. When no other factors are present, you\n";
		s += "have a (51 - the current DEEP)% chance to spot hidden\n";
		s += "traps and chests.";
	} else if (b >= 690 && b < 710){
		s += "HACK is a bonus to your % chance to use your \n";
		s += "[~] hack ability. When no other factors are present\n";
		s += "you have a a (51 - the current DEEP)% chance to \n";
		s += "disarm traps and connect to systems, and a (26 - \n";
		s += "the current Deep)% to open locks.";
	
	} else {
		s += "stat info";
	}
	return s;
}


return "";