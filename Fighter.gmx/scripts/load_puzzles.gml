///load_puzzles()
/*
with(obj_basic_toggle)
{
    var me = ds_map_create();
    if( ds_map_exists(global.save, key) )
    {
        ds_map_read(me, global.save[? key]);
        if( ds_map_exists(me, "state") )
        {
            state = me[? "state"];
            target = collision_point(me[? "target_x"], me[? "target_y"], asset_get_index(me[? "target_type"]), false, true);
            target.toggle = id;
            target.state = state;   
        }
    }
    
    ds_map_destroy(me);
}

with(obj_floor_trigger)
{
    var me = ds_map_create();
    if( ds_map_exists(global.save, key) )
    {
        ds_map_read(me, global.save[? key]);
        
        if(me[? "alive"]) { ready = me[? "ready"]; }
        else { instance_destroy(); } 
        
        //action = me[? "action"];
        //resuable = me[? "resuable"];
        //visible = me[? "visible"];
        //image_xscale = me[? "image_xscale"];
        //image_yscale = me[? "image_yscale"];
    }
    
    ds_map_destroy(me);
}

with(obj_multiwall_toggle)
{
    var me = ds_map_create();
    if( ds_map_exists(global.save, key) )
    {
        ds_map_read(me, global.save[? key]);
        
        if(me[? "alive"]) { state = me[? "state"]; }
        else { instance_destroy(); } 
    }
    
    ds_map_destroy(me);
}
*/

with(obj_toggle)
{
    if(ds_map_exists(global.save, key))
    {
        var me = ds_map_create();
        ds_map_read(me, global.save[? key]);
        
        if( !me[? "alive"] ) { instance_destroy(); }
        else if ( me[? "alive"] ) 
        {
            if( me[? "solid"] )
            {
                //alive = me[? "alive"];
                //sprite_index = me[? "sprite"];
                solid = me[? "solid"];
                //if(me[? "targets"] == noone) { targets = noone; }
                //else { ds_list_read(targets, me[? "targets"]); } 
                //init_state = me[? "initial_state"];
                state = me[? "state"];
                //reusable = me[? "reusable"];
                visible = me[? "visible"];
                //condition = me[? "condition"];
                //prepare = me[? "prepare"];
                //action = me[? "action"];
                
                //act_con_arg =  me[? "act_con_arg"];
                //prep_con_arg = me[? "prep_con_arg"];
                //act_arg = me[? "act_arg"];
                
                if(targets != noone)
                {
                    if(ds_map_exists(me, "targets_info"))
                    {
                        var temp = ds_list_create();
                        ds_list_read(temp, me[? "targets_info"]);
                        
                        for(var i = 0; i < ds_list_size(targets); i++)
                        {
                            var this = ds_map_create();
                            ds_map_read(this, temp[| i]);
                            targets[| i].active = this[? "active"];
                            targets[| i].sprite_index = this[? "sprite"];
                            if(targets[| i].active == false) 
                            { 
                                mp_grid_clear_cell(global.grid, targets[| i].x/global.gridSize, targets[| i].y/global.gridSize);
                                instance_deactivate_object(targets[| i]); 
                            }
                        }
                    }
                }
            }
        } 
        
        ds_map_destroy(me);
    }
}


