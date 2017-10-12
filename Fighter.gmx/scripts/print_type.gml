///print_type(to_check)
var _a = argument0;
if( is_array(_a) ) { show_debug_message("IS ARRAY"); }
else if( is_bool(_a) ) { show_debug_message("IS BOOL"); }
else if( is_int32(_a) ) { show_debug_message("IS INT32"); }
else if( is_int64(_a) ) { show_debug_message("IS INT64"); }
else if( is_matrix(_a) ) { show_debug_message("IS MATRIX"); }
else if( is_ptr(_a) ) { show_debug_message("IS PTR"); }
else if( is_real(_a) ) { show_debug_message("IS REAL"); }
else if( is_string(_a) ) { show_debug_message("IS STRING"); }
else if( is_undefined(_a) ) { show_debug_message("IS UNDEFINED"); }
else if( is_vec3(_a) ) { show_debug_message("IS VEC3"); }
else if( is_vec4(_a) ) { show_debug_message("IS VEC4"); }
