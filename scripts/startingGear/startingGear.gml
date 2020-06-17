//scope: called from world

var arm = instance_create_layer(0, 0, 0, objGear);
arm.name = "Basic";
arm.visible = false;
arm.isArm = true;
//arm.physPower = 1;
//arm.spec[0] = "Orb Calling";
pc.arm = arm;


var bod = instance_create_layer(0, 0, 0, objGear);
bod.name = "Basic";
bod.sprite_index = imgBody;
bod.visible = false;
bod.isBody = true;
//bod.hp = 1;
//bod.spec[0] = "Proc Shield";
//bod.spec[1] = "Combo Chain";
//bod.spec[2] = "Orb Calling";
pc.body = bod;

var cor = instance_create_layer(0, 0, 0, objGear);
cor.name = "Basic";
cor.sprite_index = imgCore;
cor.visible = false;
cor.isCore = true;
//cor.energyPower = 1;
pc.core = cor;

var dri = instance_create_layer(0, 0, 0, objGear);
dri.name = "Basic";
dri.sprite_index = imgDrive;
dri.visible = false;
dri.isDrive = true;
//dri.hack = 1;
pc.drive = dri;






pc.stackingCritBonus = 0;
pc.bonusHP = 0;

pc.dyingTime = 0;
pc.aiming = -1;

pc.keys = 0;

pc.bombs = 0;

pc.etanks = 0;

pc.scrap = 0;

if(pc.talent[16]){
	pc.keys = 2;
	pc.bombs = 2;
	pc.etanks = 1;
}


pc.fill = true;
pc.systemPoints = 0;