///draw_state_triangles()
//var _r = argument0;
var size = 10;

draw_set_color(c_dkgray);
draw_primitive_begin(pr_trianglefan);
draw_vertex( x, y+ui_height/2+circle_radius ); //Lettmost
draw_vertex( x+circle_radius, y+ui_height/2-size ); //Topmost
draw_vertex( x+circle_radius*2+size, y+ui_height/2+circle_radius );//Rightmost
draw_vertex( x+circle_radius, y+ui_height/2+circle_radius*2+size );//Bottommost
draw_primitive_end();

draw_set_color(c_black);
draw_primitive_begin(pr_linestrip);
draw_vertex( x, y+ui_height/2+circle_radius ); //Lettmost
draw_vertex( x+circle_radius, y+ui_height/2-size ); //Topmost
draw_vertex( x+circle_radius*2+size, y+ui_height/2+circle_radius );//Rightmost
draw_vertex( x+circle_radius, y+ui_height/2+circle_radius*2+size );//Bottommost
draw_primitive_end();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x+circle_radius, y+ui_height/2-size, "0");
