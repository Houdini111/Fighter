///push_blocks_in_position()
var g;
if(act_con_arg == "n/a" or !ds_exists(places, ds_type_grid) )
{
    show_debug_message("TOGGLE " + string(id) + " DOES NOT HAVE A VALID _ACT_CON_ARG OR ds_type_grid FOR SCRIPT push_blocks_in_position");
    return false;
}
else
{
    var solved = true;
    for( var _x = 0; _x < ds_grid_width(places); ++_x )
    {
        for( var _y = 0; _y < ds_grid_height(places); ++_y )
        {
            //If there should be something and there isn't
            //Note that the second part may have issues if something overlaps 
            if( places[# _x, _y] and !collision_point( x+_x*global.gridSize, y+_y*global.gridSize, obj_push, false, true) )
            {
                solved = false;
                _y = ds_grid_height(places);
                _x = ds_grid_width(places);    
            }
        }
    }
    
    return solved;
}
