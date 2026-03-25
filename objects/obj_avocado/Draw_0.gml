var col = merge_colour(c_white, c_black, dark_amount);

draw_sprite_ext(
    sprite_index,
    0,
    x,
    y,
    image_xscale,
    image_yscale,
    image_angle,
    col,
    1
);