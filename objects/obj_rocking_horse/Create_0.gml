event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], -48, -15);
physics_fixture_add_point(fix[0], -56, -21);
physics_fixture_add_point(fix[0], -54, -31);
physics_fixture_add_point(fix[0], -47, -41);
physics_fixture_add_point(fix[0], -43, -20);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], -43, -20);
physics_fixture_add_point(fix[1], -47, -41);
physics_fixture_add_point(fix[1], -46, -48);
physics_fixture_add_point(fix[1], -28, -52);
physics_fixture_add_point(fix[1], -33, -20);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], -31, -3);
physics_fixture_add_point(fix[2], -33, -20);
physics_fixture_add_point(fix[2], -28, -52);
physics_fixture_add_point(fix[2], -17, -38);
physics_fixture_add_point(fix[2], -6, -19);
physics_fixture_add_point(fix[2], -24, 11);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], -35, 37);
physics_fixture_add_point(fix[3], -24, 11);
physics_fixture_add_point(fix[3], -6, -19);
physics_fixture_add_point(fix[3], 5, -16);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], -71, 39);
physics_fixture_add_point(fix[4], -75, 30);
physics_fixture_add_point(fix[4], -35, 37);
physics_fixture_add_point(fix[4], -46, 47);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], -35, 37);
physics_fixture_add_point(fix[5], 5, -16);
physics_fixture_add_point(fix[5], 19, -20);
physics_fixture_add_point(fix[5], 32, -18);

fix[6] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[6]);
physics_fixture_add_point(fix[6], -46, 47);
physics_fixture_add_point(fix[6], -35, 37);
physics_fixture_add_point(fix[6], 32, -18);
physics_fixture_add_point(fix[6], 42, -8);
physics_fixture_add_point(fix[6], 46, 44);
physics_fixture_add_point(fix[6], 19, 53);
physics_fixture_add_point(fix[6], -14, 53);

fix[7] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[7]);
physics_fixture_add_point(fix[7], 46, 44);
physics_fixture_add_point(fix[7], 42, -8);
physics_fixture_add_point(fix[7], 47, 31);

fix[8] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[8]);
physics_fixture_add_point(fix[8], 69, 32);
physics_fixture_add_point(fix[8], 46, 44);
physics_fixture_add_point(fix[8], 47, 31);
physics_fixture_add_point(fix[8], 75, 22);
physics_fixture_add_point(fix[8], 74, 28);

for (var i = 0; i < 9; i += 1) {
  physics_fixture_set_density(fix[i], 0.8);
  physics_fixture_set_friction(fix[i], 0.15);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.15);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}