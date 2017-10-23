///rescale_state()
var w_factor = 0.075;
var h_factor = 0.3;
var cir_base = 15;
if( object_get_name(id.object_index) != "obj_state" )
{
    global.player.state_machine.ui_width = w_factor*view_wport[0];
    global.player.state_machine.ui_height = h_factor*view_hport[0];
    global.player.state_machine.circle_radius = cir_base*global.res_scale;
}
else
{
    ui_width = w_factor*view_wport[0];
    ui_height = h_factor*view_hport[0];
    circle_radius = cir_base*global.res_scale;
}
