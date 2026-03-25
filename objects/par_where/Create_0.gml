scr_toggle_buttons(false);

x = captchax;
y = captchay;

my_flag = noone;
active = false;

sprite_index = captcha;

visible = false;

correct = false;
guessed = false;

dialogue = dialogue_where();
alarm[0] = 1;
alarm[1] = 90;
alarm[2] = timer_delay;

function where_start(){
scr_toggle_buttons(true);
scr_set_callback(function(){ where_complete() });
visible = true;
active = true;
my_answer = instance_create_layer(x, y, "Captcha", par_answer);
my_answer.sprite_index = answer;
scr_set_banner_text(banner_text);
}

function where_complete(){
active = false;
scr_toggle_active(false);
scr_clear_timer();

alarm[4] = 60;
}