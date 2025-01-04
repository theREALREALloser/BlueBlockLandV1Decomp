function scr_player_mach2()
{
	if (character == "P")
	{
	    if (windingAnim < 2000)
	        windingAnim++;
	}
	
	hsp = xscale * movespeed;
	
	if (!place_meeting(x, y + 1, obj_railh) && !place_meeting(x, y + 1, obj_railh2))
	    hsp = xscale * movespeed;
	else if (place_meeting(x, y + 1, obj_railh))
	    hsp = (xscale * movespeed) - 5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = (xscale * movespeed) + 5;
	
	move2 = key_right2 + key_left2;
	move = key_right + key_left;
	
	if (character == "N")
	{
	    if (movespeed < 24 && move == xscale)
	    {
	        movespeed += 0.05;
	        
	        if (!instance_exists(obj_crazyruneffect) && movespeed > 12)
	            instance_create(x, y, obj_crazyruneffect);
	    }
	    else if (movespeed > 12 && move != xscale)
	    {
	        movespeed -= 0.05;
	    }
	}
	
	crouchslideAnim = 1;
	
	if (!key_jump2 && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10;
	    jumpstop = 1;
	}
	
	if (grounded && vsp > 0)
	    jumpstop = 0;
	
	if (input_buffer_jump < 8 && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1) && key_attack)
	{
	    image_index = 0;
	    sprite_index = spr_secondjump1;
	    vsp = -11;
	}
	
	if (grounded)
	{
	    if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
	    {
	        if (sprite_index != spr_player_machhit)
	            sprite_index = spr_mach;
	    }
	    
	    if (machpunchAnim == 1)
	    {
	        if (punch == 0)
	            sprite_index = spr_machpunch1;
	        
	        if (punch == 1)
	            sprite_index = spr_machpunch2;
	        
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch1)
	        {
	            punch = 1;
	            machpunchAnim = 0;
	        }
	        
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch2)
	        {
	            punch = 0;
	            machpunchAnim = 0;
	        }
	    }
	}
	
	if (!grounded)
	    machpunchAnim = 0;
	
	if (grounded && character == "P")
	{
	    if (movespeed < 12)
	        movespeed += 0.075;
	    
	    if (movespeed >= 12)
	    {
	        machhitAnim = 0;
	        state = 89;
	        flash = 1;
	        sprite_index = spr_player_mach4;
	        instance_create(x, y, obj_jumpdust);
	    }
	}
	
	if (key_jump)
	    input_buffer_jump = 0;
	
	if (key_down && grounded)
	{
	    sprite_index = spr_crouchslip;
	    
	    if (character == "P")
	        machhitAnim = 0;
	    
	    state = 67;
	}
	
	if (!grounded && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope) && sprite_index != spr_player_mach2jump)
	{
	    wallspeed = 10;
	    state = 16;
	}
	
	if ((grounded || sprite_index == spr_player_mach2jump) && place_meeting(x + hsp, y, obj_solid) && !place_meeting(x + hsp, y, obj_destructibles) && !place_meeting(x + sign(hsp), y, obj_slope))
	{
	    movespeed = 0;
	    state = 0;
	}
	
	if (!instance_exists(obj_dashcloud) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	        image_xscale = other.xscale;
	}
	
	if (!grounded && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump)
	    sprite_index = spr_secondjump1;
	
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
	    sprite_index = spr_secondjump2;
	
	if (key_slap2 && key_down)
	{
	    image_index = 0;
	    state = 90;
	    vsp = -4;
	}
	
	if (key_taunt2)
	{
	    taunttimer = 20;
	    tauntstoredmovespeed = movespeed;
	    tauntstoredsprite = sprite_index;
	    tauntstoredstate = state;
	    state = 50;
	    image_index = random_range(0, 6);
	    sprite_index = spr_player_taunt;
	    instance_create(x, y, obj_taunteffect);
	}
	
	if (!key_attack && move != xscale && grounded)
	{
	    image_index = 0;
	    state = 70;
	    scr_soundeffect(sfx_machslide);
	    sprite_index = spr_machslidestart;
	}
	
	if (move == -xscale && grounded)
	{
	    image_index = 0;
	    state = 70;
	    sprite_index = spr_machslideboost;
	}
	
	if (move == xscale && !key_attack && grounded)
	    state = 0;
	
	image_speed = 0.65;
}
