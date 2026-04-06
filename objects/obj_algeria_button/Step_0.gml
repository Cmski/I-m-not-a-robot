percent += 1/140;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_xscale = 1 - (0.05 * position);
image_yscale = image_xscale;