///check_move(who, x, y)
_i = argument0;
_x = argument1;
_y = argument2;


if(_i == global.player)
{
    //Special ability?
    //otherwise
    if(place_free(_x, _y)) { return true; }
    else { return false; } 
}
