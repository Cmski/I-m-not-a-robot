///@desc Birthday Task
scr_set_dialogue(dialogue.birthday_task, undefined, false);
layer_set_visible("Birthday", true);

with (obj_birthday_button) appear = true; 

audio_play_sound(snd_bubble, 50, false);

scr_fade_music();

entering = true;

goose = instance_create_layer(captchax, room_height + goose_height / 2, "AboveCaptcha", obj_birthday_goose);

alarm[4] = 960;