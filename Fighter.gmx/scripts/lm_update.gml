///lm_update()


if(!surface_exists(lm_surface_id)) { lm_surface_id = surface_create(lm_width, lm_height); }

surface_set_target(lm_surface_id); 
draw_clear(make_colour_rgb(0,0,0)); 

var lm_id = id; 
if( lm_parent_light != -1 ) 
{
    with( lm_parent_light ) 
    { 
      var lx = x;
      var ly = y;
      var l_r = light_radius; //SET THIS
      var l_id = id; 
    
      with( lm_id.lm_parent_caster ) 
      { 
          if point_in_circle(x, y, lx, ly, l_r) 
          { 
              draw_primitive_begin(pr_trianglestrip);
              draw_set_color(c_white);

              for(i = 0; i < caster_point_count-1; i++)
                { lm_draw_shadow(id, l_id, l_r, caster_point_x[i], caster_point_y[i], caster_point_x[i+1], caster_point_y[i+1]); }
              lm_draw_shadow(id, l_id, l_r, caster_point_x[caster_point_count-1], caster_point_y[caster_point_count-1], caster_point_x[0], caster_point_y[0]);
              draw_primitive_end();
          }
      }
    }
}
surface_reset_target();
