///gp_direction( deviceSlot, stick )

var device = argument0;
var stick = argument1;

if(argument1 = "l") 
{ 
    var xMag = gamepad_axis_value(device, gp_axislh);
    var yMag = gamepad_axis_value(device, gp_axislv);
}
else if(argument1 = "r") 
{ 
    var xMag = gamepad_axis_value(device, gp_axisrh);
    var yMag = gamepad_axis_value(device, gp_axisrv);
}
else { return "NOT_A_VALID_STICK"; }


return point_direction(0, 0, xMag, yMag);

