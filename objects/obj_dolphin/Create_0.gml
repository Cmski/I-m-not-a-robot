event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 17, 16);
physics_fixture_add_point(fix[0], -2, 12);
physics_fixture_add_point(fix[0], -8, 7);
physics_fixture_add_point(fix[0], 40, 1);
physics_fixture_add_point(fix[0], 33, 11);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], -62, 34);
physics_fixture_add_point(fix[1], -53, 43);
physics_fixture_add_point(fix[1], -50, 52);
physics_fixture_add_point(fix[1], -70, 48);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 84, -2);
physics_fixture_add_point(fix[2], 84, 4);
physics_fixture_add_point(fix[2], 68, 2);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 84, -2);
physics_fixture_add_point(fix[3], 68, 2);
physics_fixture_add_point(fix[3], 40, 1);
physics_fixture_add_point(fix[3], 78, -8);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], 78, -8);
physics_fixture_add_point(fix[4], 40, 1);
physics_fixture_add_point(fix[4], -8, 7);
physics_fixture_add_point(fix[4], 76, -15);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], -62, 34);
physics_fixture_add_point(fix[5], -70, 48);
physics_fixture_add_point(fix[5], -85, 47);

fix[6] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[6]);
physics_fixture_add_point(fix[6], -55, 25);
physics_fixture_add_point(fix[6], -62, 34);
physics_fixture_add_point(fix[6], -85, 47);

fix[7] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[7]);
physics_fixture_add_point(fix[7], -41, 14);
physics_fixture_add_point(fix[7], -55, 25);
physics_fixture_add_point(fix[7], -85, 47);
physics_fixture_add_point(fix[7], -93, 49);
physics_fixture_add_point(fix[7], -84, 42);
physics_fixture_add_point(fix[7], -71, 33);

fix[8] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[8]);
physics_fixture_add_point(fix[8], 76, -15);
physics_fixture_add_point(fix[8], -8, 7);
physics_fixture_add_point(fix[8], -41, 14);
physics_fixture_add_point(fix[8], 43, -40);
physics_fixture_add_point(fix[8], 57, -35);
physics_fixture_add_point(fix[8], 70, -26);

fix[9] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[9]);
physics_fixture_add_point(fix[9], 43, -40);
physics_fixture_add_point(fix[9], -41, 14);
physics_fixture_add_point(fix[9], -71, 33);
physics_fixture_add_point(fix[9], -71, 14);
physics_fixture_add_point(fix[9], -59, -8);
physics_fixture_add_point(fix[9], 7, -45);
physics_fixture_add_point(fix[9], 24, -44);

fix[10] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[10]);
physics_fixture_add_point(fix[10], 7, -45);
physics_fixture_add_point(fix[10], -59, -8);
physics_fixture_add_point(fix[10], -41, -25);
physics_fixture_add_point(fix[10], -21, -38);

fix[11] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[11]);
physics_fixture_add_point(fix[11], -25, -54);
physics_fixture_add_point(fix[11], -13, -55);
physics_fixture_add_point(fix[11], 7, -45);
physics_fixture_add_point(fix[11], -16, -46);

fix[12] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[12]);
physics_fixture_add_point(fix[12], 7, -45);
physics_fixture_add_point(fix[12], -21, -38);
physics_fixture_add_point(fix[12], -16, -46);

for (var i = 0; i < 13; i += 1) {
  physics_fixture_set_density(fix[i], 0.60);
  physics_fixture_set_friction(fix[i], 0.20);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.10);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}