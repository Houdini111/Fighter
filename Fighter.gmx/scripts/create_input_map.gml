///create_input_map()
global.in_map = ds_map_create();


global.in_map[? "k_m_up"] = ord("W");
global.in_map[? "k_m_left"] = ord("A");
global.in_map[? "k_m_down"] = ord("S");
global.in_map[? "k_m_right"] = ord("D");




global.in_map[? "b_m_up"] = gp_padu;
global.in_map[? "b_m_left"] = gp_padl;
global.in_map[? "b_m_down"] = gp_padd;
global.in_map[? "b_m_right"] = gp_padr;
