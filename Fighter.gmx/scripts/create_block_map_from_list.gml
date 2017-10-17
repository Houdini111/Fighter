///create_block_map_from_list(list)
var _my_map = ds_map_create();
for(var i = 0; i < ds_list_size(argument0); i++)
{
    _my_map[? string(i)+":x"] = argument0[| i].x;
    _my_map[? string(i)+":y"] = argument0[| i].y;
    _my_map[? string(i)+":active"] = argument0[| i].active;
}

return _my_map;

