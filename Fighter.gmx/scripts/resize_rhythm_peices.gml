///resize_rhythm_peices(width_ratio, height_ratio)
var h_scale = argument[0];
var v_scale = argument[1];
var base_width = sprite_get_width( spr_rhy_base );
var base_height = sprite_get_height( spr_rhy_base )*global.res_scale; 
//Note: The "*global.res_scale" is there to adjust for my arbitrary resolution
//It merely adjusts the scale so that it will be the same time-size, no matter the pixel-size 

var tempSurf = surface_create(base_width*h_scale, base_height*v_scale);
surface_set_target(tempSurf);
draw_clear(c_black);
surface_reset_target();

var newHitbox = sprite_create_from_surface(tempSurf, 0, 0, surface_get_width(tempSurf), surface_get_height(tempSurf), false, false, 0, surface_get_height(tempSurf)/2);
surface_free(tempSurf);

if(object_get_mask(obj_rhy_base) != spr_rhy_base) { sprite_delete(object_get_mask(obj_rhy_base)); } 

with(obj_rhy_base) { mask_index = newHitbox; }
object_set_mask(obj_rhy_base, newHitbox);
