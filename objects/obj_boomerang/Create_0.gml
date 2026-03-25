event_inherited();

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], 73, 34);
physics_fixture_add_point(fix[0], 65, 32);
physics_fixture_add_point(fix[0], 18, -4);
physics_fixture_add_point(fix[0], 61, 9);
physics_fixture_add_point(fix[0], 75, 27);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], 61, 9);
physics_fixture_add_point(fix[1], 18, -4);
physics_fixture_add_point(fix[1], -1, -13);
physics_fixture_add_point(fix[1], 23, -24);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], -19, -6);
physics_fixture_add_point(fix[2], -69, 30);
physics_fixture_add_point(fix[2], -75, 29);
physics_fixture_add_point(fix[2], -75, 23);
physics_fixture_add_point(fix[2], -66, 9);
physics_fixture_add_point(fix[2], -23, -26);
physics_fixture_add_point(fix[2], -1, -35);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 23, -24);
physics_fixture_add_point(fix[3], -1, -13);
physics_fixture_add_point(fix[3], -19, -6);
physics_fixture_add_point(fix[3], -1, -35);

for (var i = 0; i < 4; i += 1) {
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