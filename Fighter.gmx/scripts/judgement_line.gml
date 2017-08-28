///judgement_line(rhythm_left, rhythm_width, rhythm_top, rhythm_height)
var r_l = argument0;
var r_w = argument1;
var r_t = argument2;
var r_h = argument3;

var j = instance_create(r_l, r_t+(0.1*r_h), obj_rhy_judgement_line);
j.right = r_l;
j.width = r_w;
j.top = r_t;
j.height = r_h;

return j;

