function scr_collide_destructibles()
{
	if (state == 69 || state == 89 || state == 36 || state == 1 || state == 8)
	{
	    if (place_meeting(x + hsp, y, obj_destructibles))
	    {
	        with (instance_place(x + hsp, y, obj_destructibles))
	        {
	            with (obj_player)
	            {
	                if (place_meeting(x + hsp, y, obj_bigdestructibles) && state != 89 && state != 1)
	                {
	                    sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4, spr_player_suplexmash5, spr_player_suplexmash6, spr_player_suplexmash7);
	                    image_index = 0;
	                    state = 56;
	                    movespeed = 3;
	                    vsp = -3;
	                }
	            }
	            
	            instance_destroy();
	        }
	        
	        if (state == 69)
	            machpunchAnim = 1;
	    }
	}
	
	if ((state == 23 || state == 42 || state == 8) && vsp > 0)
	{
	    if (place_meeting(x, y + 1, obj_destructibles))
	    {
	        with (instance_place(x, y + 1, obj_destructibles))
	            instance_destroy();
	    }
	}
	
	if (place_meeting(x, y + 1, obj_destructibleplatform))
	{
	    with (instance_place(x, y + 1, obj_destructibleplatform))
	    {
	        falling = 1;
	        
	        if (falling == 1)
	            image_speed = 0.35;
	    }
	}
	
	if (state == 57 || state == 62 || state == 69 || state == 89)
	{
	    if (place_meeting(x, y - 1, obj_destructibles))
	    {
	        with (instance_place(x, y - 1, obj_destructibles))
	            instance_destroy();
	    }
	}
	
	if (state == 73 || state == 76)
	{
	    if (place_meeting(x, y + 1, obj_destructibles))
	    {
	        with (instance_place(x, y + 1, obj_destructibles))
	        {
	            with (obj_player)
	            {
	                if (place_meeting(x, y + 1, obj_bigdestructibles))
	                {
	                    state = 76;
	                    image_index = 0;
	                }
	            }
	            
	            instance_destroy();
	        }
	    }
	}
	
	if (state == 73 || state == 76)
	{
	    if (place_meeting(x, y + 1, obj_metalblock) && freefallsmash > 10)
	    {
	        with (instance_place(x, y + 1, obj_metalblock))
	            instance_destroy();
	    }
	}
	
	if (state == 21)
	{
	    with (obj_destructibles)
	    {
	        if (place_meeting(x - obj_player.hsp, y, obj_player))
	        {
	            with (obj_player)
	            {
	                if (place_meeting(x + hsp, y, obj_bigdestructibles))
	                {
	                    sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4, spr_player_suplexmash5, spr_player_suplexmash6, spr_player_suplexmash7);
	                    image_index = 0;
	                    state = 56;
	                    movespeed = 3;
	                    vsp = -3;
	                }
	            }
	            
	            instance_destroy();
	        }
	    }
	}
	
	with (obj_baddie)
	{
	    if (place_meeting(x + hsp, y, obj_destructibles) && thrown == 1)
	        instance_destroy(instance_place(x + hsp, y, obj_destructibles));
	    
	    if (place_meeting(x, y + vsp, obj_destructibles) && thrown == 1)
	        instance_destroy(instance_place(x + vsp, y, obj_destructibles));
	}
}
