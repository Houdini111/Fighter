///toggle_door
if( ds_list_size(targets) > 1 ) { show_debug_message("TOO MANY TARGETS FOR TOGGLE_DOOR FUNCTION"); }
else
{
    state = !state;
    if(!state) { instance_deactivate_object(targets[| 0]); }
    else { instance_activate_object(targets[| 0]); }
}
