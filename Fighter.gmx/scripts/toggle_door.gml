///toggle_door
if( ds_list_size(targets) > 1 ) { show_debug_message("TOO MANY TARGETS FOR TOGGLE_DOOR FUNCTION"); }
else
{
    state = !state;
    if(!state) 
    {   
        targets[| 0].active = false;
        mp_grid_clear_cell(global.grid, targets[| 0].x/global.gridSize, targets[| 0].y/global.gridSize);
        instance_deactivate_object(targets[| 0]); 
    }
    else 
    {
        targets[| 0].active = true; 
        instance_activate_object(targets[| 0]); 
        mp_grid_add_cell(global.grid, targets[| 0].x/global.gridSize, targets[| 0].y/global.gridSize);
    }
}
