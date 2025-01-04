function scr_pizzagoblin_throw()
{
	if (!variable_global_exists("throw_frame"))
	{
	    global.throw_frame = 0;
	    global.throw_frame[73] = 2;
	    global.throw_frame[68] = 6;
	    global.throw_frame[78] = 2;
	    global.throw_frame[79] = 2;
	    global.throw_frame[80] = 2;
	    global.throw_frame[69] = 2;
	    global.throw_frame[70] = 8;
	    global.throw_frame[71] = 6;
	    global.throw_frame[72] = 1;
	    global.throw_sprite = spr_plug;
	    global.throw_sprite[73] = 93;
	    global.throw_sprite[68] = 160;
	    global.throw_sprite[78] = 186;
	    global.throw_sprite[79] = 178;
	    global.throw_sprite[80] = 209;
	    global.throw_sprite[69] = 161;
	    global.throw_sprite[70] = 221;
	    global.throw_sprite[71] = 231;
	    global.throw_sprite[72] = 169;
	    global.reset_timer = 0;
	    global.reset_timer[73] = 200;
	    global.reset_timer[68] = 200;
	    global.reset_timer[78] = 100;
	    global.reset_timer[79] = 100;
	    global.reset_timer[80] = 100;
	    global.reset_timer[69] = 200;
	    global.reset_timer[70] = 200;
	    global.reset_timer[71] = 100;
	    global.reset_timer[72] = 100;
	}
	
	hsp = 0;
	
	if (place_meeting(x, y + 1, obj_railh))
	    hsp = -5;
	else if (place_meeting(x, y + 1, obj_railh2))
	    hsp = 5;
	
	if (floor(image_index) == (image_number - 1))
	    state = 92;
	
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index];
	    sprite_index = global.throw_sprite[object_index];
	    scr_soundeffect(sfx_enemyprojectile);
	    
	    switch (object_index)
	    {
	        case obj_pizzagoblin:
	            with (instance_create(x, y, obj_bomb))
	                hsp = other.image_xscale * 8;
	            
	            break;
	        
	        case obj_cheeserobot:
	            with (instance_create(x, y, obj_cheeseblob))
	            {
	                sprite_index = spr_cheeserobot_goop;
	                image_xscale = other.image_xscale;
	                hsp = other.image_xscale * 8;
	                vsp = 0;
	                grav = 0;
	            }
	            
	            break;
	        
	        case obj_spitcheese:
	            with (instance_create(x + (image_xscale * 6), y - 6, obj_spitcheesespike))
	            {
	                image_xscale = other.image_xscale;
	                hsp = other.image_xscale * 5;
	                vsp = -6;
	            }
	            
	            break;
	        
	        case obj_trash:
	        case obj_invtrash:
	            with (instance_create(x + (image_xscale * 6), y - 6, obj_cheeseball))
	            {
	                image_xscale = other.image_xscale;
	                hsp = other.image_xscale * 5;
	                vsp = -4;
	            }
	            
	            break;
	        
	        case obj_robot:
	            with (instance_create(x, y, obj_robotknife))
	            {
	                image_xscale = other.image_xscale;
	                hsp = other.image_xscale * 5;
	            }
	            
	            break;
	        
	        case obj_kentukykenny:
	            with (instance_create(x, y, obj_kentukykenny_projectile))
	                image_xscale = other.image_xscale;
	            
	            break;
	        
	        case obj_pizzard:
	            with (instance_create(x, y, obj_pizzard_bolt))
	                image_xscale = other.image_xscale;
	            
	            break;
	        
	        case obj_pepgoblin:
	            with (instance_create(x, y, obj_pepgoblin_kickhitbox))
	            {
	                baddieID = other.id;
	                image_xscale = other.image_xscale;
	            }
	            
	            break;
	    }
	}
	
	if (!grounded && hsp < 0)
	    hsp += 0.1;
	else if (!grounded && hsp > 0)
	    hsp -= 0.1;
}
