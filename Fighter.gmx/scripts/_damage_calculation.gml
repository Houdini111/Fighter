///damage_calculation(attacker, defender)
a = argument0;
d = argument1;

//if(argument_count == 3) { return damage_calculation_3(a, d, argument[2]); }

    
if( a.atk < d.def ) 
    { return 0.4*( power(a.atk, 3)/ power(d.def, 2)) - 0.09*( power(a.atk, 2)/ d.def)+0.1*a.atk; }
else if ( a.atk >= d.def )
    { return a.atk - 0.79* d.def*power(2.71828182846, (-0.27* d.def/a.atk)) }
else { return -1; }
