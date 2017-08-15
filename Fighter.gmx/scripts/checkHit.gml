///checkHit(user, pattern, target)
if(argument1 == "basic1")
{
    if(object_get_name(argument0) == "obj_player")
    {
        if(argument0.rot == 'r')
        {
            if(collision_point(argument0.x+32, argument0.y, argument2, false, true))
                { return instance_place(argument0.x+32, argument0.y, argument2); }
            else { return noone; } 
        }
        else if(argument0.rot == "d")
        {
            if(collision_point(argument0.x, argument0.y+32, argument2, false, true))
                { return instance_place(argument0.x, argument0.y+32, argument2); }
            else { return noone; } 
        }
        else if(argument0.rot == "l")
        {
            if(collision_point(argument0.x-32, argument0.y, argument2, false, true))
                { return instance_place(argument0.x-32, argument0.y, argument2); }
            else { return noone; } 
        }
        else if(argument0.rot == "u")
        {
            if(collision_point(argument0.x, argument0.y-32, argument2, false, true))
                { return instance_place(argument0.x, argument0.y-32, argument2); }
            else { return noone; } 
        }
        else{ return noone  ; } 
    }
    else
    {
        if(instance_place(argument0.x+32, argument0.y, argument2) != noone)
            { return instance_place(argument0.x+32, argument0.y, argument2); }
        else if(instance_place(argument0.x, argument0.y+32, argument2) != noone)
            { return instance_place(argument0.x, argument0.y+32, argument2); }
        else if(instance_place(argument0.x-32, argument0.y, argument2) != noone)
            { return instance_place(argument0.x-32, argument0.y, argument2); }
        else if(instance_place(argument0.x, argument0.y-32, argument2) != noone)
            { return instance_place(argument0.x, argument0.y-32, argument2); }
    }
}
