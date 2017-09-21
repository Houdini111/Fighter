///e_attack(attackingEnemy)
var e = argument0;
var p = e.pattern;

if(p == 1) { peice(obj_rhy_1, e, (1-(global.master.time%1))*1000 ); }
else if(p == 2) { peice(obj_rhy_2, e, (1-(global.master.time%1))*1000); }
else if(p == 3) { peice(obj_rhy_3, e, (0.5-(global.master.time%1))*1000); }
else if(p == 4) { peice(obj_rhy_4, e, (0.5-(global.master.time%.5))*1000); }
else if(p == 5) { peice( asset_get_index( "obj_rhy_"+string( irandom_range(1, 4) ) ), e, (1-(global.master.time%1))*1000 ); }

