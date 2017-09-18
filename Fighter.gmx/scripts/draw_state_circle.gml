///draw_state_circle( state, pos, radius, distance )
var _state = argument0; 
var _pos = argument1;
var _r = argument2;
var _d = argument3;
var _in = false;

if( st[_state, _in] != -1 ) //Will it be drawn?
{
    if( _pos == 'c' ) { draw_set_color(c_black); } 
    else
    {
        //Will it be an accept state?
        draw_set_color(c_black);
        for( var i = 0; i < array_height_2d(st); i++ )
        { 
            var t = st[_state, _pos];
            if( sign(t) )
            {
                //Deadstop
                if( st[t, 0] == 0 ) { draw_set_color(c_red); } 
                //Accept and continue
                else
                {
                    for( var j = 0; j < array_length_1d(a); j++ )
                    { if( t == a[j] ) { draw_set_color(c_orange); } }
                } 
            }
        }
        /*
        if( _in ) { draw_set_color(c_orange); } 
        else { draw_set_color(c_black); } 
        */
    }
    
    if( _pos == 'c' ) //Center
        { draw_circle(x+circle_radius, y+circle_radius+ui_height/2, _r, false); }
    else if( _pos == 0 ) //Top
        { draw_circle(x+circle_radius, y+circle_radius+_d, _r, false); }
    else if( _pos == 1 ) //Right
        { draw_circle(x+circle_radius+ui_width-_d, y+circle_radius+ui_height/2, _r, false); }
    else if( _pos == 2 ) //Bottom
        { draw_circle(x+circle_radius, y+circle_radius+ui_height-_d, _r, false); }
}
