///create_fake_wall_toggle( toggle_id, wall_orientation, wall_x, wall_y, wall_length, reusable )
var _toggle = argument0;
var _orient = argument1;
var _x = argument2;
var _y = argument3;
var _len = argument4;
var _use = argument5;

_toggle.reusable = _use;

var walls = ds_list_create();   

if(_orient == "vertical")
{
    for(var i = 0; i < _len*2; i++)
    {
        walls[| i] = instance_create(_x, _y+floor(i/2)*global.gridSize, obj_wall);
        walls[| i].sprite_index = asset_get_index("tile_wall_E2");
        walls[| i].state = _toggle.state;
        i++;
        walls[| i] = instance_create(_x+global.gridSize, _y+floor(i/2)*global.gridSize, obj_wall);
        walls[| i].sprite_index = asset_get_index("tile_wall_W2");
        walls[| i].state = _toggle.state;
    }
}
else if(_orient == "horizontal")
{
    for(var i = 0; i < _len*2; i++)
    {
        walls[| i] = instance_create(_x+floor(i/2)*global.gridSize, _y, obj_wall);
        walls[| i].sprite_index = asset_get_index("tile_wall_S2");
        walls[| i].state = _toggle.state;
        i++;
        walls[| i] = instance_create(_x+floor(i/2)*global.gridSize, _y+global.gridSize, obj_wall);
        walls[| i].sprite_index = asset_get_index("tile_wall_N2");
        walls[| i].state = _toggle.state;
    }
}

_toggle.orient = _orient;
for(var i = 0; i < ds_list_size(walls); i++) { ds_list_add( _toggle.targets, walls[| i]); }
