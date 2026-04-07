dialogue = dialogue_describe();

options = [
{ text: "Delicious", callback: answer_delicious},
{ text: "Morality", callback: answer_dilema},
{ text: "Gluttonous", callback: answer_gluttonous},
{ text: "Cheeky", callback: answer_cheeky},
];

show_image = false;
answer = undefined;

alarm[0] = 1;

var _h = sprite_get_height(spr_button_blank);
var _x = 480;
var _int = 16;
var _y = captchay - _h * 2 + _int;

for (var i = 0; i < 4; i++)
{
	var _inst = instance_create_layer(_x, _y, "Captcha", obj_option_button);
	_inst.text = options[i].text;
	_inst.visible = false;
	_inst.active = false;
	_inst.callback = method(id, options[i].callback);
	_y += _h + _int;
}

function answer_delicious(){		
with (obj_option_button) active = false;

with (par_describe)
{
	answer = dialogue.describe_delicious;
	alarm[3] = 30;	
	alarm[4] = 480;
}
}

function answer_dilema(){		
with (obj_option_button) active = false;

with (par_describe)
{
	answer = dialogue.describe_dilema;
	alarm[3] = 30;	
	alarm[4] = 480;
}
}

function answer_gluttonous(){		
with (obj_option_button) active = false;

with (par_describe)
{
	answer = dialogue.describe_gluttonous;
	alarm[3] = 30;	
	alarm[4] = 480;
}
}

function answer_cheeky(){		
with (obj_option_button) active = false;

with (par_describe)
{
	answer = dialogue.describe_cheeky;
	alarm[3] = 30;	
	alarm[4] = 480;
}
}