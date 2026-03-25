#region//Confetti
global.confetti_system = part_system_create();
global.confetti_type = part_type_create();
var conft = global.confetti_type;

part_type_sprite(conft, spr_part_square, false, false, false);
part_type_life(conft, 180, 180);
part_type_direction(conft, 80, 100, 0, 0);
part_type_gravity(conft, 0.3, 270);
part_type_speed(conft, 8, 18, 0, 0);
part_type_orientation(conft, 0, 359, 1, 2, 0);
#endregion

#region//Broccoli
global.broccoli_system = part_system_create();
global.broccoli_type = part_type_create();
var brocft = global.broccoli_type;

part_type_sprite(brocft, spr_broccoli, false, false, false);
part_type_life(brocft, 180, 180);
part_type_direction(brocft, 80, 100, 0, 0);
part_type_gravity(brocft, 0.3, 270);
part_type_speed(brocft, 8, 18, 0, 0);
part_type_scale(brocft, 0.2, 0.2);
part_type_orientation(brocft, 0, 359, 1, 2, 0);
#endregion

#region//Bread
global.bread_system = part_system_create();
global.bread_type = part_type_create();
var brdft = global.bread_type;

part_type_sprite(brdft, spr_bread, false, false, false);
part_type_life(brdft, 120, 120);
part_type_direction(brdft, 30, 150, 0, 0);
part_type_gravity(brdft, 0.3, 270);
part_type_speed(brdft, 4, 6, 0, 0);
part_type_size(brdft, 0.3, 0.35, -0.01, 0);
part_type_orientation(brdft, 0, 359, 3, 0, 0);
#endregion