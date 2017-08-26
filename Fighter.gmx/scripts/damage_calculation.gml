///damage_calculation(attacker, defender[, bonus_attack_mult])
a = argument[0];
d = argument[1];
b = 1;

if( argument_count == 3 ) { b = argument[2]; }



     
if( a.atk < d.def ) 
    { return 0.4*( power(a.atk*b, 3)/ power(d.def, 2)) - 0.09*( power(a.atk*b, 2)/ d.def)+0.1*a.atk*b; }
else if ( a.atk >= d.def )
    { return a.atk*b - 0.79* d.def*power(2.71828182846, (-0.27* d.def/a.atk*b)) }
else { return -1; }
