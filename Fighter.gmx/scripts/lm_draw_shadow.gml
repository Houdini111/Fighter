///lm_draw_shadow(caster, light, lightRadius, x1, y1, x2, y2)
var caster = argument0; //caster id
var light = argument1; //light id

var lightRadius = argument2; //radius

//caster point are relative to the caster, thus we must add the caster’s position to compensate and get the actual position in the world
var Ax = argument3 + caster.x; //startx
var Ay = argument4 + caster.y; //starty

var Bx = argument5 + caster.x; //endx
var By = argument6 + caster.y; //endy

var Lx = light.x; //light x
var Ly = light.y; //light y


//angles to calculate end points (these are just from the light to the caster points)
var shadowAngleA = point_direction(Lx, Ly, Ax, Ay);
var shadowAngleB = point_direction(Lx, Ly, Bx, By);

//Next we calculate the end points of the shadow
//The shadow will be drawn from our caster points to the end of the light’s radius
var E1x, E1y, E2x, E2y;
E1x = Lx+lengthdir_x(lightRadius, shadowAngleA);
E1y = Ly+lengthdir_y(lightRadius, shadowAngleA);
E2x = Lx+lengthdir_x(lightRadius, shadowAngleB);
E2y = Ly+lengthdir_y(lightRadius, shadowAngleB);

//We will fade the shadow out as it gets to the end of the light radius so that it will look better

var c = c_white;
var alphaEnd = 0;
var dist = point_distance(caster.x, caster.y, Lx, Ly);
if dist == 0
  dist = 1;
var lightToCaster = point_direction(Lx,Ly, caster.x, caster.y);
var totalDist = point_distance(Lx,Ly, Lx+lengthdir_x(lightRadius,lightToCaster), Ly+lengthdir_y(lightRadius,lightToCaster));

//This is our start alpha, it will be darker if the caster is closer to the light
var alphaStart = 0.25*(1-(dist/totalDist));

//We now add vertexes to our shadow primitive
draw_vertex_colour(Ax, Ay, c, alphaStart); //start of point a
draw_vertex_colour(E1x, E1y, c, alphaEnd); //end of point a
draw_vertex_colour(Bx, By, c, alphaStart); //start of point b
draw_vertex_colour(E2x, E2y, c, alphaEnd); //end of point b
