///gp_direction( deviceSlot, stick )

device = argument0;
stick = argument1;

if(argument1 = "l") 
{ 
    xMag = gamepad_axis_value(device, gp_axislh);
    yMag = gamepad_axis_value(device, gp_axislv);
}
else if(argument1 = "r") 
{ 
    xMag = gamepad_axis_value(device, gp_axisrh);
    yMag = gamepad_axis_value(device, gp_axisrv);
}
else { return "NOT_A_VALID_STICK"; }


return point_direction(0, 0, xMag, yMag);

