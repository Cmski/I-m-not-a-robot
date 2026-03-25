depth = -800;

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 9, 27);
physics_fixture_add_point(fix[0], 5, 34);
physics_fixture_add_point(fix[0], -6, 33);
physics_fixture_add_point(fix[0], -8, 13);
physics_fixture_add_point(fix[0], 8, 12);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 14, 0);
physics_fixture_add_point(fix[1], 8, 12);
physics_fixture_add_point(fix[1], -8, 13);
physics_fixture_add_point(fix[1], -11, 4);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 14, 0);
physics_fixture_add_point(fix[2], -11, 4);
physics_fixture_add_point(fix[2], -28, 0);
physics_fixture_add_point(fix[2], -33, -5);
physics_fixture_add_point(fix[2], 17, -32);
physics_fixture_add_point(fix[2], 33, -20);
physics_fixture_add_point(fix[2], 35, -8);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 35, -8);
physics_fixture_add_point(fix[3], 28, 0);
physics_fixture_add_point(fix[3], 14, 0);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], 17, -32);
physics_fixture_add_point(fix[4], -33, -5);
physics_fixture_add_point(fix[4], -33, -16);
physics_fixture_add_point(fix[4], -25, -24);
physics_fixture_add_point(fix[4], 0, -36);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], 0, -36);
physics_fixture_add_point(fix[5], -25, -24);
physics_fixture_add_point(fix[5], -20, -31);

for (var i = 0; i < 6; i += 1) {
  physics_fixture_set_density(fix[i], 0.50);
  physics_fixture_set_friction(fix[i], 0.10);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.20);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}