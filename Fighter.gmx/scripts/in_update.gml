///in_update()

if(global.gp_slot != -1)
{
    global.in[? "m_up"] = gamepad_button_check( global.gp_slot, global.in_map[? "b_m_up"] ) ;
    global.in[? "m_left"] = gamepad_button_check( global.gp_slot, global.in_map[? "b_m_left"] );
    global.in[? "m_down"] = gamepad_button_check( global.gp_slot, global.in_map[? "b_m_down"] );
    global.in[? "m_right"] = gamepad_button_check( global.gp_slot, global.in_map[? "b_m_right"] );
   
    global.in[? "m_up_p"] = gamepad_button_check_pressed( global.gp_slot, global.in_map[? "b_m_up"] );
    global.in[? "m_left_p"] = gamepad_button_check_pressed( global.gp_slot, global.in_map[? "b_m_left"] );
    global.in[? "m_down_p"] = gamepad_button_check_pressed( global.gp_slot, global.in_map[? "b_m_down"] );
    global.in[? "m_right_p"] = gamepad_button_check_pressed( global.gp_slot, global.in_map[? "b_m_right"] );
  
    global.in[? "m_up_h"] = 0;
    global.in[? "m_left_h"] = 0;
    global.in[? "m_down_h"] = 0;
    global.in[? "m_right_h"] = 0;
    
    ds_map_replace(global.in, "d_1", gamepad_button_check(global.gp_slot, gp_face3));
    ds_map_replace(global.in, "d_2", gamepad_button_check(global.gp_slot, gp_face1));    
    ds_map_replace(global.in, "d_3", gamepad_button_check(global.gp_slot, gp_face2));
    ds_map_replace(global.in, "d_4", gamepad_button_check(global.gp_slot, gp_face4));
    
    ds_map_replace(global.in, "d_1_p", gamepad_button_check_pressed(global.gp_slot, gp_face3));
    ds_map_replace(global.in, "d_2_p", gamepad_button_check_pressed(global.gp_slot, gp_face1));    
    ds_map_replace(global.in, "d_3_p", gamepad_button_check_pressed(global.gp_slot, gp_face2));
    ds_map_replace(global.in, "d_4_p", gamepad_button_check_pressed(global.gp_slot, gp_face4));
    
    ds_map_replace(global.in, "l_x", gamepad_axis_value(global.gp_slot, gp_axislh));
    ds_map_replace(global.in, "l_y", gamepad_axis_value(global.gp_slot, gp_axislv));
    ds_map_replace(global.in, "l_dir", point_direction(0, 0, global.in[? "l_x"], global.in[? "l_y"]));
    ds_map_replace(global.in, "l_press", gamepad_button_check(global.gp_slot, gp_stickl));
    
    ds_map_replace(global.in, "r_x", gamepad_axis_value(global.gp_slot, gp_axisrh));
    ds_map_replace(global.in, "r_y", gamepad_axis_value(global.gp_slot, gp_axisrv));
    ds_map_replace(global.in, "r_dir", point_direction(0, 0, global.in[? "r_x"], global.in[? "r_y"]));
    ds_map_replace(global.in, "r_press", gamepad_button_check(global.gp_slot, gp_stickr));
    
    ds_map_replace(global.in, "a_1", gamepad_button_check(global.gp_slot, gp_shoulderl));
    ds_map_replace(global.in, "a_2", gamepad_button_check(global.gp_slot, gp_shoulderr));    
    ds_map_replace(global.in, "a_3", gamepad_button_check(global.gp_slot, gp_shoulderlb));
    ds_map_replace(global.in, "a_4", gamepad_button_check(global.gp_slot, gp_shoulderrb));
    
    ds_map_replace(global.in, "a_1_p", gamepad_button_check_pressed(global.gp_slot, gp_shoulderl));
    ds_map_replace(global.in, "a_2_p", gamepad_button_check_pressed(global.gp_slot, gp_shoulderr));    
    ds_map_replace(global.in, "a_3_p", gamepad_button_check_pressed(global.gp_slot, gp_shoulderlb));
    ds_map_replace(global.in, "a_4_p", gamepad_button_check_pressed(global.gp_slot, gp_shoulderrb));
    
    ds_map_replace(global.in, "select", gamepad_button_check(global.gp_slot, gp_select));
    ds_map_replace(global.in, "start", gamepad_button_check(global.gp_slot, gp_start));
    ds_map_replace(global.in, "select_p", gamepad_button_check_pressed(global.gp_slot, gp_select));
    ds_map_replace(global.in, "start_p", gamepad_button_check_pressed(global.gp_slot, gp_start));   
}
else
{
    global.in[? "m_up"] = keyboard_check( global.in_map[? "k_m_up"] );
    global.in[? "m_left"] = keyboard_check( global.in_map[? "k_m_left"] );
    global.in[? "m_down"] = keyboard_check( global.in_map[? "k_m_down"] );
    global.in[? "m_right"] = keyboard_check( global.in_map[? "k_m_right"] );
    
    global.in[? "m_up_p"] = keyboard_check_pressed( global.in_map[? "k_m_up"] );
    global.in[? "m_left_p"] = keyboard_check_pressed( global.in_map[? "k_m_left"] );
    global.in[? "m_down_p"] = keyboard_check_pressed( global.in_map[? "k_m_down"] );
    global.in[? "m_right_p"] = keyboard_check_pressed( global.in_map[? "k_m_right"] );
    
    global.in[? "m_up_h"] = 0;
    global.in[? "m_left_h"] = 0;
    global.in[? "m_down_h"] = 0;
    global.in[? "m_right_h"] = 0;
    
    ds_map_replace(global.in, "d_1", keyboard_check(ord("C")));
    ds_map_replace(global.in, "d_2", keyboard_check(ord("V")));
    ds_map_replace(global.in, "d_3", keyboard_check(ord("B")));
    ds_map_replace(global.in, "d_4", keyboard_check(ord("N")));
    
    ds_map_replace(global.in, "d_1_p", keyboard_check_pressed(ord("C")));
    ds_map_replace(global.in, "d_2_p", keyboard_check_pressed(ord("V")));
    ds_map_replace(global.in, "d_3_p", keyboard_check_pressed(ord("B")));
    ds_map_replace(global.in, "d_4_p", keyboard_check_pressed(ord("N")));
    
    //No left stick
    ds_map_replace(global.in, "l_x", "N/A");
    ds_map_replace(global.in, "l_y", "N/A");
    ds_map_replace(global.in, "l_dir", "N/A");
    ds_map_replace( global.in, "l_press", keyboard_check(ord("Q")));
    
    if( keyboard_check(ord("J")) ) {  ds_map_replace(global.in, "r_x", -1); }
    else if ( keyboard_check(ord("L")) ) {  ds_map_replace(global.in, "r_x", 1); }
    else {  ds_map_replace(global.in, "r_x", 0); }
    if( keyboard_check(ord("I")) ) {  ds_map_replace(global.in, "r_y", -1); }
    else if ( keyboard_check(ord("K")) ) {  ds_map_replace(global.in, "r_y", 1); }
    else {  ds_map_replace(global.in, "r_y", 0); }
    ds_map_replace( global.in, "r_dir", point_direction(0, 0, global.in[? "r_x"], global.in[? "r_y"]) );
    ds_map_replace( global.in, "r_press", keyboard_check(ord("P")));
    
    ds_map_replace(global.in, "a_1", keyboard_check(ord("E")));
    ds_map_replace(global.in, "a_2", keyboard_check(ord("R")));    
    ds_map_replace(global.in, "a_3", keyboard_check(ord("Y")));
    ds_map_replace(global.in, "a_4", keyboard_check(ord("U")));
    
    ds_map_replace(global.in, "a_1_p", keyboard_check_pressed(ord("E")));
    ds_map_replace(global.in, "a_2_p", keyboard_check_pressed(ord("R")));    
    ds_map_replace(global.in, "a_3_p", keyboard_check_pressed(ord("Y")));
    ds_map_replace(global.in, "a_4_p", keyboard_check_pressed(ord("U")));
    
    ds_map_replace(global.in, "select", keyboard_check(vk_f3));
    ds_map_replace(global.in, "start", keyboard_check(ord("Z")));
    ds_map_replace(global.in, "select_p", keyboard_check_pressed(vk_f3));
    ds_map_replace(global.in, "start_p", keyboard_check_pressed(ord("Z")));
}
