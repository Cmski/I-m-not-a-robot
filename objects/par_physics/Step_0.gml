if (!appear) exit;

percent += 1/30;

position = animcurve_channel_evaluate(curve, percent);

image_xscale = position;
image_yscale = position;

if (percent > 1) appear = false;