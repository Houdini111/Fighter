///draw_gradient_line(x1, y1, x2, y2, width, steps, color)
var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _width = argument4
var _steps = argument5;
draw_set_color(argument6);

for(i = 0; i < _steps; i++)
{
    draw_set_alpha( (1+i)/(_steps*2) );
    draw_line_width(_x1, _y1, _x2, _y2, _width*(_steps-i)/_steps);
}
draw_set_alpha(1);
