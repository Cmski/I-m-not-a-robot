///@desc Spawn Items
var _delay = 120;
var _delay_int = 10;

for (var i = 0; i < array_length(items); i++)
{
	var _duck = i == array_length(items) - 1;
	
	items[i].duck = _duck;
	items[i].index = i;	
	items[i].alarm[0] = _delay;
	_delay += _delay_int;
}

scr_set_dialogue(dialogue.physics_desc);

alarm[2] = 560;