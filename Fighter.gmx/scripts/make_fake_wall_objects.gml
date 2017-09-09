///make_fake_wall_objects(x, y, orient, length)
var _x = argument0;
var _y = argument1;
var _orient = argument2;
var _len = argument3;

//var _objects = ds_list_create();
_objects = ds_list_create();

if(_orient == "vertical")
{
    var me;
    for(var i = 0; i < _len; i++)
    {
        me = instance_create(_x, _y+global.gridSize*i, obj_wall);
        me.sprite_index = asset_get_index("tile_wall_E2");
        me.active = true;
        ds_list_add( _objects, me);
        me = instance_create(_x+global.gridSize, _y+global.gridSize*i, obj_wall);
        me.sprite_index = asset_get_index("tile_wall_W2");
        me.active = true;
        ds_list_add( _objects, me);
    }
}
else if(_orient == "horizontal")
{
    var me;
    for(var i = 0; i < _len; i++)
    {
        me = instance_create(_x+global.gridSize*i, _y, obj_wall);
        me.sprite_index = asset_get_index("tile_wall_S2");
        me.active = true;
        ds_list_add( _objects, me);
        me = instance_create(_x+global.gridSize*i, _y+global.gridSize, obj_wall);
        me.sprite_index = asset_get_index("tile_wall_N2");
        me.active = true;
        ds_list_add( _objects, me);
    }
}

return _objects;
