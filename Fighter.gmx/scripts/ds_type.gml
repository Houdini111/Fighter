///ds_type(to_check)
var check = argument0; 

if( !is_string(check) )
{
    if( ds_exists(check, ds_type_grid) ) { return ds_type_grid; }
    else if( ds_exists(check, ds_type_list) ) { return ds_type_list; }
    else if( ds_exists(check, ds_type_map) ) { return ds_type_map; }
    else if( ds_exists(check, ds_type_priority) ) { return ds_type_priority; }
    else if( ds_exists(check, ds_type_queue) ) { return ds_type_queue; }
    else if( ds_exists(check, ds_type_stack) ) { return ds_type_stack; }
}
return noone;
