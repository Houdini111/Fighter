///hb(hitbox_sprite, parent)

t = instance_create(argument1.x, argument1.y, obj_atk_hb);

t.parent = argument1; 
t.sprite_index = argument0;

return t;
