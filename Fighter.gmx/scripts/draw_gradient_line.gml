///draw_gradient_line(x1, y1, x2, y2, width, steps, color)
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
width = argument4
steps = argument5;
draw_set_color(argument6);

for(i = 0; i < steps; i++)
{
    draw_set_alpha( (1+i)/(steps*2) );
    draw_line_width(x1, y1, x2, y2, width*(steps-i)/steps);
}
draw_set_alpha(1);
