///make_grid_false(map)
var _m = argument0;
for( _x = 0; _x < ds_grid_width(_m); _x++ )
{
    for( _y = 0; _y < ds_grid_height(_m); _y++ )
    {
        _m[# _x, _y] = false;
    }
}
