if (fading)
{
	if (global.television_brightness < 1)
	{
		global.television_brightness += 0.01;		
	}
	else
	{
		game_end();
	}		
}
else
{
	if (global.television_brightness > 0)
	{
		global.television_brightness -= 0.02;		
	}	
}