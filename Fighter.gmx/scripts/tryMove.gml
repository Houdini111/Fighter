///tryMove(what, whereX, whereY)
if(argument0 == global.player)
{
    //Special ability?
    //otherwise
    if(place_free(argument1, argument2))
    {        
        argument0.x = argument1;
        argument0.y = argument2;
        return true;
    }
    else { return false; } 
}
