depth = -800;

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 35, 29);
physics_fixture_add_point(fix[0], -32, 28);
physics_fixture_add_point(fix[0], -36, 26);
physics_fixture_add_point(fix[0], -38, -15);
physics_fixture_add_point(fix[0], -31, -25);
physics_fixture_add_point(fix[0], -10, -24);
physics_fixture_add_point(fix[0], 36, -12);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], -10, -24);
physics_fixture_add_point(fix[1], -31, -25);
physics_fixture_add_point(fix[1], -25, -29);
physics_fixture_add_point(fix[1], -13, -30);

for (var i = 0; i < 2; i += 1) {
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