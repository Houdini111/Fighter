///create_input_map()
global.in_map = ds_map_create();


global.in_map[? "k_m_up"] = ord("W");
global.in_map[? "k_m_left"] = ord("A");
global.in_map[? "k_m_down"] = ord("S");
global.in_map[? "k_m_right"] = ord("D");

global.in_map[? "k_dodge_1"] = ord("C");
global.in_map[? "k_dodge_2"] = ord("V");
global.in_map[? "k_dodge_3"] = ord("B");
global.in_map[? "k_dodge_4"] = ord("N");

global.in_map[? "k_l_stick"] = ord("Q");
global.in_map[? "k_r_stick"] = ord("P");

global.in_map[? "k_l_up"] = ord("I");
global.in_map[? "k_l_left"] = ord("J");
global.in_map[? "k_l_down"] = ord("K");
global.in_map[? "k_l_right"] = ord("L");

global.in_map[? "k_a_1"] = ord("E");
global.in_map[? "k_a_2"] = ord("R");
global.in_map[? "k_a_3"] = ord("Y");
global.in_map[? "k_a_4"] = ord("U");

global.in_map[? "k_start"] = ord("Z");
global.in_map[? "k_select"] = vk_f3;



global.in_map[? "b_m_up"] = gp_padu;
global.in_map[? "b_m_left"] = gp_padl;
global.in_map[? "b_m_down"] = gp_padd;
global.in_map[? "b_m_right"] = gp_padr;

global.in_map[? "b_dodge_1"] = gp_face3;
global.in_map[? "b_dodge_2"] = gp_face1;
global.in_map[? "b_dodge_3"] = gp_face2;
global.in_map[? "b_dodge_4"] = gp_face4;

global.in_map[? "b_l_stick"] = gp_stickl;
global.in_map[? "b_r_stick"] = gp_stickr;

/*
global.in_map[? "b_l_up"] = ord("I");
global.in_map[? "b_l_left"] = ord("J");
global.in_map[? "b_l_down"] = ord("K");
global.in_map[? "b_l_right"] = ord("L");
*/
global.in_map[? "look_stick_horizontal"] = gp_axisrh;
global.in_map[? "look_stick_vertical"] = gp_axisrv;

global.in_map[? "b_a_1"] = gp_shoulderl;
global.in_map[? "b_a_2"] = gp_shoulderr;
global.in_map[? "b_a_3"] = gp_shoulderlb;
global.in_map[? "b_a_4"] = gp_shoulderrb;

global.in_map[? "b_start"] = gp_start;
global.in_map[? "b_select"] = gp_select;

