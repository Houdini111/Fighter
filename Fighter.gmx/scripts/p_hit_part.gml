///p_hit_part(x, y, dir, dmg)

_new = instance_create(argument0, argument1, obj_player_hit_phantom);
_new.dir = argument2;
_new.count = floor(argument3);

with(_new)
{
    my_part_sys = part_system_create();
    //part_system_automatic_draw(my_part_sys, false);
    
    max_life = 25;
    max_angle = 10;
    max_size = 0.1;
    max_speed = 9;
    radius = 5;
    
    my_part = part_type_create();
    part_type_shape(my_part, pt_shape_square);
    part_type_size(my_part, max_size/2, max_size, 0.00, 0.00);
    //part_type_size(my_part, 0.1, 0.1, 0.00, 0.00);
    //part_type_scale(my_part, 1, 1);
    //part_type_color1(my_part, other.my_color);
    part_type_color1(my_part, c_red);
    //part_type_colour2(my_part, 16777215, 12632256);
    //part_type_alpha3(my_part, 0, 0.20, 0);
    part_type_speed(my_part, max_speed/2, max_speed, -max_speed/10, 0);
    //part_type_speed(my_part, 0, 0, 0, 0);
    part_type_direction(my_part, dir-max_angle, dir+max_angle, 0, 10);
    //part_type_orientation(my_part, 0, 359, 0, 0, 1);
    //part_type_blend(my_part, 0);
    part_type_life(my_part, max_life/2, max_life);
    
    my_burst = part_emitter_create(my_part_sys);
    //part_emitter_region(my_part_sys, my_burst, x, x+other.width, y-other.height/2, y+other.height/2, ps_shape_rectangle, ps_distr_linear);
    part_emitter_region(my_part_sys, my_burst, x-radius, x+radius, y-radius, y+radius, ps_shape_ellipse, ps_distr_gaussian);
    //part_emitter_region(my_part_sys, my_burst, 50, 100, 50, 50, ps_shape_rectangle, ps_distr_linear);
    part_emitter_burst(my_part_sys, my_burst, my_part, count);
    alarm[0] = max_life;
}
