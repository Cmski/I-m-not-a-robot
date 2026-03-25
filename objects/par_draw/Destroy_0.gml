if (surface_exists(draw_surf))
{
    surface_set_target(draw_surf);
    draw_clear_alpha(canvas_colour, 1);
    surface_reset_target();
}

scr_brian_eye_reset();
scr_set_cursor(spr_cursor);