event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 24, 32);
physics_fixture_add_point(fix[0], 22, 36);
physics_fixture_add_point(fix[0], 6, 39);
physics_fixture_add_point(fix[0], -16, 38);
physics_fixture_add_point(fix[0], 17, 30);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 2, -41);
physics_fixture_add_point(fix[1], 17, 30);
physics_fixture_add_point(fix[1], -16, 38);
physics_fixture_add_point(fix[1], -19, 29);
physics_fixture_add_point(fix[1], -4, -41);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], -16, 38);
physics_fixture_add_point(fix[2], -26, 34);
physics_fixture_add_point(fix[2], -25, 30);
physics_fixture_add_point(fix[2], -19, 29);

for (var i = 0; i < 3; i += 1) {
  physics_fixture_set_density(fix[i], 0.40);
  physics_fixture_set_friction(fix[i], 0.20);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.15);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}