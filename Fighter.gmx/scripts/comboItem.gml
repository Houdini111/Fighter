///comboItem(key, x, y, size)   //Create new combo item at location

padding = .1;
scale = 1;

draw_set_color(c_gray);
draw_rectangle(argument1, argument2, argument1+argument3, argument2+argument3, false);
draw_set_color(c_black);
draw_rectangle(argument1, argument2, argument1+argument3, argument2+argument3, true);

draw_circle(argument1+argument3/2, argument2+argument3/2, argument3*.9/2, false);
draw_set_color(c_white);
draw_circle(argument1+argument3/2, argument2+argument3/2, argument3*.9/2-2, false);

draw_set_color(c_black);
draw_set_font(myFont);
w = string_width(string_upper(argument0))*scale;
h = string_height(string_upper(argument0))*scale;
draw_text_transformed(argument1+(argument3-w)/2, argument2+(argument3-h)/2, string_upper(argument0), scale, scale, 0);
