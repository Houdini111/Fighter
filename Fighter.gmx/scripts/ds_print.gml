///ds_print(ds, type)
var ds = argument0;
var type = argument1;


if( type == ds_type_grid )
{
    var text = "";
    for( var i = 0; i < ds_grid_height(ds); i++ ) //For each row
    {
        text = "";
        for( var j = 0; j < ds_grid_width(ds); j++ ) //For each column
            { text += " " + string(text); } 
        show_debug_message(text);
    }
}
else if( type == ds_type_list )
{
    for( var i = 0; i < ds_list_size(ds); i++ )
        { show_debug_message( string(i) + ": " + ds[| i] ); }
}
else if( type == ds_type_map )
{
    var lastKey = ds_map_find_first(ds);
    show_debug_message( string(lastKey)+": "+string( ds[? lastKey] ) );
    for( var i = 1; i < ds_map_size(ds); i++ )
    { 
       lastKey = ds_map_find_next( ds, lastKey); 
       show_debug_message( string(lastKey)+": "+string( ds[? lastKey] ) );
    }
}
/*
else if( type == ds_type_priority )
{

}
*/
else if( type == ds_type_queue )
{
    var temp = ds_queue_create();
    ds_queue_copy(temp, ds);
    
    while( !ds_queue_empty(ds) )
        { show_debug_message( string( ds_queue_dequeue(ds) ) ); }
        
    ds_queue_destroy(temp);
}
else if( type == ds_type_stack )
{
    var temp = ds_stack_create();
    ds_stack_copy(temp, ds);
    
    while( !ds_stack_empty(ds) )
        { show_debug_message( string( ds_stack_pop(ds) ) ); }
        
    ds_stack_destroy(temp);
}
