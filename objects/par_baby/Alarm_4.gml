///@desc Spawn baby
instance_create_layer(baby_x, baby_y, "Captcha", obj_baby);
spawn_buttons();
scr_set_banner_text("Select the sound a baby is least likely to make");

scr_fade_music();

alarm[5] = 120;