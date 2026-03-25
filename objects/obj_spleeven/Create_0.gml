image_xscale = 0.7;
image_yscale = 0.7;

blink_crt_time = 60;
blink_min = 150;
blink_max = 300;
blink_dur = 6;

eye_sprite = spr_spleeven_eyes_open;
blinking = true;

hover_offset = 0;
curve = animcurve_get_channel(ac_shake, "curve1");
percent = 0;

visible = false;

talking = false;
mouth = 0;
talk_max_timer = 18;
talk_timer = talk_max_timer;