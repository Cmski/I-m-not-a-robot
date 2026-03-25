if (!surface_exists(surf_screen))
{
    surf_screen = surface_create(room_width, room_height);
}

surface_set_target(surf_screen);
draw_clear_alpha(c_black, 0);