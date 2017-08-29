///e_check_spots(target, grid_size, range, grid)
//RETURNS AN ARRAY OF TWO DS_LISTS FIllED WITH THE X AND Y COORDINATES (RESPECTIVELY) OF THE AVAILABLE SPOTS

var _p = argument0;
var _x = _p.x;
var _y = _p.y;
var _g_s = argument1;
var _r = argument2;
var _g = argument3;
var placesX = ds_list_create();
var placesY = ds_list_create();


//Check the top to right side (not including the right side)
for(_y = _p.y - range*_g_s; _y < _p.y; _y += _g_s)
{
    if( mp_grid_get_cell(_g, floor(_x/_g_s), floor(_y/_g_s)) == 0 )
    { 
        ds_list_add( placesX, _x);
        ds_list_add( placesY, _y);
    }

    _x += _g_s;
}
//Check the right to bottom side (not including the bottom side)
for(_x = _p.x + range*_g_s; _x > _p.x; _x -= _g_s)
{
    if( mp_grid_get_cell(_g, floor(_x/_g_s), floor(_y/_g_s)) == 0 )
    { 
        ds_list_add( placesX, _x);
        ds_list_add( placesY, _y);
    }

    _y += _g_s;
}
//Check the bottom to left side (not including the left side)
for(_y = _p.y + range*_g_s; _y > _p.y; _y -= _g_s)
{
    if( mp_grid_get_cell(_g, floor(_x/_g_s), floor(_y/_g_s)) == 0 )
    { 
        ds_list_add( placesX, _x);
        ds_list_add( placesY, _y);
    }
    _x -= _g_s;
}

//Check the right to bottom side (not including the bottom side)
for(_x = _p.x - range*_g_s; _x < _p.x; _x += _g_s)
{
    if( mp_grid_get_cell(_g, floor(_x/_g_s), floor(_y/_g_s)) == 0 )
    { 
        ds_list_add( placesX, _x);
        ds_list_add( placesY, _y);
    }
    _y -= _g_s;
}

toReturn[0] = placesX;
toReturn[1] = placesY;

return toReturn;
