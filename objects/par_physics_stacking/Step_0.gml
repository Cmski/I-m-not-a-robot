if (global.selected != noone) exit;

var top_y = min_y;
var found = false;

with (par_physics)
{
    if (!found || bbox_top < top_y)
    {
        top_y = bbox_top;
        found = true;
    }
}

tower_height_px = found ? (min_y - top_y) : 0;
tower_height_m = tower_height_px / 100;