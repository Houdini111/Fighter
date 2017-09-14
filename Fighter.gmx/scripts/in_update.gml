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
    
    global.in[? "d_1"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_dodge_1"]);
    global.in[? "d_2"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_dodge_2"]);    
    global.in[? "d_3"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_dodge_3"]);
    global.in[? "d_4"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_dodge_4"]);
    
    global.in[? "d_1_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_dodge_1"]);
    global.in[? "d_2_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_dodge_2"]);    
    global.in[? "d_3_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_dodge_3"]);
    global.in[? "d_4_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_dodge_4"]);
    
    //global.in[? "l_x"] = gamepad_axis_value(global.gp_slot, gp_axislh);
    //global.in[? "l_y"] = gamepad_axis_value(global.gp_slot, gp_axislv);
    //global.in[? "l_dir"] = point_direction(0, 0, global.in[? "l_x"], global.in[? "l_y"]);
    global.in[? "l_press"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_l_stick"]);
    
    global.in[? "r_x"] = gamepad_axis_value(global.gp_slot, global.in_map[? "look_stick_horizontal"]);
    global.in[? "r_y"] = gamepad_axis_value(global.gp_slot, global.in_map[? "look_stick_vertical"]);
    global.in[? "r_dir"] = point_direction(0, 0, global.in[? "r_x"], global.in[? "r_y"]);
    global.in[? "r_press"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_r_stick"]);
    
    global.in[? "a_1"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_a_1"]);
    global.in[? "a_2"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_a_2"]);    
    global.in[? "a_3"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_a_3"]);
    global.in[? "a_4"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_a_4"]);
    
    global.in[? "a_1_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_a_1"]);
    global.in[? "a_2_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_a_2"]);    
    global.in[? "a_3_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_a_3"]);
    global.in[? "a_4_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_a_4"]);
    
    global.in[? "start"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_start"]);
    global.in[? "select"] = gamepad_button_check(global.gp_slot, global.in_map[? "b_select"]);
    global.in[? "start_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_start"]);   
    global.in[? "select_p"] = gamepad_button_check_pressed(global.gp_slot, global.in_map[? "b_select"]);
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
    
    global.in[? "d_1"] = keyboard_check( global.in_map[? "k_dodge_1"] );
    global.in[? "d_2"] = keyboard_check( global.in_map[? "k_dodge_2"] );
    global.in[? "d_3"] = keyboard_check( global.in_map[? "k_dodge_3"] );
    global.in[? "d_4"] = keyboard_check( global.in_map[? "k_dodge_4"] );
    
    global.in[? "d_1_p"] = keyboard_check_pressed( global.in_map[? "k_dodge_1"] );
    global.in[? "d_2_p"] = keyboard_check_pressed( global.in_map[? "k_dodge_2"] );
    global.in[? "d_3_p"] = keyboard_check_pressed( global.in_map[? "k_dodge_3"] );
    global.in[? "d_4_p"] = keyboard_check_pressed( global.in_map[? "k_dodge_4"] );
    
    //No left stick
    global.in[? "l_x"] = "N/A";
    global.in[? "l_y"] = "N/A";
    global.in[? "l_y"] = "N/A";
    global.in[? "l_stick"] = keyboard_check( global.in_map[? "k_l_stick"] );
    global.in[? "l_stick_p"] = keyboard_check_pressed( global.in_map[? "k_l_stick"] );
    
    if( keyboard_check( global.in_map[? "k_l_left"] ) ) {  global.in[? "r_x"] = -1; }
    else if ( keyboard_check( global.in_map[? "k_l_right"] ) ) {  global.in[? "r_x"] = 1; }
    else {  global.in[? "r_x"] = 0; }
    if( keyboard_check( global.in_map[? "k_l_up"] ) ) {  global.in[? "r_y"] = -1; }
    else if ( keyboard_check( global.in_map[? "k_l_down"] ) ) {  global.in[? "r_y"] = 1; }
    else {  global.in[? "r_y"] = 0; }
    ds_map_replace( global.in, "r_dir", point_direction(0, 0, global.in[? "r_x"], global.in[? "r_y"]) );
    global.in[? "r_stick"] = keyboard_check(global.in_map[? "k_r_stick"]);
    global.in[? "r_stick_p"] = keyboard_check_pressed(global.in_map[? "k_r_stick"]);
    
    global.in[? "a_1"] = keyboard_check( global.in_map[? "k_a_1"] );
    global.in[? "a_2"] = keyboard_check( global.in_map[? "k_a_2"] );
    global.in[? "a_3"] = keyboard_check( global.in_map[? "k_a_3"] );
    global.in[? "a_4"] = keyboard_check( global.in_map[? "k_a_4"] );
    
    global.in[? "a_1_p"] = keyboard_check_pressed( global.in_map[? "k_a_1"] );
    global.in[? "a_2_p"] = keyboard_check_pressed( global.in_map[? "k_a_2"] );
    global.in[? "a_3_p"] = keyboard_check_pressed( global.in_map[? "k_a_3"] );
    global.in[? "a_4_p"] = keyboard_check_pressed( global.in_map[? "k_a_4"] );
    
    global.in[? "start"] = keyboard_check( global.in_map[? "k_start"] );
    global.in[? "select"] = keyboard_check( global.in_map[? "k_select"] );
    global.in[? "start_p"] = keyboard_check_pressed( global.in_map[? "k_start"] );
    global.in[? "select_p"] = keyboard_check_pressed( global.in_map[? "k_select"] );
}
