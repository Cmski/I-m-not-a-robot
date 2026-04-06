percent += 1/120;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_angle = 2 * position;