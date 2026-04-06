percent += 1/180;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_xscale = 0.85 - (0.05 * position);
image_yscale = image_xscale;