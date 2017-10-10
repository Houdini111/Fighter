///check_move(who, x, y)
var _i = argument0;
var _x = argument1;
var _y = argument2;


if(_i == global.player)
{
    //Special ability?
    //otherwise
    var hit = collision_point(_x, _y, all, false, true);
    
    var hit_list;
    hit_list = collision_point_list(_x, _y, all, false, true);
    
    if(hit_list == noone) { return true; }
    for(var index = 0; index < ds_list_size(hit_list); index++)
    {
        if( hit_list[| index].solid )
        {
            if( object_get_name(hit_list[| index].object_index) == "obj_key_door" )
            {
                var rm = "";
                
                switch(room_get_name(room))
                {
                    case "rm_tutorial": rm = "tut"; break;
                }
                
                var rm_keys = string(rm)+"_keys";
                
                if( rm_keys != "_keys" )
                {
                    if( global.player.inventory[? rm_keys] > 0 )
                    {
                        global.player.inventory[? rm_keys]--;
                        instance_destroy(hit_list[| index]);
                        ds_list_destroy(hit_list);
                        return true;
                    }
                    else { return false; }
                }
            }
            else
            { return false; }
        }
    }
    ds_list_destroy(hit_list);
    return true;
    /*
    if( hit)// and hit.solid ) 
    { 
        if(hit.solid)
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
    else { return true; }
    */
}
