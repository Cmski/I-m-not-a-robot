///@desc Toggle Bread
scr_toggle_cursor(false);
bread = instance_create_layer(mouse_x, mouse_y, "Instances", obj_bread);

with (bread) alarm[0] = 160;

alarm[2] = 240;