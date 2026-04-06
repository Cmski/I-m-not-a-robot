function scr_get_canvas_percent(_surf, _w, _h)
{
    if (!surface_exists(_surf)) return 0;

    var buff = buffer_create(_w * _h * 4, buffer_fixed, 1);

    buffer_get_surface(buff, _surf, 0);

    buffer_seek(buff, buffer_seek_start, 0);

    var drawn = 0;
    var total = _w * _h;

   
    for (var i = 0; i < total; i++)
	{
		var r = buffer_read(buff, buffer_u8);
		var g = buffer_read(buff, buffer_u8);
		var b = buffer_read(buff, buffer_u8);

		if (r == 0 && g == 0 && b == 0)
		{
		    drawn++;
		}
    }

    buffer_delete(buff);

    return drawn / total;
}