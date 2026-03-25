show_image = false;
show_alpha = 1;
image_x = captchax;
image_y = captchay;
entering = false;
entering_max = 60;
entering_duration = entering_max;
goose_height = sprite_get_height(spr_birthday_goose);
fading = false;

scr_clear_banner_text();
instance_create_layer(0, 0, "Instances", obj_confetti_launcher);

dialogue = dialogue_birthday();

scr_toggle_buttons(false);

instance_destroy(obj_wall);

alarm[6] = 1;

spawning = false;
spawn_int = 30;
spawn_timer = 0;
spawn_x_min = 420;
spawn_x_mid = 730;
spawn_x_max = 1040;
spawn_y = -100;
spawn_pos = 0;

target_num = 16;
broccoli_eaten = 0;

sound_counter = 0;
sound_order = [
snd_song1,
snd_song2,
snd_song3,
snd_song4,
snd_song1,
snd_song2,
snd_song5,
snd_song6,
snd_song1,
snd_song7,
snd_song8,
snd_song9,
snd_song10,
snd_song11,
snd_song12,
snd_song13
];

function do_song(){
if (sound_counter < array_length(sound_order))
{	
	var _snd = sound_order[sound_counter];
	audio_play_sound(_snd, 50, false);

	sound_counter++;
}
}

function drop_item(){

var _x = 0;

if (spawn_pos = 0)
{
	_x = irandom_range(spawn_x_min, spawn_x_mid);
	spawn_pos = 1;
}
else
{
	_x = irandom_range(spawn_x_mid, spawn_x_max);
	spawn_pos = 0;	
}

var _good = choose(true, false);
var _obj = _good ? obj_birthday_cake : obj_birthday_broccoli;

instance_create_layer(_x, spawn_y, "AboveCaptcha", _obj);
}