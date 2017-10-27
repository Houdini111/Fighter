///ds_destroy(id, type)
var destroy = argument0;
var type = argument1;

if( type == ds_type_grid ) { ds_grid_destroy(destroy); }
else if( type == ds_type_list ) { ds_list_destroy(destroy); }
else if( type == ds_type_map ) { ds_map_destroy(destroy); }
else if( type == ds_type_priority ) { ds_priority_destroy(destroy); }
else if( type == ds_type_queue ) { ds_queue_destroy(destroy); }
else if( type == ds_type_stack ) { ds_stack_destroy(destroy); }
