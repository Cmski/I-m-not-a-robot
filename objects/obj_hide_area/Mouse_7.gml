if (clicked) return;

var _c = false;

with (obj_hide_orange_juice)
{
	_c = do_choice(other.good, other.index);
}

if (_c)
{
	clicked = true;
	pos_x = mouse_x;
	pos_y = mouse_y;	
}