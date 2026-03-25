draw_set_colour(canvas_colour);
draw_rectangle(draw_x, draw_y, draw_x + draw_w, draw_y + draw_h, false);

if (surface_exists(draw_surf))
{
    draw_surface(draw_surf, draw_x, draw_y);
}