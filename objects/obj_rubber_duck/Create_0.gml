event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], -49, 9);
physics_fixture_add_point(fix[0], -49, -3);
physics_fixture_add_point(fix[0], -45, -12);
physics_fixture_add_point(fix[0], -39, -11);
physics_fixture_add_point(fix[0], -30, -3);
physics_fixture_add_point(fix[0], -36, 40);
physics_fixture_add_point(fix[0], -46, 25);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], -21, 45);
physics_fixture_add_point(fix[1], -36, 40);
physics_fixture_add_point(fix[1], -30, -3);
physics_fixture_add_point(fix[1], -16, -1);
physics_fixture_add_point(fix[1], 15, 47);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 15, 47);
physics_fixture_add_point(fix[2], -16, -1);
physics_fixture_add_point(fix[2], -7, -5);
physics_fixture_add_point(fix[2], 47, 30);
physics_fixture_add_point(fix[2], 40, 41);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 47, 30);
physics_fixture_add_point(fix[3], -7, -5);
physics_fixture_add_point(fix[3], -14, -11);
physics_fixture_add_point(fix[3], -19, -23);
physics_fixture_add_point(fix[3], -17, -36);
physics_fixture_add_point(fix[3], 39, 1);
physics_fixture_add_point(fix[3], 48, 13);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], 27, -7);
physics_fixture_add_point(fix[4], 39, 1);
physics_fixture_add_point(fix[4], -17, -36);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], 27, -7);
physics_fixture_add_point(fix[5], -17, -36);
physics_fixture_add_point(fix[5], -2, -47);
physics_fixture_add_point(fix[5], 14, -48);
physics_fixture_add_point(fix[5], 25, -43);
physics_fixture_add_point(fix[5], 28, -14);

fix[6] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[6]);
physics_fixture_add_point(fix[6], 32, -34);
physics_fixture_add_point(fix[6], 43, -34);
physics_fixture_add_point(fix[6], 28, -14);

fix[7] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[7]);
physics_fixture_add_point(fix[7], 28, -14);
physics_fixture_add_point(fix[7], 25, -43);
physics_fixture_add_point(fix[7], 32, -34);

for (var i = 0; i < 8; i += 1) {
  physics_fixture_set_density(fix[i], 0.30);
  physics_fixture_set_friction(fix[i], 0.15);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.40);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}