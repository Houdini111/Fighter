///check_move(who, x, y)
var _i = argument0;
var _x = argument1;
var _y = argument2;


if(_i == global.player)
{
    //Special ability?
    //otherwise
    var hit = collision_point(_x, _y, all, false, true);
    if( hit and hit.solid ) 
    { 
        if( object_get_name(hit.object_index) == "obj_key_door" )
        {
            if( global.player.keys > 0 )
            {
                global.player.keys--;
                instance_destroy(hit);
                return true;
            }
        }
        else { return false; }
    }
    else { return true; }
}
