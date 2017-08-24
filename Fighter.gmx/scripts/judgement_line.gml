///judgement_line(rhythm_left, rhythm_width, rhythm_top, rhythm_height)
r_l = argument0;
r_w = argument1;
r_t = argument2;
r_h = argument3;

j = instance_create(r_l, r_t+(0.1*r_h), obj_rhy_judgement_line);
j.right = r_l;
j.width = r_w;
j.top = r_t;
j.height = r_h;

return j;

