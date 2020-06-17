var a = argument0;
var b = argument1;

if(a < ww.xStart || b < ww.yStart){ return false; }
if(a >= ww.xBounds){ return false; }
if(b >= ww.yBounds){ return false; }

return true;