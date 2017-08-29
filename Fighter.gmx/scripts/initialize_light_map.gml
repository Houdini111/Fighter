///initialize_light_map(lm_width, lm_height, caster_parent_obj, light_parent_obj)

//Typically room size
lm_width = argument0; 
lm_height = argument1;
lm_surface_id = surface_create(lm_width, lm_height);

//Parents of casters and lights
lm_parent_caster = argument2;
lm_parent_light = argument3;
