event_inherited();

timeCD = 40;
grav = 1;
fade = .02;
do {
	xSpeed = irandom_range(-6, 10);
} until (xSpeed != 0);
ySpeed = irandom_range(-16, -10);
image_index = irandom_range(0, 3);
