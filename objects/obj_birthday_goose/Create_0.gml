depth = -900;

dir = 0;
spd = 5;
min_x = spd;
max_x = room_width - spd;


my_destroy = instance_create_layer(x, y, "Captcha", obj_birthday_goose_destroy);

var fix, offsetx, offsety;

offsetx = sprite_width/2-sprite_xoffset;
offsety = sprite_height/2-sprite_yoffset;


fix[0] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[0]);
physics_fixture_add_point(fix[0], -49, 42);
physics_fixture_add_point(fix[0], -50, 28);
physics_fixture_add_point(fix[0], -50, 2);
physics_fixture_add_point(fix[0], -47, -13);
physics_fixture_add_point(fix[0], -39, 69);

fix[1] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[1]);
physics_fixture_add_point(fix[1], -70, -55);
physics_fixture_add_point(fix[1], -88, -78);
physics_fixture_add_point(fix[1], -88, -88);

fix[2] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[2]);
physics_fixture_add_point(fix[2], -47, -13);
physics_fixture_add_point(fix[2], -70, -55);
physics_fixture_add_point(fix[2], -88, -88);
physics_fixture_add_point(fix[2], -85, -94);
physics_fixture_add_point(fix[2], -49, -63);

fix[3] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[3]);
physics_fixture_add_point(fix[3], 67, 37);
physics_fixture_add_point(fix[3], 67, 51);
physics_fixture_add_point(fix[3], 59, 70);
physics_fixture_add_point(fix[3], 63, -1);

fix[4] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[4]);
physics_fixture_add_point(fix[4], 63, -1);
physics_fixture_add_point(fix[4], 59, 70);
physics_fixture_add_point(fix[4], 57, 94);
physics_fixture_add_point(fix[4], 45, 82);
physics_fixture_add_point(fix[4], 59, -10);

fix[5] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[5]);
physics_fixture_add_point(fix[5], -39, 69);
physics_fixture_add_point(fix[5], -47, -13);
physics_fixture_add_point(fix[5], -49, -63);
physics_fixture_add_point(fix[5], -26, 81);

fix[6] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[6]);
physics_fixture_add_point(fix[6], -39, 94);
physics_fixture_add_point(fix[6], -39, 69);
physics_fixture_add_point(fix[6], -26, 81);

fix[7] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[7]);
physics_fixture_add_point(fix[7], 57, 94);
physics_fixture_add_point(fix[7], -39, 94);
physics_fixture_add_point(fix[7], -26, 81);
physics_fixture_add_point(fix[7], 45, 82);

fix[8] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[8]);
physics_fixture_add_point(fix[8], 83, -90);
physics_fixture_add_point(fix[8], 87, -81);
physics_fixture_add_point(fix[8], 59, -10);
physics_fixture_add_point(fix[8], 59, -45);

fix[9] = physics_fixture_create();
physics_fixture_set_polygon_shape(fix[9]);
physics_fixture_add_point(fix[9], 59, -10);
physics_fixture_add_point(fix[9], 45, 82);
physics_fixture_add_point(fix[9], 59, -45);

for (var i = 0; i < 10; i += 1) {
  physics_fixture_set_density(fix[i], -1);
  physics_fixture_set_friction(fix[i], 0.20);
  physics_fixture_set_linear_damping(fix[i], 0.10);
  physics_fixture_set_angular_damping(fix[i], 0.10);
  physics_fixture_set_restitution(fix[i], 0.10);
  physics_fixture_set_sensor(fix[i], 0);
  physics_fixture_set_awake(fix[i], 1);
  physics_fixture_bind_ext(fix[i], id, 0-offsetx, 0-offsety);
  physics_fixture_delete(fix[i]);
}