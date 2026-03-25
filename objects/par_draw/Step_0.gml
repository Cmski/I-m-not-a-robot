if (!surface_exists(draw_surf))
{
    draw_surf = surface_create(draw_w, draw_h);

    surface_set_target(draw_surf);
    draw_clear_alpha(canvas_colour, 1);
    surface_reset_target();
}

var mx = mouse_x;
var my = mouse_y;

var inside =
    mx >= draw_x && mx < draw_x + draw_w &&
    my >= draw_y && my < draw_y + draw_h;

if (mouse_check_button(mb_left) && inside)
{
    var local_x = mx - draw_x;
    var local_y = my - draw_y;

    surface_set_target(draw_surf);

    draw_set_colour(brush_colour);

    if (was_drawing)
    {
        draw_line_width(last_x, last_y, local_x, local_y, brush_size);
    }
    else
    {
        draw_circle(local_x, local_y, brush_size * 0.5, false);
    }

    surface_reset_target();

    last_x = local_x;
    last_y = local_y;
    was_drawing = true;
	scr_toggle_active(true);
}
else
{
    was_drawing = false;
}