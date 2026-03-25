scale = 0.55;

blink_crt_time = 60;
blink_min = 150;
blink_max = 300;
blink_dur = 6;

eye_sprite = spr_brian_eyes_open;
blinking = true;

pupil_slide = false;
pupil_speed_x = 0.01;
pupil_left_x_max = -6;
pupil_right_x_max = 6;

pupil_left_x = 0;
pupil_left_y = 0;
pupil_right_x = 0;
pupil_right_y = 0;

curve = animcurve_get_channel(ac_shake, "curve1");
percent = 0;

grabbed = false;

appear_curve = animcurve_get_channel(ac_back, "curve1");
appear_percent = 0;
appear = false;

image_xscale = 0;
image_yscale = 0;

talking = false;
mouth = 0;
talk_max_timer = 14;
talk_timer = talk_max_timer;