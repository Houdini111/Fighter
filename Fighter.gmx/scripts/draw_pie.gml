///draw_pie(x ,y ,value, max, colour, radius, rotation, transparency, segments)

if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, pieVal;
    
    var numberofsections = argument8 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    pieVal = (argument2/argument3) * numberofsections 
    
    if (pieVal > 1) { // HTML5 version doesnt like triangle with only 2 sides 
        pieRot = 90 + argument6;    
    
        draw_set_colour(argument4);
        draw_set_alpha(argument7);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument0, argument1);
        
        for(i=0; i<=pieVal; i++) {
            len = (i*sizeofsection)+pieRot; // the 90 here is the starting angle
            tx = lengthdir_x(argument5, len);
            ty = lengthdir_y(argument5, len);
            draw_vertex(argument0+tx, argument1+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}
