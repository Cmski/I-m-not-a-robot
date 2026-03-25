/// @desc Keys Pressed
if (!active) 
{
	keyboard_string = "";
	exit;
}

if (blink_timer > 0)
{
	blink_timer--;	
}
else
{
	blink_timer = blink_max_timer;
	blink = !blink;
}

if (string_length(text) > 0) global.name_typed = true;
else global.name_typed = false;

if (keyboard_check(vk_anykey)) and (string_length(text) < max_name)
{
	text = text + string(keyboard_string);
	keyboard_string = "";
}

if (keyboard_check_pressed(vk_anykey)) audio_play_sound(snd_keyboard, 10, false);

if (keyboard_check(vk_backspace)) and !(keyboard_check_pressed(vk_backspace)) and (delete_timer > 1)
{
	if (string_length(text) > 0)
	{
		text = string_delete(text, string_length(text), 1);	
		delete_timer = 0;
		keyboard_string = "";
	}
}

if (keyboard_check_pressed(vk_backspace))
{
	if (string_length(text) > 0)
	{
		text = string_delete(text, string_length(text), 1);	
		delete_timer = -4;
		keyboard_string = "";
	}
}

if (keyboard_check_pressed(vk_enter)){
	if (string_length(text) > 0)
	{
		with (obj_login_button) login_clicked();	
	}
}
	

//Timer
if (delete_timer < 1)
{
	delete_timer ++;	
}

text = string_upper(text);