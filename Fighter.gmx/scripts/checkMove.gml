//tryMove(who, whereX, whereY)

o = argument0;
destX = argument1;
destY = argument2;

if(o == global.player)
{
    if( place_free(destX, destY) ) //If not already occupied
        { return true; }
    else 
        { return false; } 
}
