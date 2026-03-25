event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 19, 63);
physics_fixture_add_point(fix[0], -6, 64);
physics_fixture_add_point(fix[0], -25, 60);
physics_fixture_add_point(fix[0], -31, 54);
physics_fixture_add_point(fix[0], -31, 48);
physics_fixture_add_point(fix[0], 33, 47);
physics_fixture_add_point(fix[0], 34, 55);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 19, 42);
physics_fixture_add_point(fix[1], 33, 47);
physics_fixture_add_point(fix[1], -31, 48);
physics_fixture_add_point(fix[1], -20, 44);
physics_fixture_add_point(fix[1], -5, 41);
physics_fixture_add_point(fix[1], 7, 41);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 7, 35);
physics_fixture_add_point(fix[2], 7, 41);
physics_fixture_add_point(fix[2], -5, 41);
physics_fixture_add_point(fix[2], -6, 35);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 27, 27);
physics_fixture_add_point(fix[3], 7, 35);
physics_fixture_add_point(fix[3], -6, 35);
physics_fixture_add_point(fix[3], -18, 32);
physics_fixture_add_point(fix[3], -36, 18);
physics_fixture_add_point(fix[3], 50, -15);
physics_fixture_add_point(fix[3], 44, 12);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], 44, -40);
physics_fixture_add_point(fix[4], 50, -15);
physics_fixture_add_point(fix[4], -36, 18);
physics_fixture_add_point(fix[4], -49, -1);
physics_fixture_add_point(fix[4], -50, -25);
physics_fixture_add_point(fix[4], -2, -66);
physics_fixture_add_point(fix[4], 22, -58);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], -2, -66);
physics_fixture_add_point(fix[5], -50, -25);
physics_fixture_add_point(fix[5], -43, -45);
physics_fixture_add_point(fix[5], -24, -60);

for (var i = 0; i < 6; i += 1) {
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