dialogue = dialogue_baby();

scr_set_banner_text("");
scr_toggle_cursor(true);
scr_play_music(snd_music_2);

baby_x = 920;
baby_y = captchay;

show_audio = false;
audio_selected = -1;
chosen = false;

obj_brian.visible = false;

alarm[0] = 1;

audio_x = 440;
button_x = 540;
y_pos = [0, 0, 0, 0];

function spawn_buttons(){

var _h = sprite_get_height(spr_button_blank_square);
var _x = button_x;
var _int = 16;
var _y = captchay - _h * 2 + _int;

for (var i = 0; i < 4; i++)
{
	array_set(y_pos, i, _y);
	
	var _cb = i == 0 ? answer_wrong : answer_right;
	
	var _inst = instance_create_layer(_x, _y, "Captcha", obj_option_button);
	_inst.sprite_index = spr_button_blank_square;
	_inst.text = i + 1;
	_inst.active = false;
	_inst.callback = method(id, _cb);
	_y += _h + _int;
}	

show_audio = true;
	
}

function answer_wrong(){
scr_set_dialogue(dialogue.baby_wrong, undefined, false);

chosen = true;

alarm[10] = 320;

with (obj_option_button) active = false;
}

function answer_right(){
scr_set_dialogue(dialogue.baby_correct, undefined, false);
chosen = true;

alarm[10] = 380;

with (obj_option_button) active = false;
}