///reset_push_blocks()
//Requires a list of (x, y, active) maps for each blcock to reset in act_arg

if( !ds_exists(act_arg, ds_type_list) ) { show_debug_message("NO LIST FOR reset_push_blocks ACTION"); }
else if( targets == noone ) { show_debug_message("targets CANNOT BE noone FOR reset_push_blocks ACTION"); }
else if( !ds_exists(targets, ds_type_list) ) { show_debug_message("targets MUST BE ds_type_list FOR reset_push_blocks ACTION"); }
else
{
    //Clear the old
    for(var i = 0; i < ds_list_size(targets); i++)
        { instance_destroy(targets[| i]); }
    ds_list_clear(targets);
        
        
    //Re-add
    for(var i = 0; i < ds_map_size(act_arg)/3; i++)
    {
        if( !ds_map_exists(act_arg, string(i)+":x") ) { show_debug_message("NO x FOR INDEX " + string(i) + " FOR reset_push_block ACTION"); } 
        else if( !ds_map_exists(act_arg, string(i)+":y") ) { show_debug_message("NO y FOR INDEX " + string(i) + " FOR reset_push_block ACTION"); } 
        else if( !ds_map_exists(act_arg, string(i)+":active") ) { show_debug_message("NO active FOR INDEX " + string(i) + " FOR reset_push_block ACTION"); } 
        else
        {
            var _x = act_arg[? string(i)+":x"];
            var _y = act_arg[? string(i)+":y"]
            var _active = act_arg[? string(i)+":active"]
            ds_list_add(targets, create_push_block(_x, _y, _active));
        }
    }
    /*
    for(var i = 0; i < ds_list_size(act_arg); i++)
    {
        if( !ds_exists(act_arg[| i], ds_type_map) ) { show_debug_message("NO MAP AT INDEX " + string(i) + " FOR reset_push_blocks ACTION"); }
        else
        {
            var map = act_arg[| i];
            if( !ds_map_exists(map, "x") ) { show_debug_message("NO x FOR INDEX " + string(i) + " FOR reset_push_block ACTION"); } 
            else if( !ds_map_exists(map, "y") ) { show_debug_message("NO y FOR INDEX " + string(i) + " FOR reset_push_block ACTION"); } 
            else if( !ds_map_exists(map, "active") ) { show_debug_message("NO active FOR INDEX " + string(i) + " FOR reset_push_block ACTION"); } 
            else
            {
                var _x = map[? "x"];
                var _y = map[? "y"]
                var _active = map[? "active"]
                ds_list_add(targets, create_push_block(_x, _y, _active));
            }
            
        }
    }
    */
}
