if (verified) exit;

var _s = 0;
var _c = 0;

with (obj_select_square)
{
	if (selected) 
	{
		_s++;	
		
		if (correct) _c++;
		else _c--;
	}
}

selected = _s;
correct = _c;

if (selected > 0) scr_toggle_active(true);
else scr_toggle_active(false);