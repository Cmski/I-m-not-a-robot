event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 43, -31);
physics_fixture_add_point(fix[0], 48, -25);
physics_fixture_add_point(fix[0], 49, 8);
physics_fixture_add_point(fix[0], 46, 34);
physics_fixture_add_point(fix[0], 41, 45);
physics_fixture_add_point(fix[0], -50, 44);
physics_fixture_add_point(fix[0], -48, -49);

for (var i = 0; i < 1; i += 1) {
  physics_fixture_set_density(fix[i], 0.70);
  physics_fixture_set_friction(fix[i], 0.20);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.20);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}