if (!place_meeting(x,y,pID))
{
	x = pID.x;
	y = pID.y + left;
}

if (left == 3) left = 0;
else left = 3;

image_angle = pID.image_angle;