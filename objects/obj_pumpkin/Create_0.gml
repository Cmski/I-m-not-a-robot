event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], -8, 37);
physics_fixture_add_point(fix[0], -28, 32);
physics_fixture_add_point(fix[0], -38, 18);
physics_fixture_add_point(fix[0], -40, 0);
physics_fixture_add_point(fix[0], -33, -15);
physics_fixture_add_point(fix[0], 30, 30);
physics_fixture_add_point(fix[0], 14, 36);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 36, 21);
physics_fixture_add_point(fix[1], 30, 30);
physics_fixture_add_point(fix[1], -33, -15);
physics_fixture_add_point(fix[1], -18, -23);
physics_fixture_add_point(fix[1], -5, -25);
physics_fixture_add_point(fix[1], 36, -13);
physics_fixture_add_point(fix[1], 40, 4);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], 5, -23);
physics_fixture_add_point(fix[2], 22, -21);
physics_fixture_add_point(fix[2], 36, -13);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 5, -23);
physics_fixture_add_point(fix[3], 36, -13);
physics_fixture_add_point(fix[3], -5, -25);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], 5, -23);
physics_fixture_add_point(fix[4], -5, -25);
physics_fixture_add_point(fix[4], 0, -33);
physics_fixture_add_point(fix[4], 5, -38);

for (var i = 0; i < 5; i += 1) {
  physics_fixture_set_density(fix[i], 0.60);
  physics_fixture_set_friction(fix[i], 0.20);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.20);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}