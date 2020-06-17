image_xscale = 4 + scaleMod;
image_yscale = 4 + scaleMod;

scaleMod += pulseDir;
pulseTime --;
if(pulseTime < 1){
	pulseTime = 30;
	pulseDir *= -1;
}


var angle = arctan2(pc.x - ty, pc.y - tx);
xSpeed = 10 * cos(angle);
ySpeed = 10 * sin(angle);


x = tx; y = ty;



var ca = camera_get_view_x(view_camera[0]);
var cb = camera_get_view_y(view_camera[0]);
w = camera_get_view_width(view_camera[0]) - 300;
h = camera_get_view_height(view_camera[0]);

var tries = 0;
while (!point_in_rectangle(x, y, ca, cb, ca + w, cb + h) && tries < 100) {
	tries ++;
	x += xSpeed;
	y += ySpeed;
}

if(tries == 0){ visible = false; } else { visible = true; }



