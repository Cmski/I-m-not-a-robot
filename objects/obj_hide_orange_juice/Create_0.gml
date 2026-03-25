scr_toggle_buttons(false);

x = captchax;
y = captchay;

choices_remaining = 3;
correct = 0;
click_timout = false;

sprite_good = spr_kitchen_good;
sprite_bad = spr_kitchen_bad;

num_good = sprite_get_number(sprite_good);
num_bad = sprite_get_number(sprite_bad);

dialogue = dialogue_hide();

good_dialogue = [
dialogue.yes_rug,
dialogue.yes_bin,
dialogue.yes_pot,
dialogue.yes_oven,
dialogue.yes_plant,
dialogue.yes_coffee,
dialogue.yes_fan
];
bad_dialogue = [
dialogue.no_fridge,
dialogue.no_sink,
dialogue.no_draw1,
dialogue.no_cutlery,
dialogue.no_extractor,
dialogue.no_cupboard1,
dialogue.no_draw2,
dialogue.no_draw3,
dialogue.no_cupboard2,
dialogue.no_cups,
dialogue.no_draw4
]

visible = false;

alarm[1] = 1;
alarm[0] = 90;

function hide_orange_juice() {
visible = true;	

for (var i = 0; i < num_good; i++)
{
	var _inst = instance_create_layer(x, y, "AboveCaptcha", obj_hide_area);
	_inst.sprite_index = sprite_good;
	_inst.image_index = i;
	_inst.index = i;
}

for (var i = 0; i < num_bad; i++)
{
	var _inst = instance_create_layer(x, y, "AboveCaptcha", obj_hide_area);
	_inst.sprite_index = sprite_bad;
	_inst.image_index = i;
	_inst.index = i;
	_inst.good = false;
}
}



function do_choice(_good, _index) {

if (click_timout) return false;
	
if (choices_remaining > 0)
{	
	click_timout = true;
	
	if (_good)
	{
		audio_play_sound(snd_correct, 50, false);
		correct++;
		scr_set_dialogue(good_dialogue[_index], method(id, reset_click_timeout));
	}
	else
	{
		audio_play_sound(snd_wrong, 50, false);
		scr_set_dialogue(bad_dialogue[_index], method(id, reset_click_timeout));	
	}
	
	choices_remaining--;
	return true;
}
else return false;
}

function reset_click_timeout(){
if (choices_remaining <= 0)
{
	alarm[2] = 120;	
}
else
{
	click_timout = false;
}
}