if (place_meeting(x, y + 1, obj_player) || place_meeting(x, y - 1, obj_player) || place_meeting(x - 1, y, obj_player) || place_meeting(x + 1, y, obj_player))
{
    if ((place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player)) && (obj_player.state == 89 || obj_player.state == 17))
    {
        with (obj_player1)
        {
            if (obj_player1.state != 17)
            {
                hsp = -xscale * 4;
                vsp = -4;
                mach2 = 0;
                image_index = 0;
                state = 71;
            }
        }
        
        instance_destroy();
    }
    
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 73 && obj_player.freefallsmash >= 10))
        instance_destroy();
    
    if (place_meeting(x, y - 1, obj_player) && (obj_player.state == 23 || obj_player.state == 8))
    {
        instance_destroy();
        tile_layer_delete_at(1, x, y);
    }
}
