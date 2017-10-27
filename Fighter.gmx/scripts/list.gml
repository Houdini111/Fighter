///list( [item1, item2, ...] )
var _l = ds_list_create();
for(var _i = 0; _i < argument_count; _i++)
    { ds_list_add(_l, argument[_i]); }
return _l;
