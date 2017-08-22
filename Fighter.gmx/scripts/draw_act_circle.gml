///draw_act_circle(xFromLeftOfBar, yFromBottomOfBar, val, max, radius, activationPointPercent, activationTimePercent)

xFromLeftOfBar = argument[0];
yFromBottomOfBar = argument[1];
VAL = argument[2];
MAX = argument[3]
radius = argument[4];
activationPointPercent = (argument[5]*1.8)+90;
activationTimePercent = argument[6]/2;


thisX = (view_wview[0]-width)/2+xFromLeftOfBar;
thisY = height*2+yFromBottomOfBar;

degreesCovered = (-VAL/MAX*180)+180;


draw_pie( thisX, thisY, MAX, MAX*2, c_black, radius, 90, 0.8, 240);
draw_pie( thisX, thisY, VAL, MAX*2, c_green, radius-1, 90, 0.9, 240);
draw_pie( thisX, thisY, activationTimePercent, 100, c_yellow, radius-1, activationPointPercent, 0.6, 240);
draw_set_color(c_red);
draw_line( thisX, thisY, thisX+(radius-1)*cos(degtorad(degreesCovered)), thisY+(radius-1)*sin(degtorad(degreesCovered)) );
