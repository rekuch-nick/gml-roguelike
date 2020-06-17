var obj = argument0;
var a = argument1;
var b = argument2;

if(obj.xSpot < a){ obj.x += 30; }
if(obj.xSpot > a){ obj.x -= 30; }

if(obj.ySpot > b){ obj.y -= 30; }
if(obj.ySpot < b){ obj.y += 30; }