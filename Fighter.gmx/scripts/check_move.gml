///check_move(who, x, y)
var _i = argument0;
var _x = argument1;
var _y = argument2;


if(_i == global.player)
{
    //Special ability?
    //otherwise
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
                    else 
                    {
                        ds_list_destroy(hit_list); 
                        return false; 
                    }
                }
            }
            else if( object_get_name(hit_list[| index].object_index) == "obj_push" and hit_list[| index].active )
            {
                var move_dir;
                if( global.player.old_goal_x < _x ) { move_dir = "right"; } //Moving right
                else if( global.player.old_goal_x > _x ) { move_dir = "left"; } //Moving left
                else if( global.player.old_goal_y < _y ) { move_dir = "down"; } //Moving down
                else if( global.player.old_goal_y > _y ) { move_dir = "up"; } //Moving up
                
                var can_move = true;
                
                if( move_dir == "right" )
                {
                    can_move = check_move(hit_list[| index], hit_list[| index].x+32, hit_list[| index].y);
                }
                else if( move_dir == "left" )
                {
                    can_move = check_move(hit_list[| index], hit_list[| index].x-32, hit_list[| index].y);
                }
                else if( move_dir == "down" )
                {
                    can_move = check_move(hit_list[| index], hit_list[| index].x, hit_list[| index].y+32);
                }
                else if( move_dir == "up" )
                {
                    can_move = check_move(hit_list[| index], hit_list[| index].x, hit_list[| index].y-32);
                }
                
                if(can_move)
                {
                    if( move_dir == "right" ) { hit_list[| index].x+=32; }
                    else if( move_dir == "left" ) { hit_list[| index].x-=32; }
                    else if( move_dir == "down" ) { hit_list[| index].y+=32; }
                    else if( move_dir == "up" ) { hit_list[| index].y-=32; }
                    
                    ds_list_destroy(hit_list);
                    return true;
                }
                else 
                {
                    ds_list_destroy(hit_list); 
                    return false; 
                }
            }
            else
            { 
                ds_list_destroy(hit_list);
                return false; 
            }
        }
    }
    if( ds_exists(hit_list, ds_type_list) ) { ds_list_destroy(hit_list); }
    return true;
}
else
{
    if(!_i.solid) { return true; }
    else 
    {
        var hit_list;
        hit_list = collision_point_list(_x, _y, all, false, true);
        
        if(hit_list != noone)
        {
            for(var index = 0; index < ds_list_size(hit_list); index++)
            {
                if( hit_list[| index].solid )
                { 
                    ds_list_destroy(hit_list);
                    return false; 
                }
            } 
        }
        if( ds_exists(hit_list, ds_type_list) ) { ds_list_destroy(hit_list); }
        return true;
    }
}
