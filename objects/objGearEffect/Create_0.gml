event_inherited();

var scale = irandom_range(1, 4);
image_xscale = scale;
image_yscale = scale;
image_alpha = .7;

timeCD = 40;
grav = 1;
fade = .01;
do {
	xSpeed = irandom_range(-6, 10);
} until (xSpeed != 0);
ySpeed = irandom_range(-16, -10);

