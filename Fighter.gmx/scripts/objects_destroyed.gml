///objects_destroyed(list)
if( !ds_exists( act_con_arg, ds_type_list ) ) { show_debug_message("objects_destroyed REQUIRES A LIST"); }
else
{
    if( ds_list_size(act_con_arg) == 0 ) { show_debug_message("LIST FOR objects_destoyed MUST CONTAIN AN OBJECT"); }
    else
    {
        var destroyed = true;
        for( var _i = 0; _i < ds_list_size(act_con_arg); _i++ )
        {
            if( instance_exists( act_con_arg[| _i] ) )
            { 
                destroyed = false;
                _i = ds_list_size(act_con_arg);
            }
        }
        return destroyed;
    }
}
