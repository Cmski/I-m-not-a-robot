image_rows = 4;
image_columns = 4;
selected = 0;
correct = 0;
verified = false;

scr_toggle_buttons(true);
scr_toggle_active(false);

scr_set_callback(function(){
verified = true;

with (obj_select_square) active = false;

scr_toggle_active(false);
alarm[2] = 30;
})

dialogue = dialogue_select();
alarm[0] = 1;
alarm[1] = 90;

function start_select(){	
	var _num = sprite_get_number(image_to_make);
	var _w = sprite_get_width(image_to_make);
	var _h = sprite_get_height(image_to_make);
	var _int = 2;
	var _total_w = image_columns * _w + (image_columns - 1) * _int;
	var _total_h = image_rows * _h + (image_rows - 1) * _int;
	var _start_x = captchax - _total_w / 2 + _w / 2;
	var _start_y = captchay - _total_h / 2 + _h / 2;

	for (var i = 0; i < _num; i++)
	{
		var _col = i mod image_columns;
	    var _row = i div image_columns;
    
	    var _x = _start_x + (_col * (_w + _int));
	    var _y = _start_y + (_row * (_h + _int));
    
	    var _inst = instance_create_layer(_x, _y, "Captcha", obj_select_square);
	    _inst.sprite_index = image_to_make;
	    _inst.image_index = i;
		
		if (array_contains(correct_indexes, i)) _inst.correct = true;
	}
}

