percent += 1/30;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_angle = 30 * position;