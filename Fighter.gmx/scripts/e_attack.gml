///e_attack(attackingEnemy)
p = global.player;
e = argument0;

ds_list_add(p.hitMax, 2);
ds_list_add(p.hitValue, 0);
ds_list_add(p.hitTime, global.master.time);
ds_list_add(p.hitPoint, random_range(20, 80));
ds_list_add(p.hitSize, 20);

