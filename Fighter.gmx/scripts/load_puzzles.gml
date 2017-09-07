///load_puzzles()

with(obj_basic_toggle)
{
    var key = "obj_basic_toggle_"+string(x)+"_"+string(y);
    var me = ds_map_create();
    
    if( ds_map_exists(me, key) )
    {
        state = me[? "state"];
        ds_map_read(me, key);    
        target = collision_point(me[? "target_x"], me[? "target_y"], asset_get_index(me[? "target_type"]), false, true);
        target.toggle = id;
        target.state = state;
    }
    ds_map_destroy(me);
}
