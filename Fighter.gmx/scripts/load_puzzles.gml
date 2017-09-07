///load_puzzles()

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
        /*
        action = me[? "action"];
        resuable = me[? "resuable"];
        visible = me[? "visible"];
        image_xscale = me[? "image_xscale"];
        image_yscale = me[? "image_yscale"];
        */
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
