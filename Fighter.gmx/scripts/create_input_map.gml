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
