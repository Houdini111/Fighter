///gp_update()

//CONTROLLER SUPPORT
show_debug_message("++++++++++++++++++++++++");
var gp_num = gamepad_get_device_count();
show_debug_message("DEVICE SLOTS: " + string(gp_num));
global.gp_slot = -1;
show_debug_message("++++++++++++++++++++++++");
for (i = 0; i < gp_num; i++)
{
    if(gamepad_is_connected(i))
        { 
            global.gp[i] = true; 
            if(global.gp_slot == -1) { global.gp_slot = i; }
        }
    else
        { global.gp[i] = false; }
    
    show_debug_message("SLOT " + string(i) + ": " + string(global.gp[i]) + " > " + string(gamepad_get_description(i))); 
}
show_debug_message("++++++++++++++++++++++++");
if(global.gp_slot != -1)
{
    show_debug_message("GAMEPAD SLOT: " + string(global.gp_slot));
    show_debug_message("++++++++++++++++++++++++");
    var deadzone = 0.25;
    gamepad_set_axis_deadzone(global.gp_slot, deadzone);
    show_debug_message("SET DEADZONE TO: " + string(deadzone));
    show_debug_message("++++++++++++++++++++++++");
}
else 
{
    show_debug_message("NO GAMEPAD FOUND");
    show_debug_message("++++++++++++++++++++++++");
}
//END CONTROLLER SUPPORT
global.in = ds_map_create();
in_update();
