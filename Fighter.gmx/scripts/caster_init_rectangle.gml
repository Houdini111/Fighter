//caster_init_rectangle(left, top, bottom, right)
caster_init_polygon();
var left = argument0;
var top = argument1;
var right = argument2;
var bottom = argument3;

caster_add_point(left,top);
caster_add_point(right,top);
caster_add_point(right,bottom);
caster_add_point(left,bottom);
