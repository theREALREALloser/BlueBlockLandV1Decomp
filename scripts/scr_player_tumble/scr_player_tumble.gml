function scr_player_tumble()
{
	hsp = xscale * movespeed;
	
	if (place_meeting(x + hsp, y, obj_solid) && !scr_slope() && !place_meeting(x + hsp, y, obj_destructibles))
	{
	    state = 71;
	    image_index = 0;
	}
	
	sprite_index = spr_player_machroll;
}
