function scr_player_finishingblow()
{
	hsp = xscale * movespeed;
	
	if (movespeed > 0)
	    movespeed -= 0.5;
	
	if (floor(image_index) == (image_number - 1))
	    state = 0;
	
	if (floor(image_index) == 5 && !instance_exists(obj_swordhitbox))
	{
	    scr_soundeffect(sfx_killingblow);
	    instance_create(x, y, obj_swordhitbox);
	    vsp = -4;
	}
	
	image_speed = 0.35;
}
