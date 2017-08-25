///e_attack(attackingEnemy)
p = argument0.pattern;

if(p == 1) { peice(obj_rhy_1, (1-(global.master.time%1))*1000 ); }
else if(p == 2) { peice(obj_rhy_2, (1-(global.master.time%1))*1000); }
else if(p == 3) { peice(obj_rhy_3, (0.5-(global.master.time%1))*1000); }

