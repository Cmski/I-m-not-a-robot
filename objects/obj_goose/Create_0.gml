min_x = 32;
max_x = room_width - 32;
min_y = 32;
max_y = room_height - 32;

mvt_spd = choose(1, 1.2, 1.2, 1.6, 2);
current_mvt = 0;
hsp = 0;
vsp = 0;

moving = true;
target_x = irandom_range(min_x, max_x);
target_y = irandom_range(min_y, max_y);
dir = 0;

range = 6;
distance = 0;

chasing = false;
chase_timer_max = 200;
chase_timer_min = 100;
chase_cooldown_timer = irandom_range(chase_timer_min, chase_timer_max);
chase_timer = 0;
chase_min = 60;
chase_max = 150;
chase_mvt_boost = 3.2;
chase_bonus_range = 100;

depth_val = -1000;
depth = depth_val;

fleeing = false;