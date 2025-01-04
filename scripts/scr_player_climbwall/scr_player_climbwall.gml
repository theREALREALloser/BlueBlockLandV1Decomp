function scr_player_climbwall()
{
	if (windingAnim < 200)
	    windingAnim++;
	
	suplexmove = 0;
	vsp = -wallspeed;
	
	if (wallspeed > 0)
	    wallspeed -= 0.5;
	
	crouchslideAnim = 1;
	sprite_index = spr_climbwall;
	
	if (!scr_solid(x + xscale, y))
	{
	    instance_create(x, y, obj_jumpdust);
	    vsp = 0;
	    movespeed = 8;
	    state = 69;
	}
	
	if ((grounded && wallspeed <= 0) || wallspeed <= 0)
	{
	    state = 57;
	    sprite_index = spr_fall;
	}
	
	image_speed = 0.6;
	
	if (!instance_exists(obj_cloudeffect))
	    instance_create(x, y + 43, obj_cloudeffect);
}
