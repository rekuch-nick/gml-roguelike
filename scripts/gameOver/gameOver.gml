pc.deep = 0;
pc.image_angle = 0;
pc.xSpot = 5;
pc.ySpot = 5;
pc.x = xSpot * 60 + 30;
pc.y = ySpot * 60 + 30;
cam.x = pc.x + 150;
cam.y = pc.y;
ww.titleScreen = instance_create_depth(0, 0, -10000, objTitleScreen);