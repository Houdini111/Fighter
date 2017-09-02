///create_floor_trigger( x, y, toggle_action_scr[, reusable, visible, height_mult, width_mult] )
var _x = argument[0]; 
var _y = argument[1];

var t = instance_create(_x, _y, obj_floor_trigger);
with(t)
{
    action = argument[2];

    reusable = true;
    visible = true;
    image_xscale = 1;
    image_yscale = 1;

    switch(argument_count)
    {
        case 7:
            image_xscale = argument[6];
        case 6:
            image_yscale = argument[5];
            //my_spr = sprite_duplicate(sprite_index);
            //sprite_collision_mask(my_spr, false, 2, 0, 0, 1000000, global.gridSize*1, 1, 255);
            //sprite_index = my_spr;
        case 5:
            visible = argument[4];
        case 4: 
            resuable = argument[3];
    }
}


return t;
