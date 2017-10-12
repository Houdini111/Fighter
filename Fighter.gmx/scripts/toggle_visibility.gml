///toggle_visibility()
if( targets != noone and !ds_list_size(targets) > 0 ) { show_debug_message("toggle_visibility REQUIRES TARGETS"); }
else 
{ 
    for(var i = 0; i < ds_list_size(targets); i++)
        { targets[| i].visible = !targets[| i].visible; }
}
