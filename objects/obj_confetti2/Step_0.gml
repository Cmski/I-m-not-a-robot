percent += 1/240;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_xscale = 1 + 0.02 * position;
image_yscale = image_xscale;