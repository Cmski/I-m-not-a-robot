//Find top page and select it
var _instance = scr_select_top(mouse_x, mouse_y, obj_jigsaw_piece);
if instance_exists(_instance) 
{
	var _dep = depth;
	with (obj_jigsaw_piece)
	{
		depth = min(_dep-1, depth+1);
	}
	with (_instance)
	{
		select_mouse_x = mouse_x;
		select_mouse_y = mouse_y;
		depth = _dep - 300;
		selected = true;
	}
}