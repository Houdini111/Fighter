///check_move(who, x, y)
var _i = argument0;
var _x = argument1;
var _y = argument2;


if(_i == global.player)
{
    //Special ability?
    //otherwise
    if(place_free(_x, _y)) { return true; }
    else { return false; } 
}
