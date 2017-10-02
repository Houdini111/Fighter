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
            var rm = "";
            
            switch(room_get_name(room))
            {
                case "rm_tutorial":
                    rm = "tut"
                    break;
            }
            
            var rm_keys = string(rm)+"_keys";
            
            if( rm_keys != "_keys" )
            {
                if( global.player.inventory[? rm_keys] > 0 )
                {
                    global.player.inventory[? rm_keys]--;
                    instance_destroy(hit);
                    return true;
                }
                else { return false; }
            }
            else { return false; }
        }
        else { return false; }
    }
    else { return true; }
}
