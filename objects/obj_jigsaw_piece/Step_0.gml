if (selected)
{
	x -= select_mouse_x - mouse_x;
	y -= select_mouse_y - mouse_y;
}

select_mouse_x = mouse_x;
select_mouse_y = mouse_y;

image_index = page;