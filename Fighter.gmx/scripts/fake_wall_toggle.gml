///fake_wall_toggle( toggle_id, wall_orientation, wall_x, wall_y, wall_length )
var _toggle = argument0;
var _orient = argument1;
var _x = argument2;
var _y = argument3;
var _len = argument4;

var walls = ds_list_create();   

if(_orient == "vertical")
{
    for(var i = 0; i < _len*2; i++)
    {
        arr[i] = instance_create(_x, _y+i*global.gridSize, obj_wall);
        arr[i].sprite_index = asset_get_index("obj_wall_E");
        i++;
        arr[i] = instance_create(_x+global.gridSize, _y+i*global.gridSize, obj_wall);
        arr[i].sprite_index = asset_get_index("obj_wall_W");
    }
}
else if(_orient == "horizontal")
{

}

