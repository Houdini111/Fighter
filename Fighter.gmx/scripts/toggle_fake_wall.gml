///toggle_fake_wall()
if( ds_list_size(targets)&1 == 1 ) { show_debug_message("TOGGLE_FAKE_WALL requires an even number of targets, has odd number"); }
else
{   
    if(!state)
    {
        if(targets[| 0].x == targets[| 1].x) //Horizontal
        {
            targets[| 0].sprite_index = asset_get_index("tile_convex_SW2");
            targets[| 1].sprite_index = asset_get_index("tile_convex_NW2");
            targets[| ds_list_size(targets)-2].sprite_index = asset_get_index("tile_convex_SE2");
            targets[| ds_list_size(targets)-1].sprite_index = asset_get_index("tile_convex_NE2");             
        }
        else //Vertical
        {
            targets[| 0].sprite_index = asset_get_index("tile_convex_NE2");
            targets[| 1].sprite_index = asset_get_index("tile_convex_NW2");
            targets[| ds_list_size(targets)-2].sprite_index = asset_get_index("tile_convex_SE2");
            targets[| ds_list_size(targets)-1].sprite_index = asset_get_index("tile_convex_SW2");
        }
        
        for(var i = 2; i < ds_list_size(targets)-2; i++) 
        { 
            mp_grid_clear_cell( global.grid, targets[| i].x/global.gridSize, targets[| i].y/global.gridSize )
            instance_deactivate_object(targets[| i]); 
            targets[| i].active = false;
        }    
    }
    else
    {
        if(targets[| 0].x == targets[| 1].x) //Horizontal
        {
            targets[| 0].sprite_index = asset_get_index("tile_wall_S2");
            targets[| 1].sprite_index = asset_get_index("tile_wall_N2");
            targets[| ds_list_size(targets)-2].sprite_index = asset_get_index("tile_wall_S2");
            targets[| ds_list_size(targets)-1].sprite_index = asset_get_index("tile_wall_N2");   
        }
        else //Vertical
        {
            targets[| 0].sprite_index = asset_get_index("tile_wall_E2");
            targets[| 1].sprite_index = asset_get_index("tile_wall_W2");
            targets[| ds_list_size(targets)-2].sprite_index = asset_get_index("tile_wall_E2");
            targets[| ds_list_size(targets)-1].sprite_index = asset_get_index("tile_wall_W2");
        }
        for(var i = 2; i < ds_list_size(targets)-2; i++) 
        { 
            instance_activate_object(targets[| i]); 
            mp_grid_add_cell( global.grid, targets[| i].x/global.gridSize, targets[| i].y/global.gridSize )
            targets[| i].active = true;
        }
    }
    
}
