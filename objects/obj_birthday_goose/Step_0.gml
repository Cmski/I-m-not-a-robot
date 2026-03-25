if (dir == -1)
{
	if (phy_position_x > min_x)	phy_position_x -= spd;
}
else if (dir == 1)
{
	if (phy_position_x < max_x)	phy_position_x += spd;
}

my_destroy.x = phy_position_x;
my_destroy.y = phy_position_y;